/*
Copyright 2026 Nils Kopal

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0
*/

//! Builds symbols, signatures, documentation diagnostics, and static relations.

package minidoc.analyzer

import std.string as strings
import mlc.tools as tools
import minidoc.doc_comments as comments
import minidoc.model as model
import minidoc.util as util

/// Performs the '_qualified' step in MiniDoc's symbol-analysis pipeline.
/// @internal
function _qualified(prefix, name)
  if prefix == "" then return name end if
  if name == "" then return prefix end if
  return prefix + "." + name
end function

/// Performs the '_scope' step in MiniDoc's symbol-analysis pipeline.
/// @internal
function _scope(package_name, namespace_name)
  return _qualified(package_name, namespace_name)
end function

/// Performs the '_typeName' step in MiniDoc's symbol-analysis pipeline.
/// @internal
function _typeName(value, optional)
  result = ""
  if typeof(value) == "string" then result = value end if
  if result != "" and optional then result = result + "?" end if
  return result
end function

/// Converts a MiniLang expression node into a compact source-like representation.
/// @param expr Expression AST node to format.
/// @since 0.1.0
function expressionText(expr)
  if typeof(expr) == "void" then return "" end if
  kind = tools.ast_kind(expr)
  if kind == "Num" or kind == "Bool" then return "" + tools.ast_value(expr) end if
  if kind == "Str" then
    value = "" + tools.ast_value(expr)
    value = strings.replaceAll(value, "\\", "\\\\")
    value = strings.replaceAll(value, "\"", "\\\"")
    return "\"" + value + "\""
  end if
  if kind == "VoidLit" then return "void" end if
  if kind == "Var" then return tools.ast_name(expr) end if
  if kind == "Unary" then return tools.ast_op(expr) + expressionText(tools.ast_right(expr)) end if
  if kind == "Bin" then return expressionText(tools.ast_left(expr)) + " " + tools.ast_op(expr) + " " + expressionText(tools.ast_right(expr)) end if
  if kind == "Coalesce" then return expressionText(expr.left) + " ?? " + expressionText(expr.right) end if
  if kind == "IsType" then
    suffix = " is "
    if expr.negated then suffix = " is not " end if
    return expressionText(expr.expr) + suffix + expr.type_name
  end if
  if kind == "TypeGuard" then return expressionText(expr.expr) end if
  if kind == "Member" then return expressionText(expr.target) + "." + expr.name end if
  if kind == "SafeMember" then return expressionText(expr.target) + "?." + expr.name end if
  if kind == "Index" then return expressionText(expr.target) + "[" + expressionText(expr.index) + "]" end if
  if kind == "ArrayLit" then
    values = []
    if len(expr.items) > 0 then
      for i = 0 to len(expr.items) - 1
        values = values + [expressionText(expr.items[i])]
      end for
    end if
    return "[" + strings.join(values, ", ") + "]"
  end if
  if kind == "Call" then
    args = []
    if len(expr.args) > 0 then
      for i = 0 to len(expr.args) - 1
        prefix = ""
        if typeof(expr.arg_names) == "array" and i < len(expr.arg_names) and typeof(expr.arg_names[i]) == "string" and expr.arg_names[i] != "" then prefix = expr.arg_names[i] + " = " end if
        args = args + [prefix + expressionText(expr.args[i])]
      end for
    end if
    return expressionText(expr.callee) + "(" + strings.join(args, ", ") + ")"
  end if
  if kind == "Lambda" then return "function(...) => ..." end if
  return "..."
end function

/// Performs the '_findWord' step in MiniDoc's symbol-analysis pipeline.
/// @internal
function _findWord(source, name, start_pos)
  if name == "" then return start_pos end if
  cursor = start_pos
  while cursor < len(source)
    found = strings.indexOf(source, name, cursor)
    if typeof(found) != "int" or found < 0 then return start_pos end if
    before_ok = found == 0
    after_pos = found + len(name)
    after_ok = after_pos >= len(source)
    if before_ok == false then
      b = bytes(source[found - 1])[0]
      before_ok = not ((b >= 48 and b <= 57) or (b >= 65 and b <= 90) or (b >= 97 and b <= 122) or b == 95)
    end if
    if after_ok == false then
      a = bytes(source[after_pos])[0]
      after_ok = not ((a >= 48 and a <= 57) or (a >= 65 and a <= 90) or (a >= 97 and a <= 122) or a == 95)
    end if
    if before_ok and after_ok then return found end if
    cursor = found + len(name)
  end while
  return start_pos
end function

/// Performs the '_diagnostic' step in MiniDoc's symbol-analysis pipeline.
/// @internal
function _diagnostic(project, severity, code, file, position, message)
  location = util.lineAndColumn(file.processed_source, position)
  project.diagnostics = project.diagnostics + [model.newDiagnostic(severity, code, file.relative_path, location[0], location[1], message)]
end function

/// Performs the '_fileById' step in MiniDoc's symbol-analysis pipeline.
/// @internal
function _fileById(project, id)
  if len(project.files) == 0 then return 0 end if
  for i = 0 to len(project.files) - 1
    if project.files[i].id == id then return project.files[i] end if
  end for
  return 0
end function

/// Performs the '_symbolById' step in MiniDoc's symbol-analysis pipeline.
/// @internal
function _symbolById(project, id)
  if len(project.symbols) == 0 then return 0 end if
  for i = 0 to len(project.symbols) - 1
    if project.symbols[i].id == id then return project.symbols[i] end if
  end for
  return 0
end function

/// Performs the '_symbolId' step in MiniDoc's symbol-analysis pipeline.
/// @internal
function _symbolId(kind, qualified_name, signature, file_path)
  key = kind + ":" + qualified_name + ":" + signature + ":" + file_path
  return kind + "-" + util.stableSlug(key)
end function

/// Performs the '_addSymbol' step in MiniDoc's symbol-analysis pipeline.
/// @internal
function _addSymbol(project, file, kind, name, qualified_name, container_id, namespace_name, position, signature, type_name, modifiers, parameters, return_type, doc)
  location = util.lineAndColumn(file.processed_source, position)
  id = _symbolId(kind, qualified_name, signature, file.relative_path)
  if len(project.symbols) > 0 then
    for i = 0 to len(project.symbols) - 1
      if project.symbols[i].id == id then
        _diagnostic(project, "error", "MD2001", file, position, "duplicate symbol identity: " + qualified_name)
        return project.symbols[i]
      end if
    end for
  end if
  deprecated = comments.hasTag(doc, "deprecated")
  source_url = util.sourceUrl(project.config.repository, project.config.repository_ref, file.relative_path, location[0])
  sym = model.SymbolDoc(
    id,
    kind,
    name,
    qualified_name,
    container_id,
    file.package_name,
    namespace_name,
    file.id,
    file.relative_path,
    position,
    location[0],
    location[1],
    signature,
    type_name,
    modifiers,
    parameters,
    return_type,
    doc.summary,
    doc.details,
    doc.tags,
    doc.internal,
    deprecated,
    source_url
  )
  project.symbols = project.symbols + [sym]
  file.symbol_ids = file.symbol_ids + [id]
  return sym
end function

/// Performs the '_validateFunctionDoc' step in MiniDoc's symbol-analysis pipeline.
/// @internal
function _validateFunctionDoc(project, file, node, doc, parameters, return_type)
  seen = []
  if len(doc.tags) == 0 then return end if
  for i = 0 to len(doc.tags) - 1
    tag = doc.tags[i]
    if tag.name == "param" then
      exists = false
      if len(parameters) > 0 then
        for pi = 0 to len(parameters) - 1
          if parameters[pi].name == tag.key then exists = true break end if
        end for
      end if
      if exists == false then _diagnostic(project, "warning", "MD2101", file, node._pos, "@param names an unknown parameter: " + tag.key) end if
      if util.containsString(seen, tag.key) then _diagnostic(project, "warning", "MD2102", file, node._pos, "duplicate @param documentation: " + tag.key) end if
      seen = seen + [tag.key]
    else if tag.name == "returns" and return_type == "" then
      _diagnostic(project, "warning", "MD2103", file, node._pos, "@returns is present on a function without a return contract")
    end if
  end for
end function

/// Performs the '_functionParameters' step in MiniDoc's symbol-analysis pipeline.
/// @internal
function _functionParameters(node, doc)
  result = []
  count = len(node.params)
  if count == 0 then return result end if
  for i = 0 to count - 1
    type_name = ""
    optional = false
    default_value = ""
    if typeof(node.param_types) == "array" and i < len(node.param_types) then
      if typeof(node.param_types[i]) == "string" then type_name = node.param_types[i] end if
    end if
    if typeof(node.param_optional) == "array" and i < len(node.param_optional) then optional = node.param_optional[i] == true end if
    if optional and type_name != "" then type_name = type_name + "?" end if
    if typeof(node.param_defaults) == "array" and i < len(node.param_defaults) and typeof(node.param_defaults[i]) != "void" then default_value = expressionText(node.param_defaults[i]) end if
    variadic = typeof(node.variadic_index) == "int" and node.variadic_index == i
    description = comments.tagText(doc, "param", node.params[i])
    result = result + [model.ParameterDoc(node.params[i], type_name, optional, default_value, variadic, description)]
  end for
  return result
end function

/// Performs the '_functionSignature' step in MiniDoc's symbol-analysis pipeline.
/// @internal
function _functionSignature(node, parameters, name, kind)
  pieces = []
  if len(parameters) > 0 then
    for i = 0 to len(parameters) - 1
      parameter = parameters[i]
      part = parameter.name
      if parameter.type_name != "" then part = part + " as " + parameter.type_name end if
      if parameter.default_value != "" then part = part + " = " + parameter.default_value end if
      if parameter.variadic then part = part + "..." end if
      pieces = pieces + [part]
    end for
  end if
  prefix = "function "
  if kind == "interface_method" then prefix = "function "
  else if node.is_async then prefix = "async function "
  else if node.is_iterator == 2 then prefix = "lazy iterator function "
  else if node.is_iterator then prefix = "iterator function "
  end if
  modifier = ""
  if node.is_static then modifier = modifier + "static " end if
  if node.is_inline then modifier = modifier + "inline " end if
  if node.is_synchronized then modifier = modifier + "synchronized " end if
  signature = modifier + prefix + name + "(" + strings.join(pieces, ", ") + ")"
  return_type = _typeName(node.return_type, node.return_optional)
  if return_type != "" then signature = signature + " returns " + return_type end if
  return signature
end function

/// Performs the '_calleeName' step in MiniDoc's symbol-analysis pipeline.
/// @internal
function _calleeName(expr)
  kind = tools.ast_kind(expr)
  if kind == "Var" then return tools.ast_name(expr) end if
  if kind == "Member" or kind == "SafeMember" then
    left = _calleeName(expr.target)
    if left == "" then return expr.name end if
    return left + "." + expr.name
  end if
  return ""
end function

/// Performs the '_walkExpression' step in MiniDoc's symbol-analysis pipeline.
/// @internal
function _walkExpression(project, file, caller, expr, namespace_name)
  if typeof(expr) == "void" or tools.ast_is_node(expr) == false then return end if
  kind = tools.ast_kind(expr)
  if kind == "Call" then
    raw = _calleeName(expr.callee)
    dynamic = raw == "" or tools.ast_kind(expr.callee) == "SafeMember"
    if raw != "" then project.call_references = project.call_references + [model.CallReference(caller.id, raw, file.id, file.package_name, namespace_name, tools.ast_pos(expr), dynamic)] end if
    _walkExpression(project, file, caller, expr.callee, namespace_name)
    if len(expr.args) > 0 then
      for i = 0 to len(expr.args) - 1
        _walkExpression(project, file, caller, expr.args[i], namespace_name)
      end for
    end if
  else if kind == "Unary" then _walkExpression(project, file, caller, tools.ast_right(expr), namespace_name)
  else if kind == "Bin" then
    _walkExpression(project, file, caller, tools.ast_left(expr), namespace_name)
    _walkExpression(project, file, caller, tools.ast_right(expr), namespace_name)
  else if kind == "Coalesce" then
    _walkExpression(project, file, caller, expr.left, namespace_name)
    _walkExpression(project, file, caller, expr.right, namespace_name)
  else if kind == "IsType" or kind == "TypeGuard" then _walkExpression(project, file, caller, expr.expr, namespace_name)
  else if kind == "Member" or kind == "SafeMember" then _walkExpression(project, file, caller, expr.target, namespace_name)
  else if kind == "Index" then
    _walkExpression(project, file, caller, expr.target, namespace_name)
    _walkExpression(project, file, caller, expr.index, namespace_name)
  else if kind == "ArrayLit" then
    if len(expr.items) > 0 then
      for i = 0 to len(expr.items) - 1
        _walkExpression(project, file, caller, expr.items[i], namespace_name)
      end for
    end if
  else if kind == "Lambda" then
    _walkStatementsForCalls(project, file, caller, expr.body, namespace_name)
  end if
end function

/// Performs the '_walkStatementsForCalls' step in MiniDoc's symbol-analysis pipeline.
/// @internal
function _walkStatementsForCalls(project, file, caller, body, namespace_name)
  if typeof(body) != "array" or len(body) == 0 then return end if
  for i = 0 to len(body) - 1
    st = body[i]
    kind = tools.ast_kind(st)
    if kind == "FunctionDef" then continue end if
    if kind == "Print" or kind == "ExprStmt" or kind == "Return" or kind == "Yield" then _walkExpression(project, file, caller, st.expr, namespace_name)
    else if kind == "Assign" or kind == "ConstDecl" or kind == "SynchronizedDecl" then _walkExpression(project, file, caller, st.expr, namespace_name)
    else if kind == "SetMember" then
      _walkExpression(project, file, caller, st.obj, namespace_name)
      _walkExpression(project, file, caller, st.expr, namespace_name)
    else if kind == "SetIndex" then
      _walkExpression(project, file, caller, st.target, namespace_name)
      _walkExpression(project, file, caller, st.index, namespace_name)
      _walkExpression(project, file, caller, st.expr, namespace_name)
    else if kind == "Defer" then _walkExpression(project, file, caller, st.expr, namespace_name)
    else if kind == "If" then
      _walkExpression(project, file, caller, st.cond, namespace_name)
      _walkStatementsForCalls(project, file, caller, st.then_body, namespace_name)
      if len(st.elifs) > 0 then
        for ei = 0 to len(st.elifs) - 1
          pair = st.elifs[ei]
          _walkExpression(project, file, caller, pair[0], namespace_name)
          _walkStatementsForCalls(project, file, caller, pair[1], namespace_name)
        end for
      end if
      _walkStatementsForCalls(project, file, caller, st.else_body, namespace_name)
    else if kind == "While" then
      _walkExpression(project, file, caller, st.cond, namespace_name)
      _walkStatementsForCalls(project, file, caller, st.body, namespace_name)
    else if kind == "For" then
      _walkExpression(project, file, caller, st.start, namespace_name)
      _walkExpression(project, file, caller, st.end_expr, namespace_name)
      _walkStatementsForCalls(project, file, caller, st.body, namespace_name)
    else if kind == "ForEach" then
      _walkExpression(project, file, caller, st.iterable, namespace_name)
      _walkStatementsForCalls(project, file, caller, st.body, namespace_name)
    else if kind == "DoWhile" then
      _walkStatementsForCalls(project, file, caller, st.body, namespace_name)
      _walkExpression(project, file, caller, st.cond, namespace_name)
    else if kind == "SynchronizedBlock" then
      _walkExpression(project, file, caller, st.lock, namespace_name)
      _walkStatementsForCalls(project, file, caller, st.body, namespace_name)
    else if kind == "Switch" then
      _walkExpression(project, file, caller, st.expr, namespace_name)
      if len(st.cases) > 0 then
        for ci = 0 to len(st.cases) - 1
          case_item = st.cases[ci]
          if len(case_item.values) > 0 then
            for vi = 0 to len(case_item.values) - 1
              _walkExpression(project, file, caller, case_item.values[vi], namespace_name)
            end for
          end if
          _walkStatementsForCalls(project, file, caller, case_item.body, namespace_name)
        end for
      end if
      _walkStatementsForCalls(project, file, caller, st.default_body, namespace_name)
    end if
  end for
end function

/// Performs the '_addFunction' step in MiniDoc's symbol-analysis pipeline.
/// @internal
function _addFunction(project, file, node, kind, prefix, namespace_name, container_id)
  doc = comments.documentationBefore(file.docs, file.processed_source, node._pos)
  parameters = _functionParameters(node, doc)
  signature = _functionSignature(node, parameters, node.name, kind)
  qualified_name = _qualified(prefix, node.name)
  modifiers = []
  if node.is_static then modifiers = modifiers + ["static"] end if
  if node.is_inline then modifiers = modifiers + ["inline"] end if
  if node.is_synchronized then modifiers = modifiers + ["synchronized"] end if
  if node.is_async then modifiers = modifiers + ["async"] end if
  if node.is_iterator == 2 then modifiers = modifiers + ["lazy", "iterator"]
  else if node.is_iterator then modifiers = modifiers + ["iterator"]
  end if
  return_type = _typeName(node.return_type, node.return_optional)
  fn_sym = _addSymbol(project, file, kind, node.name, qualified_name, container_id, namespace_name, node._pos, signature, "", modifiers, parameters, return_type, doc)
  _validateFunctionDoc(project, file, node, doc, parameters, return_type)
  _walkStatementsForCalls(project, file, fn_sym, node.body, namespace_name)
  _walkNested(project, file, node.body, fn_sym, namespace_name)
  return fn_sym
end function

/// Performs the '_walkNested' step in MiniDoc's symbol-analysis pipeline.
/// @internal
function _walkNested(project, file, body, parent, namespace_name)
  if typeof(body) != "array" or len(body) == 0 then return end if
  for i = 0 to len(body) - 1
    st = body[i]
    kind = tools.ast_kind(st)
    if kind == "FunctionDef" then
      _addFunction(project, file, st, "nested_function", parent.qualified_name + ".local", namespace_name, parent.id)
    else if kind == "If" then
      _walkNested(project, file, st.then_body, parent, namespace_name)
      if len(st.elifs) > 0 then
        for ei = 0 to len(st.elifs) - 1
          _walkNested(project, file, st.elifs[ei][1], parent, namespace_name)
        end for
      end if
      _walkNested(project, file, st.else_body, parent, namespace_name)
    else if kind == "While" or kind == "For" or kind == "ForEach" or kind == "DoWhile" or kind == "SynchronizedBlock" then
      _walkNested(project, file, st.body, parent, namespace_name)
    else if kind == "Switch" then
      if len(st.cases) > 0 then
        for ci = 0 to len(st.cases) - 1
          _walkNested(project, file, st.cases[ci].body, parent, namespace_name)
        end for
      end if
      _walkNested(project, file, st.default_body, parent, namespace_name)
    end if
  end for
end function

/// Performs the '_addExternFunction' step in MiniDoc's symbol-analysis pipeline.
/// @internal
function _addExternFunction(project, file, node, prefix, namespace_name)
  doc = comments.documentationBefore(file.docs, file.processed_source, node._pos)
  parameters = []
  pieces = []
  if len(node.params) > 0 then
    for i = 0 to len(node.params) - 1
      param = node.params[i]
      type_name = "" + param.ty
      part = param.name + " as " + type_name
      if param.is_out then part = "out " + part end if
      pieces = pieces + [part]
      parameters = parameters + [model.ParameterDoc(param.name, type_name, false, "", false, comments.tagText(doc, "param", param.name))]
    end for
  end if
  return_type = "" + node.ret_ty
  signature = "extern function " + node.name + "(" + strings.join(pieces, ", ") + ") from \"" + node.dll + "\""
  if typeof(node.symbol_name) == "string" and node.symbol_name != "" then signature = signature + " symbol \"" + node.symbol_name + "\"" end if
  if return_type != "" then signature = signature + " returns " + return_type end if
  fn_sym = _addSymbol(project, file, "extern_function", node.name, _qualified(prefix, node.name), "", namespace_name, node._pos, signature, "", ["extern"], parameters, return_type, doc)
  _validateFunctionDoc(project, file, node, doc, parameters, return_type)
  return fn_sym
end function

/// Performs the '_addStruct' step in MiniDoc's symbol-analysis pipeline.
/// @internal
function _addStruct(project, file, node, prefix, namespace_name)
  doc = comments.documentationBefore(file.docs, file.processed_source, node._pos)
  qualified_name = _qualified(prefix, node.name)
  is_extern = typeof(node._extern_field_types) == "array" and len(node._extern_field_types) > 0
  kind = "struct"
  signature = "struct " + node.name
  modifiers = []
  if is_extern then kind = "extern_struct" signature = "extern struct " + node.name modifiers = ["extern"] end if
  if typeof(node.interfaces) == "array" and len(node.interfaces) > 0 then signature = signature + " implements " + strings.join(node.interfaces, ", ") end if
  type_sym = _addSymbol(project, file, kind, node.name, qualified_name, "", namespace_name, node._pos, signature, node.name, modifiers, [], "", doc)

  cursor = node._pos + len(node.name)
  if len(node.fields) > 0 then
    for fi = 0 to len(node.fields) - 1
      field_name = node.fields[fi]
      field_pos = _findWord(file.processed_source, field_name, cursor)
      cursor = field_pos + len(field_name)
      field_doc = comments.documentationBefore(file.docs, file.processed_source, field_pos)
      field_type = ""
      optional = false
      if is_extern and fi < len(node._extern_field_types) then field_type = node._extern_field_types[fi]
      else
        if typeof(node.field_types) == "array" and fi < len(node.field_types) and typeof(node.field_types[fi]) == "string" then field_type = node.field_types[fi] end if
        if typeof(node.field_optional) == "array" and fi < len(node.field_optional) then optional = node.field_optional[fi] == true end if
      end if
      display_type = _typeName(field_type, optional)
      field_signature = field_name
      if display_type != "" then field_signature = field_signature + " as " + display_type end if
      _addSymbol(project, file, "field", field_name, qualified_name + "." + field_name, type_sym.id, namespace_name, field_pos, field_signature, display_type, [], [], "", field_doc)
    end for
  end if

  if len(node.methods) > 0 then
    for mi = 0 to len(node.methods) - 1
      method_kind = "method"
      if node.methods[mi].is_static then method_kind = "static_method" end if
      _addFunction(project, file, node.methods[mi], method_kind, qualified_name, namespace_name, type_sym.id)
    end for
  end if
  if typeof(node.interfaces) == "array" and len(node.interfaces) > 0 then
    for ii = 0 to len(node.interfaces) - 1
      project.relations = project.relations + [model.RelationDoc(type_sym.id, "", "implements", "exact", node.interfaces[ii])]
    end for
  end if
  return type_sym
end function

/// Performs the '_addInterface' step in MiniDoc's symbol-analysis pipeline.
/// @internal
function _addInterface(project, file, node, prefix, namespace_name)
  doc = comments.documentationBefore(file.docs, file.processed_source, node._pos)
  qualified_name = _qualified(prefix, node.name)
  interface_sym = _addSymbol(project, file, "interface", node.name, qualified_name, "", namespace_name, node._pos, "interface " + node.name, node.name, [], [], "", doc)
  if len(node.methods) > 0 then
    for i = 0 to len(node.methods) - 1
      _addFunction(project, file, node.methods[i], "interface_method", qualified_name, namespace_name, interface_sym.id)
    end for
  end if
  return interface_sym
end function

/// Performs the '_addEnum' step in MiniDoc's symbol-analysis pipeline.
/// @internal
function _addEnum(project, file, node, prefix, namespace_name)
  doc = comments.documentationBefore(file.docs, file.processed_source, node._pos)
  qualified_name = _qualified(prefix, node.name)
  enum_sym = _addSymbol(project, file, "enum", node.name, qualified_name, "", namespace_name, node._pos, "enum " + node.name, node.name, [], [], "", doc)
  cursor = node._pos + len(node.name)
  next_number = 0
  if len(node.variants) == 0 then return enum_sym end if
  for i = 0 to len(node.variants) - 1
    variant_name = node.variants[i]
    variant_pos = _findWord(file.processed_source, variant_name, cursor)
    cursor = variant_pos + len(variant_name)
    variant_doc = comments.documentationBefore(file.docs, file.processed_source, variant_pos)
    value = ""
    if typeof(node.values[i]) != "void" then
      value = expressionText(node.values[i])
      if typeof(tools.ast_value(node.values[i])) == "int" then next_number = tools.ast_value(node.values[i]) + 1 end if
    else
      value = "" + next_number
      next_number = next_number + 1
    end if
    _addSymbol(project, file, "enum_variant", variant_name, qualified_name + "." + variant_name, enum_sym.id, namespace_name, variant_pos, variant_name + " = " + value, node.name, [], [], "", variant_doc)
  end for
  return enum_sym
end function

/// Performs the '_walkDeclarations' step in MiniDoc's symbol-analysis pipeline.
/// @internal
function _walkDeclarations(project, file, body, namespace_name)
  if typeof(body) != "array" or len(body) == 0 then return end if
  prefix = _scope(file.package_name, namespace_name)
  for i = 0 to len(body) - 1
    node = body[i]
    kind = tools.ast_kind(node)
    if kind == "NamespaceDecl" or kind == "Import" then continue end if
    if kind == "NamespaceDef" then
      child_namespace = _qualified(namespace_name, node.name)
      doc = comments.documentationBefore(file.docs, file.processed_source, node._pos)
      namespace_qname = _scope(file.package_name, child_namespace)
      _addSymbol(project, file, "namespace", node.name, namespace_qname, "", child_namespace, node._pos, "namespace " + node.name, "", [], [], "", doc)
      _walkDeclarations(project, file, node.body, child_namespace)
    else if kind == "FunctionDef" then _addFunction(project, file, node, "function", prefix, namespace_name, "")
    else if kind == "StructDef" then _addStruct(project, file, node, prefix, namespace_name)
    else if kind == "InterfaceDef" then _addInterface(project, file, node, prefix, namespace_name)
    else if kind == "EnumDef" then _addEnum(project, file, node, prefix, namespace_name)
    else if kind == "ExternFunctionDef" then _addExternFunction(project, file, node, prefix, namespace_name)
    else if kind == "ConstDecl" then
      doc_const = comments.documentationBefore(file.docs, file.processed_source, node._pos)
      signature_const = "const " + node.name + " = " + expressionText(node.expr)
      _addSymbol(project, file, "constant", node.name, _qualified(prefix, node.name), "", namespace_name, node._pos, signature_const, "", [], [], "", doc_const)
    else if kind == "Assign" or kind == "SynchronizedDecl" then
      doc_global = comments.documentationBefore(file.docs, file.processed_source, node._pos)
      global_name = node.name
      signature_global = global_name
      declared_type = ""
      if kind == "SynchronizedDecl" then signature_global = "synchronized " + global_name
      else
        declared_type = _typeName(node.declared_type, node.declared_optional)
        if declared_type != "" then signature_global = signature_global + " as " + declared_type end if
      end if
      _addSymbol(project, file, "global", global_name, _qualified(prefix, global_name), "", namespace_name, node._pos, signature_global, declared_type, [], [], "", doc_global)
    end if
  end for
end function

/// Performs the '_resolveUnique' step in MiniDoc's symbol-analysis pipeline.
/// @internal
function _resolveUnique(project, candidates, allowed_kinds)
  found = ""
  count = 0
  if len(candidates) == 0 or len(project.symbols) == 0 then return "" end if
  for ci = 0 to len(candidates) - 1
    candidate = candidates[ci]
    for si = 0 to len(project.symbols) - 1
      candidate_sym = project.symbols[si]
      if util.containsString(allowed_kinds, candidate_sym.kind) == false then continue end if
      if candidate_sym.qualified_name == candidate then
        found = candidate_sym.id
        count = count + 1
      end if
    end for
  end for
  if count == 1 then return found end if
  return ""
end function

/// Performs the '_aliasTargetPackage' step in MiniDoc's symbol-analysis pipeline.
/// @internal
function _aliasTargetPackage(project, file_id, alias)
  file = _fileById(project, file_id)
  if typeof(file) != "struct" then return "" end if
  if len(file.imports) == 0 then return "" end if
  for i = 0 to len(file.imports) - 1
    item = file.imports[i]
    if item.alias == alias and item.target_file_id != "" then
      target = _fileById(project, item.target_file_id)
      if typeof(target) == "struct" then return target.package_name end if
    end if
  end for
  return ""
end function

/// Performs the '_resolveCalls' step in MiniDoc's symbol-analysis pipeline.
/// @internal
function _resolveCalls(project)
  function_kinds = ["function", "nested_function", "method", "static_method", "interface_method", "extern_function"]
  if len(project.call_references) == 0 then return end if
  for i = 0 to len(project.call_references) - 1
    ref = project.call_references[i]
    raw = ref.raw_target
    candidates = []
    caller = _symbolById(project, ref.caller_id)
    if typeof(caller) == "struct" and strings.startsWith(raw, "this.") then
      method_name = strings.substr(raw, 5, len(raw) - 5)
      container = _symbolById(project, caller.container_id)
      if typeof(container) == "struct" then candidates = candidates + [container.qualified_name + "." + method_name] end if
    end if
    dot = strings.indexOf(raw, ".", 0)
    if typeof(dot) == "int" and dot > 0 then
      first = strings.substr(raw, 0, dot)
      remainder = strings.substr(raw, dot + 1, len(raw) - dot - 1)
      alias_package = _aliasTargetPackage(project, ref.file_id, first)
      if alias_package != "" then candidates = candidates + [alias_package + "." + remainder] end if
    end if
    if ref.namespace_name != "" then candidates = candidates + [_scope(ref.package_name, ref.namespace_name) + "." + raw] end if
    if ref.package_name != "" then candidates = candidates + [ref.package_name + "." + raw] end if
    candidates = candidates + [raw]
    target_id = _resolveUnique(project, candidates, function_kinds)
    certainty = "exact"
    if ref.dynamic then certainty = "dynamic" end if
    if target_id != "" then
      project.relations = project.relations + [model.RelationDoc(ref.caller_id, target_id, "calls", certainty, raw)]
    else if strings.contains(raw, ".") and not strings.startsWith(raw, "std.") then
      project.relations = project.relations + [model.RelationDoc(ref.caller_id, "", "calls", "unresolved", raw)]
    end if
  end for
end function

/// Performs the '_resolveTypeRelations' step in MiniDoc's symbol-analysis pipeline.
/// @internal
function _resolveTypeRelations(project)
  type_kinds = ["struct", "extern_struct", "interface", "enum"]
  if len(project.relations) == 0 then return end if
  for i = 0 to len(project.relations) - 1
    relation = project.relations[i]
    if relation.kind != "implements" or relation.to_id != "" then continue end if
    source = _symbolById(project, relation.from_id)
    candidates = [relation.label]
    if typeof(source) == "struct" and source.namespace_name != "" then candidates = candidates + [_scope(source.package_name, source.namespace_name) + "." + relation.label] end if
    if typeof(source) == "struct" and source.package_name != "" then candidates = candidates + [source.package_name + "." + relation.label] end if
    relation.to_id = _resolveUnique(project, candidates, type_kinds)
    if relation.to_id == "" then relation.certainty = "unresolved" end if
  end for
end function

/// Performs the '_validateCoverage' step in MiniDoc's symbol-analysis pipeline.
/// @internal
function _validateCoverage(project)
  required = ["function", "struct", "extern_struct", "interface", "enum", "extern_function"]
  if len(project.symbols) == 0 then return end if
  for i = 0 to len(project.symbols) - 1
    covered_sym = project.symbols[i]
    if util.containsString(required, covered_sym.kind) and covered_sym.summary == "" and covered_sym.internal == false then
      file = _fileById(project, covered_sym.file_id)
      if typeof(file) != "struct" or util.isProjectSource(file.path, project.config.entry, project.config.source_roots) == false then continue end if
      _diagnostic(project, "warning", "MD2201", file, covered_sym.position, "public symbol has no documentation: " + covered_sym.qualified_name)
    end if
  end for
end function

/// Enriches a loaded project with declarations, calls, type relations, and documentation diagnostics.
/// @param project Project model populated by the source loader.
/// @since 0.1.0
function analyze(project)
  if len(project.files) > 0 then
    for i = 0 to len(project.files) - 1
      file = project.files[i]
      _walkDeclarations(project, file, file.program, "")
    end for
  end if
  _resolveCalls(project)
  _resolveTypeRelations(project)
  _validateCoverage(project)
  return project
end function
