/*
Copyright 2026 Nils Kopal

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0
*/

//! Renders deterministic standalone SVG diagrams for static project relations.

package minidoc.graph

import std.string as strings
import std.string_builder as builders
import mlc.tools as tools
import minidoc.util as util

/// Internal display model for a relation-graph node.
/// @internal
struct GraphNode
  id,
  label,
  kind,
end struct

/// Transient entity indexes shared by every lookup within one graph operation.
/// @internal
struct GraphIndex
  symbols,
  files,
  owned_files,
end struct

/// First-seen graph nodes and their membership index.
/// @internal
struct GraphNodes
  items,
  ids,
end struct

/// Indexes each entity once while retaining the original first-match semantics.
/// @internal
function _entityIndex(project)
  symbols = tools.fastmap_new(len(project.symbols) * 2 + 16)
  files = tools.fastmap_new(len(project.files) * 2 + 16)
  owned_files = tools.fastmap_new(len(project.files) * 2 + 16)
  if len(project.symbols) > 0 then
    for i = 0 to len(project.symbols) - 1
      sym = project.symbols[i]
      if tools.fastmap_has(symbols, sym.id) == false then symbols = tools.fastmap_set(symbols, sym.id, sym) end if
    end for
  end if
  if len(project.files) > 0 then
    for i = 0 to len(project.files) - 1
      file = project.files[i]
      if tools.fastmap_has(files, file.id) then continue end if
      files = tools.fastmap_set(files, file.id, file)
      owned_files = tools.fastmap_set(owned_files, file.id, util.isProjectSource(file.path, project.config.entry, project.config.source_roots))
    end for
  end if
  return GraphIndex(symbols, files, owned_files)
end function

/// Returns a symbol label before considering a file label or the literal id.
/// @internal
function _symbolLabel(index, id)
  sym = tools.fastmap_get(index.symbols, id, 0)
  if typeof(sym) == "struct" then return sym.qualified_name end if
  file = tools.fastmap_get(index.files, id, 0)
  if typeof(file) == "struct" then return file.relative_path end if
  return id
end function

/// Returns the package represented by a file or symbol identifier.
/// @internal
function _entityPackage(index, id)
  entity = tools.fastmap_get(index.symbols, id, 0)
  if typeof(entity) != "struct" then entity = tools.fastmap_get(index.files, id, 0) end if
  if typeof(entity) == "struct" then
    if entity.package_name == "" then return "(global)" end if
    return entity.package_name
  end if
  return "Unresolved"
end function

/// Returns whether a graph entity belongs to the documented project.
/// @internal
function _entityOwned(index, id)
  if id == "" then return true end if
  sym = tools.fastmap_get(index.symbols, id, 0)
  if typeof(sym) == "struct" then return _entityOwned(index, sym.file_id) end if
  return tools.fastmap_get(index.owned_files, id, true)
end function

/// Returns whether a relation is visible at the configured dependency boundary.
/// @internal
function _relationVisible(project, index, relation)
  if project.config.dependency_mode == "full" then return true end if
  from_owned = _entityOwned(index, relation.from_id)
  to_owned = _entityOwned(index, relation.to_id)
  if project.config.dependency_mode == "none" then return from_owned and to_owned end if
  if project.config.graph_granularity == "package" then return from_owned end if
  return from_owned and to_owned
end function

/// Reports whether a relation category has at least one visible edge.
/// @param project Analyzed project containing symbols and relations.
/// @param relation_kind Relation category to inspect.
/// @since 0.4.0
function hasRelations(project, relation_kind)
  if len(project.relations) == 0 then return false end if
  index = _entityIndex(project)
  for i = 0 to len(project.relations) - 1
    relation = project.relations[i]
    if relation.kind != relation_kind and not (relation_kind == "implements" and relation.kind == "extends") then continue end if
    if _relationVisible(project, index, relation) == false then continue end if
    if project.config.graph_granularity == "package" and relation.to_id != "" and _entityPackage(index, relation.from_id) == _entityPackage(index, relation.to_id) then continue end if
    return true
  end for
  return false
end function

/// Adds a first-seen node without changing its original label, kind, or cap order.
/// @internal
function _addNode(nodes, id, label, kind, maximum)
  if id == "" or tools.fastmap_has(nodes.ids, id) then return nodes end if
  if len(nodes.items) >= maximum then return nodes end if
  nodes.ids = tools.fastmap_set(nodes.ids, id, len(nodes.items))
  nodes.items = nodes.items + [GraphNode(id, label, kind)]
  return nodes
end function

/// Encodes a directed edge without delimiter collisions in arbitrary entity ids.
/// @internal
function _edgeKey(from_id, to_id)
  return "" + len(from_id) + ":" + from_id + to_id
end function

/// Performs the '_shortLabel' step in MiniDoc's graph renderer.
/// @internal
function _shortLabel(value)
  if len(value) <= 38 then return value end if
  return "..." + strings.substr(value, len(value) - 35, 35)
end function

/// Performs the '_sortNodes' step in MiniDoc's graph renderer.
/// @internal
function _sortNodes(nodes)
  result = nodes
  index = 1
  while index < len(result)
    value = result[index]
    before = index - 1
    value_key = value.label + "\n" + value.id
    while before >= 0 and util.alphabeticalLess(value_key, result[before].label + "\n" + result[before].id)
      result[before + 1] = result[before]
      before = before - 1
    end while
    result[before + 1] = value
    index = index + 1
  end while
  return result
end function

/// Renders one relation category as a self-contained SVG document.
/// @param project Analyzed project containing symbols and relations.
/// @param relation_kind Relation category to include.
/// @param title Human-readable graph title.
/// @since 0.1.0
function renderSvg(project, relation_kind, title)
  entities = _entityIndex(project)
  node_set = GraphNodes([], tools.fastmap_new(64))
  edge_ids = tools.fastmap_new(256)
  edge_items = tools.arr_vec_new(64)
  maximum = project.config.graph_max_nodes
  package_level = project.config.graph_granularity == "package"
  if len(project.relations) > 0 then
    for i = 0 to len(project.relations) - 1
      relation = project.relations[i]
      if relation.kind != relation_kind and not (relation_kind == "implements" and relation.kind == "extends") then continue end if
      if _relationVisible(project, entities, relation) == false then continue end if
      from_id = relation.from_id
      from_label = _symbolLabel(entities, relation.from_id)
      target_id = relation.to_id
      target_label = _symbolLabel(entities, target_id)
      if package_level then
        from_label = _entityPackage(entities, relation.from_id)
        from_id = "package-" + util.stableSlug(from_label)
        if relation.to_id == "" then
          target_label = "Unresolved"
        else
          target_label = _entityPackage(entities, relation.to_id)
        end if
        target_id = "package-" + util.stableSlug(target_label)
        if from_id == target_id then continue end if
      else if target_id == "" then
        target_id = "unresolved-" + util.stableSlug(relation.from_id + ":" + relation.label)
        target_label = relation.label + " (unresolved)"
      end if
      from_kind = "source"
      if _entityOwned(entities, relation.from_id) == false then from_kind = "external" end if
      target_kind = relation.certainty
      if relation.to_id != "" and _entityOwned(entities, relation.to_id) == false then target_kind = "external" end if
      node_set = _addNode(node_set, from_id, from_label, from_kind, maximum)
      node_set = _addNode(node_set, target_id, target_label, target_kind, maximum)
      edge_key = _edgeKey(from_id, target_id)
      if tools.fastmap_has(edge_ids, edge_key) == false then
        edge_ids = tools.fastmap_set(edge_ids, edge_key, true)
        edge_items = tools.arr_vec_push(edge_items, [from_id, target_id, relation.certainty])
      end if
    end for
  end if

  if relation_kind == "imports" and package_level == false then
    for fi = 0 to len(project.files) - 1
      file = project.files[fi]
      if project.config.dependency_mode != "full" and util.isProjectSource(file.path, project.config.entry, project.config.source_roots) == false then continue end if
      node_set = _addNode(node_set, file.id, file.relative_path, "file", maximum)
    end for
  end if

  nodes = _sortNodes(node_set.items)
  node_positions = tools.fastmap_new(len(nodes) * 2 + 16)
  if len(nodes) > 0 then
    for ni = 0 to len(nodes) - 1
      node_positions = tools.fastmap_set(node_positions, nodes[ni].id, ni)
    end for
  end if
  relations = tools.arr_vec_finish(edge_items)

  columns = 3
  column_step = 340
  node_width = 300
  row_step = 110
  if package_level then
    columns = 5
    column_step = 280
    node_width = 260
    row_step = 90
  end if
  rows = (len(nodes) + columns - 1) / columns
  if rows < 1 then rows = 1 end if
  width = 20 + columns * column_step
  height = 100 + rows * row_step
  writer = builders.StringBuilder.withCapacity(4096 + len(nodes) * 300 + len(relations) * 180)
  writer.appendString("<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"")
  writer.append(width)
  writer.appendString("\" height=\"")
  writer.append(height)
  writer.appendString("\" viewBox=\"0 0 ")
  writer.append(width)
  writer.appendString(" ")
  writer.append(height)
  writer.appendString("\" role=\"img\" aria-labelledby=\"title desc\">\n")
  writer.appendString("<title id=\"title\">")
  writer.appendString(util.htmlEscape(title))
  writer.appendString("</title><desc id=\"desc\">Generated by MiniDoc. ")
  if package_level then writer.appendString("Relations are aggregated by package. ") end if
  writer.appendString("Solid edges are exact; dashed edges are dynamic or unresolved.</desc>\n")
  writer.appendString("<defs><marker id=\"arrow\" viewBox=\"0 0 10 10\" refX=\"9\" refY=\"5\" markerWidth=\"7\" markerHeight=\"7\" orient=\"auto-start-reverse\"><path d=\"M 0 0 L 10 5 L 0 10 z\" fill=\"#64748b\"/></marker></defs>\n")
  writer.appendString("<rect width=\"100%\" height=\"100%\" fill=\"#f8fafc\"/>\n")
  writer.appendString("<text x=\"24\" y=\"34\" font-family=\"system-ui,sans-serif\" font-size=\"20\" font-weight=\"700\" fill=\"#0f172a\">")
  writer.appendString(util.htmlEscape(title))
  writer.appendString("</text>\n")

  if len(relations) > 0 then
    for ri = 0 to len(relations) - 1
      relation = relations[ri]
      from_index = tools.fastmap_get(node_positions, relation[0], -1)
      to_index = tools.fastmap_get(node_positions, relation[1], -1)
      if from_index < 0 or to_index < 0 then continue end if
      fx = 20 + (from_index % columns) * column_step + node_width / 2
      fy = 65 + (from_index / columns) * row_step + 30
      tx = 20 + (to_index % columns) * column_step + node_width / 2
      ty = 65 + (to_index / columns) * row_step + 30
      dash = ""
      if relation[2] != "exact" then dash = " stroke-dasharray=\"7 5\"" end if
      writer.appendString("<path d=\"M ")
      writer.append(fx)
      writer.appendString(" ")
      writer.append(fy)
      writer.appendString(" C ")
      writer.append(fx)
      writer.appendString(" ")
      writer.append((fy + ty) / 2)
      writer.appendString(", ")
      writer.append(tx)
      writer.appendString(" ")
      writer.append((fy + ty) / 2)
      writer.appendString(", ")
      writer.append(tx)
      writer.appendString(" ")
      writer.append(ty)
      writer.appendString("\" fill=\"none\" stroke=\"#64748b\" stroke-width=\"1.5\"")
      writer.appendString(dash)
      writer.appendString(" marker-end=\"url(#arrow)\"/>\n")
    end for
  end if

  if len(nodes) > 0 then
    for ni = 0 to len(nodes) - 1
      node = nodes[ni]
      x = 20 + (ni % columns) * column_step
      y = 65 + (ni / columns) * row_step
      fill = "#ffffff"
      stroke = "#2563eb"
      if node.kind == "dynamic" then fill = "#fff7ed" stroke = "#ea580c" end if
      if node.kind == "unresolved" then fill = "#fef2f2" stroke = "#dc2626" end if
      if node.kind == "external" then fill = "#f1f5f9" stroke = "#64748b" end if
      writer.appendString("<g><rect x=\"")
      writer.append(x)
      writer.appendString("\" y=\"")
      writer.append(y)
      writer.appendString("\" width=\"")
      writer.append(node_width)
      writer.appendString("\" height=\"60\" rx=\"8\" fill=\"")
      writer.appendString(fill)
      writer.appendString("\" stroke=\"")
      writer.appendString(stroke)
      writer.appendString("\" stroke-width=\"1.5\"/><text x=\"")
      writer.append(x + 12)
      writer.appendString("\" y=\"")
      writer.append(y + 35)
      writer.appendString("\" font-family=\"ui-monospace,monospace\" font-size=\"12\" fill=\"#0f172a\">")
      writer.appendString(util.htmlEscape(_shortLabel(node.label)))
      writer.appendString("</text></g>\n")
    end for
  end if
  if len(nodes) == 0 then writer.appendString("<text x=\"24\" y=\"78\" font-family=\"system-ui,sans-serif\" fill=\"#475569\">No relations were found.</text>\n") end if
  if len(nodes) >= maximum then writer.appendString("<text x=\"24\" y=\"54\" font-family=\"system-ui,sans-serif\" font-size=\"12\" fill=\"#b45309\">Graph truncated at configured node limit.</text>\n") end if
  writer.appendString("</svg>\n")
  return writer.toString()
end function
