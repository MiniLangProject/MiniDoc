/*
Copyright 2026 Nils Kopal

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0
*/

//! Applies stable alphabetical ordering to all user-visible project collections.

package minidoc.ordering

import minidoc.util as util

/// Internal key-value pair used by the stable ordering implementation.
/// @internal
struct SortItem
  key,
  value,
end struct

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
    source[i] = SortItem(keys[i], values[i])
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
        else if util.alphabeticalLess(source[ri].key, source[li].key) then
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

/// Performs the '_entityName' step in MiniDoc's deterministic ordering pipeline.
/// @internal
function _entityName(project, id)
  if len(project.symbols) > 0 then
    for i = 0 to len(project.symbols) - 1
      if project.symbols[i].id == id then return project.symbols[i].qualified_name end if
    end for
  end if
  if len(project.files) > 0 then
    for i = 0 to len(project.files) - 1
      if project.files[i].id == id then return project.files[i].relative_path end if
    end for
  end if
  return id
end function

/// Performs the '_sortRelations' step in MiniDoc's deterministic ordering pipeline.
/// @internal
function _sortRelations(project, values)
  if len(values) < 2 then return values end if
  keys = array(len(values), "")
  for i = 0 to len(values) - 1
    item = values[i]
    keys[i] = item.kind + "\n" + _entityName(project, item.from_id) + "\n" + _entityName(project, item.to_id) + "\n" + item.label
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
