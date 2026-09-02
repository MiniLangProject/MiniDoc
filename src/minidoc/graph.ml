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
import minidoc.util as util

/// Internal display model for a relation-graph node.
/// @internal
struct GraphNode
  id,
  label,
  kind,
end struct

/// Performs the '_symbolLabel' step in MiniDoc's graph renderer.
/// @internal
function _symbolLabel(project, id)
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

/// Returns the package represented by a file or symbol identifier.
/// @internal
function _entityPackage(project, id)
  if len(project.symbols) > 0 then
    for i = 0 to len(project.symbols) - 1
      if project.symbols[i].id == id then
        if project.symbols[i].package_name == "" then return "(global)" end if
        return project.symbols[i].package_name
      end if
    end for
  end if
  if len(project.files) > 0 then
    for i = 0 to len(project.files) - 1
      if project.files[i].id == id then
        if project.files[i].package_name == "" then return "(global)" end if
        return project.files[i].package_name
      end if
    end for
  end if
  return "Unresolved"
end function

/// Returns whether a graph entity belongs to the documented project.
/// @internal
function _entityOwned(project, id)
  if id == "" then return true end if
  if len(project.symbols) > 0 then
    for i = 0 to len(project.symbols) - 1
      if project.symbols[i].id == id then return _entityOwned(project, project.symbols[i].file_id) end if
    end for
  end if
  if len(project.files) > 0 then
    for i = 0 to len(project.files) - 1
      if project.files[i].id == id then
        return util.isProjectSource(project.files[i].path, project.config.entry, project.config.source_roots)
      end if
    end for
  end if
  return true
end function

/// Returns whether a relation is visible at the configured dependency boundary.
/// @internal
function _relationVisible(project, relation)
  if project.config.dependency_mode == "full" then return true end if
  from_owned = _entityOwned(project, relation.from_id)
  to_owned = _entityOwned(project, relation.to_id)
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
  for i = 0 to len(project.relations) - 1
    relation = project.relations[i]
    if relation.kind != relation_kind or _relationVisible(project, relation) == false then continue end if
    if project.config.graph_granularity == "package" and relation.to_id != "" and _entityPackage(project, relation.from_id) == _entityPackage(project, relation.to_id) then continue end if
    return true
  end for
  return false
end function

/// Performs the '_nodeIndex' step in MiniDoc's graph renderer.
/// @internal
function _nodeIndex(nodes, id)
  if len(nodes) == 0 then return -1 end if
  for i = 0 to len(nodes) - 1
    if nodes[i].id == id then return i end if
  end for
  return -1
end function

/// Performs the '_addNode' step in MiniDoc's graph renderer.
/// @internal
function _addNode(nodes, id, label, kind, maximum)
  if id == "" or _nodeIndex(nodes, id) >= 0 then return nodes end if
  if len(nodes) >= maximum then return nodes end if
  return nodes + [GraphNode(id, label, kind)]
end function

/// Returns whether an edge has already been added to an aggregated graph.
/// @internal
function _hasEdge(relations, from_id, to_id)
  if len(relations) == 0 then return false end if
  for i = 0 to len(relations) - 1
    if relations[i][0] == from_id and relations[i][1] == to_id then return true end if
  end for
  return false
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
  nodes = []
  relations = []
  maximum = project.config.graph_max_nodes
  package_level = project.config.graph_granularity == "package"
  if len(project.relations) > 0 then
    for i = 0 to len(project.relations) - 1
      relation = project.relations[i]
      if relation.kind != relation_kind or _relationVisible(project, relation) == false then continue end if
      from_id = relation.from_id
      from_label = _symbolLabel(project, relation.from_id)
      target_id = relation.to_id
      target_label = _symbolLabel(project, target_id)
      if package_level then
        from_label = _entityPackage(project, relation.from_id)
        from_id = "package-" + util.stableSlug(from_label)
        if relation.to_id == "" then
          target_label = "Unresolved"
        else
          target_label = _entityPackage(project, relation.to_id)
        end if
        target_id = "package-" + util.stableSlug(target_label)
        if from_id == target_id then continue end if
      else if target_id == "" then
        target_id = "unresolved-" + util.stableSlug(relation.from_id + ":" + relation.label)
        target_label = relation.label + " (unresolved)"
      end if
      from_kind = "source"
      if _entityOwned(project, relation.from_id) == false then from_kind = "external" end if
      target_kind = relation.certainty
      if relation.to_id != "" and _entityOwned(project, relation.to_id) == false then target_kind = "external" end if
      nodes = _addNode(nodes, from_id, from_label, from_kind, maximum)
      nodes = _addNode(nodes, target_id, target_label, target_kind, maximum)
      if _hasEdge(relations, from_id, target_id) == false then relations = relations + [[from_id, target_id, relation.certainty]] end if
    end for
  end if

  if relation_kind == "imports" and package_level == false then
    for fi = 0 to len(project.files) - 1
      file = project.files[fi]
      if project.config.dependency_mode != "full" and util.isProjectSource(file.path, project.config.entry, project.config.source_roots) == false then continue end if
      nodes = _addNode(nodes, file.id, file.relative_path, "file", maximum)
    end for
  end if

  nodes = _sortNodes(nodes)

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
      from_index = _nodeIndex(nodes, relation[0])
      to_index = _nodeIndex(nodes, relation[1])
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
