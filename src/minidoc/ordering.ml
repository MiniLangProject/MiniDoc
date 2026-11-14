/*
Copyright 2026 Nils Kopal

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0
*/

//! Applies stable alphabetical ordering to all user-visible project collections.

package minidoc.ordering

import mlc.tools as tools
import std.string as strings
import minidoc.util as util

/// Internal key-value pair used by the stable ordering implementation.
/// @internal
struct SortItem
  key,
  folded_bytes,
  original_bytes,
  value,
end struct

/// Compares already materialized UTF-8 byte sequences without copying strings.
/// @internal
function _compareBytes(left, right)
  count = len(left)
  if len(right) < count then count = len(right) end if
  for i = 0 to count - 1
    if left[i] < right[i] then return -1 end if
    if left[i] > right[i] then return 1 end if
  end for
  if len(left) < len(right) then return -1 end if
  if len(left) > len(right) then return 1 end if
  return 0
end function

/// Preserves MiniDoc's case-insensitive ordering and original-spelling tie-break.
/// @internal
function _sortLess(left, right)
  folded = _compareBytes(left.folded_bytes, right.folded_bytes)
  if folded != 0 then return folded < 0 end if
  return _compareBytes(left.original_bytes, right.original_bytes) < 0
end function

// Stable bottom-up merge sort. MiniDoc keeps this local because the current
// standard-library quicksort computes a non-integer pivot for larger arrays.
/// Performs the '_sortWithKeys' step in MiniDoc's deterministic ordering pipeline.
/// @internal
function _sortWithKeys(values, keys)
  count = len(values)
  if count < 2 then return values end if
  source = array(count, 0)
  destination = array(count, 0)
  for i = 0 to count - 1
    source[i] = SortItem(keys[i], bytes(strings.toLowerAscii(keys[i])), bytes(keys[i]), values[i])
  end for
  width = 1
  while width < count
    left = 0
    while left < count
      middle = left + width
      if middle > count then middle = count end if
      right = left + width * 2
      if right > count then right = count end if
      li = left
      ri = middle
      target = left
      while target < right
        if li >= middle then
          destination[target] = source[ri]
          ri = ri + 1
        else if ri >= right then
          destination[target] = source[li]
          li = li + 1
        else if _sortLess(source[ri], source[li]) then
          destination[target] = source[ri]
          ri = ri + 1
        else
          destination[target] = source[li]
          li = li + 1
        end if
        target = target + 1
      end while
      left = left + width * 2
    end while
    swap = source
    source = destination
    destination = swap
    width = width * 2
  end while
  result = array(count, 0)
  for i = 0 to count - 1
    result[i] = source[i].value
  end for
  return result
end function

/// Performs the '_sortFiles' step in MiniDoc's deterministic ordering pipeline.
/// @internal
function _sortFiles(values)
  if len(values) < 2 then return values end if
  keys = array(len(values), "")
  for i = 0 to len(values) - 1
    keys[i] = values[i].relative_path
  end for
  return _sortWithKeys(values, keys)
end function

/// Performs the '_sortSymbols' step in MiniDoc's deterministic ordering pipeline.
/// @internal
function _sortSymbols(values)
  if len(values) < 2 then return values end if
  keys = array(len(values), "")
  for i = 0 to len(values) - 1
    keys[i] = values[i].qualified_name + "\n" + values[i].kind + "\n" + values[i].signature
  end for
  return _sortWithKeys(values, keys)
end function

/// Performs the '_sortImports' step in MiniDoc's deterministic ordering pipeline.
/// @internal
function _sortImports(values)
  if len(values) < 2 then return values end if
  keys = array(len(values), "")
  for i = 0 to len(values) - 1
    keys[i] = values[i].request + "\n" + values[i].alias + "\n" + values[i].module_name
  end for
  return _sortWithKeys(values, keys)
end function

/// Performs the '_sortDiagnostics' step in MiniDoc's deterministic ordering pipeline.
/// @internal
function _sortDiagnostics(values)
  if len(values) < 2 then return values end if
  keys = array(len(values), "")
  for i = 0 to len(values) - 1
    keys[i] = values[i].file_path + "\n" + values[i].line + "\n" + values[i].column + "\n" + values[i].code + "\n" + values[i].message
  end for
  return _sortWithKeys(values, keys)
end function

/// Builds a transient id-to-name index for relation sort keys.
/// @internal
function _entityNames(project)
  index = tools.fastmap_new(2048)
  if len(project.symbols) > 0 then
    for i = 0 to len(project.symbols) - 1
      sym = project.symbols[i]
      index = tools.fastmap_set(index, sym.id, sym.qualified_name)
    end for
  end if
  if len(project.files) > 0 then
    for i = 0 to len(project.files) - 1
      file = project.files[i]
      index = tools.fastmap_set(index, file.id, file.relative_path)
    end for
  end if
  return index
end function

/// Performs the '_sortRelations' step in MiniDoc's deterministic ordering pipeline.
/// @internal
function _sortRelations(project, values)
  if len(values) < 2 then return values end if
  names = _entityNames(project)
  keys = array(len(values), "")
  for i = 0 to len(values) - 1
    item = values[i]
    from_name = tools.fastmap_get(names, item.from_id, item.from_id)
    to_name = tools.fastmap_get(names, item.to_id, item.to_id)
    keys[i] = item.kind + "\n" + from_name + "\n" + to_name + "\n" + item.label
  end for
  return _sortWithKeys(values, keys)
end function

/// Performs the '_sortFileMetrics' step in MiniDoc's deterministic ordering pipeline.
/// @internal
function _sortFileMetrics(values)
  if len(values) < 2 then return values end if
  keys = array(len(values), "")
  for i = 0 to len(values) - 1
    keys[i] = values[i].file_path
  end for
  return _sortWithKeys(values, keys)
end function

/// Performs the '_sortFunctionMetrics' step in MiniDoc's deterministic ordering pipeline.
/// @internal
function _sortFunctionMetrics(values)
  if len(values) < 2 then return values end if
  keys = array(len(values), "")
  for i = 0 to len(values) - 1
    keys[i] = values[i].qualified_name + "\n" + values[i].file_path + "\n" + values[i].line
  end for
  return _sortWithKeys(values, keys)
end function

/// Performs the '_sortOccurrences' step in MiniDoc's deterministic ordering pipeline.
/// @internal
function _sortOccurrences(values)
  if len(values) < 2 then return values end if
  keys = array(len(values), "")
  for i = 0 to len(values) - 1
    keys[i] = values[i].file_path + "\n" + values[i].line
  end for
  return _sortWithKeys(values, keys)
end function

/// Performs the '_sortCloneGroups' step in MiniDoc's deterministic ordering pipeline.
/// @internal
function _sortCloneGroups(values)
  if len(values) == 0 then return values end if
  keys = array(len(values), "")
  for i = 0 to len(values) - 1
    values[i].occurrences = _sortOccurrences(values[i].occurrences)
    keys[i] = values[i].occurrences[0].file_path + "\n" + values[i].occurrences[0].line + "\n" + values[i].fingerprint
  end for
  return _sortWithKeys(values, keys)
end function

/// Sorts every user-visible project collection deterministically.
/// @param project Project model to order in place.
/// @since 0.2.0
function apply(project)
  project.files = _sortFiles(project.files)
  project.symbols = _sortSymbols(project.symbols)
  if len(project.files) > 0 then
    for i = 0 to len(project.files) - 1
      project.files[i].imports = _sortImports(project.files[i].imports)
      project.files[i].symbol_ids = util.sortedStrings(project.files[i].symbol_ids)
    end for
  end if
  project.relations = _sortRelations(project, project.relations)
  project.diagnostics = _sortDiagnostics(project.diagnostics)
  if typeof(project.metrics) == "struct" then
    project.metrics.file_metrics = _sortFileMetrics(project.metrics.file_metrics)
    project.metrics.function_metrics = _sortFunctionMetrics(project.metrics.function_metrics)
    project.metrics.clone_groups = _sortCloneGroups(project.metrics.clone_groups)
  end if
  return project
end function
