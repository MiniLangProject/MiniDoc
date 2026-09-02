/*
Copyright 2026 Nils Kopal

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0
*/

//! Calculates size, complexity, duplication, Halstead, maintainability, and coverage metrics.

package minidoc.metrics

import std.math as math
import std.string as strings
import mlc.minilang_parser as parser
import mlc.tools as tools
import minidoc.model as model
import minidoc.util as util

/// Number of normalized source lines in one duplicate-code window.
/// @internal
const DUPLICATE_WINDOW_SIZE = 6

/// Maximum number of representative clone groups rendered in detail.
/// @internal
const CLONE_DETAIL_LIMIT = 200

/// Internal mutable counters used while calculating Halstead metrics.
/// @internal
struct HalsteadAccumulator
  operators,
  operands,
  distinct_operators,
  distinct_operands,
  total_operators,
  total_operands,
end struct

/// Internal counters used while traversing control-flow constructs.
/// @internal
struct ComplexityAccumulator
  statement_count,
  cyclomatic_complexity,
  cognitive_complexity,
  maximum_nesting,
end struct

/// Internal per-file source representation used by metric calculations.
/// @internal
struct SourceMetricsData
  file_id,
  file_path,
  source,
  normalized_lines,
  comment_flags,
  duplicate_flags,
  physical_lines,
  source_lines,
  comment_lines,
  blank_lines,
  halstead,
end struct

/// Performs the '_round2' step in MiniDoc's metrics pipeline.
/// @internal
function _round2(value)
  return math.round(value * 100.0) / 100.0
end function

/// Performs the '_tokenValue' step in MiniDoc's metrics pipeline.
/// @internal
function _tokenValue(tokens, index)
  kind_id = tokens.kinds[index]
  value_id = parser._token_u32_read(tokens.value_ids, index)
  if value_id <= 0 then return parser._token_fixed_value(kind_id) end if
  return tools.arr_vec_get(tokens.texts, value_id - 1, "")
end function

/// Performs the '_newHalsteadAccumulator' step in MiniDoc's metrics pipeline.
/// @internal
function _newHalsteadAccumulator()
  return HalsteadAccumulator(tools.fastmap_new(128), tools.fastmap_new(256), 0, 0, 0, 0)
end function

/// Performs the '_recordOperator' step in MiniDoc's metrics pipeline.
/// @internal
function _recordOperator(accumulator, value)
  accumulator.total_operators = accumulator.total_operators + 1
  if tools.fastmap_has(accumulator.operators, value) == false then
    accumulator.operators = tools.fastmap_set(accumulator.operators, value, true)
    accumulator.distinct_operators = accumulator.distinct_operators + 1
  end if
  return accumulator
end function

/// Performs the '_recordOperand' step in MiniDoc's metrics pipeline.
/// @internal
function _recordOperand(accumulator, value)
  accumulator.total_operands = accumulator.total_operands + 1
  if tools.fastmap_has(accumulator.operands, value) == false then
    accumulator.operands = tools.fastmap_set(accumulator.operands, value, true)
    accumulator.distinct_operands = accumulator.distinct_operands + 1
  end if
  return accumulator
end function

/// Performs the '_accumulateHalstead' step in MiniDoc's metrics pipeline.
/// @internal
function _accumulateHalstead(accumulator, source)
  tokens = parser.tokenize(source)
  if typeof(tokens) != "struct" then return accumulator end if
  index = 0
  while index < tokens.count
    kind = parser._token_kind_name(tokens.kinds[index])
    value = _tokenValue(tokens, index)
    if kind == "IDENT" or kind == "NUMBER" or kind == "STRING" then
      accumulator = _recordOperand(accumulator, value)
    else if kind == "KW" then
      if value == "true" or value == "false" or value == "void" then accumulator = _recordOperand(accumulator, value)
      else accumulator = _recordOperator(accumulator, value)
      end if
    else if kind != "NL" and kind != "EOF" then
      accumulator = _recordOperator(accumulator, value)
    end if
    index = index + 1
  end while
  return accumulator
end function

/// Performs the '_finishHalstead' step in MiniDoc's metrics pipeline.
/// @internal
function _finishHalstead(accumulator)
  vocabulary = accumulator.distinct_operators + accumulator.distinct_operands
  length = accumulator.total_operators + accumulator.total_operands
  volume = 0.0
  if vocabulary > 1 and length > 0 then volume = length * math.log2(vocabulary) end if
  difficulty = 0.0
  if accumulator.distinct_operands > 0 then
    difficulty = (accumulator.distinct_operators / 2.0) * (accumulator.total_operands / (1.0 * accumulator.distinct_operands))
  end if
  effort = volume * difficulty
  estimated_bugs = volume / 3000.0
  return model.HalsteadMetrics(
    accumulator.distinct_operators,
    accumulator.distinct_operands,
    accumulator.total_operators,
    accumulator.total_operands,
    vocabulary,
    length,
    _round2(volume),
    _round2(difficulty),
    _round2(effort),
    _round2(estimated_bugs)
  )
end function

/// Performs the '_halstead' step in MiniDoc's metrics pipeline.
/// @internal
function _halstead(source)
  return _finishHalstead(_accumulateHalstead(_newHalsteadAccumulator(), source))
end function

/// Performs the '_normalizedLines' step in MiniDoc's metrics pipeline.
/// @internal
function _normalizedLines(source)
  if typeof(source) != "string" or len(source) == 0 then return [] end if
  tokens = parser.tokenize(source)
  if typeof(tokens) != "struct" then return [] end if
  result = tools.arr_vec_new(64)
  current = tools.arr_vec_new(16)
  index = 0
  while index < tokens.count
    kind = parser._token_kind_name(tokens.kinds[index])
    if kind == "NL" then
      result = tools.arr_vec_push(result, strings.join(tools.arr_vec_finish(current), " "))
      current = tools.arr_vec_new(16)
    else if kind != "EOF" then
      current = tools.arr_vec_push(current, _tokenValue(tokens, index))
    end if
    index = index + 1
  end while
  if strings.endsWith(source, "\n") == false then result = tools.arr_vec_push(result, strings.join(tools.arr_vec_finish(current), " ")) end if
  return tools.arr_vec_finish(result)
end function

/// Performs the '_commentFlags' step in MiniDoc's metrics pipeline.
/// @internal
function _commentFlags(source)
  if typeof(source) != "string" or len(source) == 0 then return [] end if
  result = tools.arr_vec_new(64)
  in_block = false
  in_string = false
  escaped = false
  line_comment = false
  line_has_comment = false
  index = 0
  while index < len(source)
    ch = source[index]
    if ch == "\n" then
      result = tools.arr_vec_push(result, line_has_comment)
      line_has_comment = in_block
      line_comment = false
      escaped = false
      index = index + 1
      continue
    end if
    if line_comment then index = index + 1 continue end if
    if in_block then
      line_has_comment = true
      if ch == "*" and index + 1 < len(source) and source[index + 1] == "/" then
        in_block = false
        index = index + 2
      else index = index + 1
      end if
      continue
    end if
    if in_string then
      if escaped then escaped = false
      else if ch == "\\" then escaped = true
      else if ch == "\"" then in_string = false
      end if
      index = index + 1
      continue
    end if
    if ch == "\"" then in_string = true index = index + 1 continue end if
    if ch == "/" and index + 1 < len(source) and source[index + 1] == "/" then
      line_has_comment = true
      line_comment = true
      index = index + 2
      continue
    end if
    if ch == "/" and index + 1 < len(source) and source[index + 1] == "*" then
      line_has_comment = true
      in_block = true
      index = index + 2
      continue
    end if
    index = index + 1
  end while
  if strings.endsWith(source, "\n") == false then result = tools.arr_vec_push(result, line_has_comment) end if
  return tools.arr_vec_finish(result)
end function

/// Performs the '_sourceData' step in MiniDoc's metrics pipeline.
/// @internal
function _sourceData(file)
  normalized = _normalizedLines(file.processed_source)
  comments = _commentFlags(file.processed_source)
  source_lines = 0
  comment_lines = 0
  blank_lines = 0
  if len(normalized) > 0 then
    for i = 0 to len(normalized) - 1
      has_code = strings.trim(normalized[i]) != ""
      has_comment = i < len(comments) and comments[i]
      if has_code then source_lines = source_lines + 1 end if
      if has_comment then comment_lines = comment_lines + 1 end if
      if has_code == false and has_comment == false then blank_lines = blank_lines + 1 end if
    end for
  end if
  return SourceMetricsData(
    file.id,
    file.relative_path,
    file.processed_source,
    normalized,
    comments,
    bytes(len(normalized), 0),
    len(normalized),
    source_lines,
    comment_lines,
    blank_lines,
    _halstead(file.processed_source)
  )
end function

/// Performs the '_booleanOperators' step in MiniDoc's metrics pipeline.
/// @internal
function _booleanOperators(expr)
  if typeof(expr) == "void" or tools.ast_is_node(expr) == false then return 0 end if
  kind = tools.ast_kind(expr)
  if kind == "Bin" then
    count = _booleanOperators(tools.ast_left(expr)) + _booleanOperators(tools.ast_right(expr))
    op = tools.ast_op(expr)
    if op == "and" or op == "or" then count = count + 1 end if
    return count
  end if
  if kind == "Unary" then return _booleanOperators(tools.ast_right(expr)) end if
  if kind == "Coalesce" then return _booleanOperators(expr.left) + _booleanOperators(expr.right) end if
  if kind == "IsType" or kind == "TypeGuard" then return _booleanOperators(expr.expr) end if
  if kind == "Member" or kind == "SafeMember" then return _booleanOperators(expr.target) end if
  if kind == "Index" then return _booleanOperators(expr.target) + _booleanOperators(expr.index) end if
  if kind == "Call" then
    count2 = _booleanOperators(expr.callee)
    if len(expr.args) > 0 then
      for i = 0 to len(expr.args) - 1
        count2 = count2 + _booleanOperators(expr.args[i])
      end for
    end if
    return count2
  end if
  if kind == "ArrayLit" then
    count3 = 0
    if len(expr.items) > 0 then
      for i = 0 to len(expr.items) - 1
        count3 = count3 + _booleanOperators(expr.items[i])
      end for
    end if
    return count3
  end if
  return 0
end function

/// Performs the '_touchNesting' step in MiniDoc's metrics pipeline.
/// @internal
function _touchNesting(accumulator, nesting)
  if nesting > accumulator.maximum_nesting then accumulator.maximum_nesting = nesting end if
  return accumulator
end function

/// Performs the '_walkComplexity' step in MiniDoc's metrics pipeline.
/// @internal
function _walkComplexity(body, accumulator, nesting)
  if typeof(body) != "array" or len(body) == 0 then return accumulator end if
  for i = 0 to len(body) - 1
    statement = body[i]
    kind = tools.ast_kind(statement)
    if kind == "FunctionDef" then continue end if
    accumulator.statement_count = accumulator.statement_count + 1
    if kind == "If" then
      boolean_count = _booleanOperators(statement.cond)
      accumulator.cyclomatic_complexity = accumulator.cyclomatic_complexity + 1 + boolean_count
      accumulator.cognitive_complexity = accumulator.cognitive_complexity + 1 + nesting + boolean_count
      accumulator = _touchNesting(accumulator, nesting + 1)
      accumulator = _walkComplexity(statement.then_body, accumulator, nesting + 1)
      if len(statement.elifs) > 0 then
        for ei = 0 to len(statement.elifs) - 1
          pair = statement.elifs[ei]
          elif_booleans = _booleanOperators(pair[0])
          accumulator.cyclomatic_complexity = accumulator.cyclomatic_complexity + 1 + elif_booleans
          accumulator.cognitive_complexity = accumulator.cognitive_complexity + 1 + nesting + elif_booleans
          accumulator = _walkComplexity(pair[1], accumulator, nesting + 1)
        end for
      end if
      accumulator = _walkComplexity(statement.else_body, accumulator, nesting + 1)
    else if kind == "While" or kind == "DoWhile" then
      loop_booleans = _booleanOperators(statement.cond)
      accumulator.cyclomatic_complexity = accumulator.cyclomatic_complexity + 1 + loop_booleans
      accumulator.cognitive_complexity = accumulator.cognitive_complexity + 1 + nesting + loop_booleans
      accumulator = _touchNesting(accumulator, nesting + 1)
      accumulator = _walkComplexity(statement.body, accumulator, nesting + 1)
    else if kind == "For" or kind == "ForEach" then
      accumulator.cyclomatic_complexity = accumulator.cyclomatic_complexity + 1
      accumulator.cognitive_complexity = accumulator.cognitive_complexity + 1 + nesting
      accumulator = _touchNesting(accumulator, nesting + 1)
      accumulator = _walkComplexity(statement.body, accumulator, nesting + 1)
    else if kind == "Switch" then
      case_count = len(statement.cases)
      accumulator.cyclomatic_complexity = accumulator.cyclomatic_complexity + case_count
      accumulator.cognitive_complexity = accumulator.cognitive_complexity + 1 + nesting
      accumulator = _touchNesting(accumulator, nesting + 1)
      if case_count > 0 then
        for ci = 0 to case_count - 1
          accumulator = _walkComplexity(statement.cases[ci].body, accumulator, nesting + 1)
        end for
      end if
      accumulator = _walkComplexity(statement.default_body, accumulator, nesting + 1)
    else if kind == "SynchronizedBlock" then
      accumulator = _walkComplexity(statement.body, accumulator, nesting)
    end if
  end for
  return accumulator
end function

/// Performs the '_complexity' step in MiniDoc's metrics pipeline.
/// @internal
function _complexity(body)
  accumulator = ComplexityAccumulator(0, 1, 0, 0)
  return _walkComplexity(body, accumulator, 0)
end function

/// Performs the '_findFunctionSymbol' step in MiniDoc's metrics pipeline.
/// @internal
function _findFunctionSymbol(project, file_id, position)
  if len(project.symbols) == 0 then return 0 end if
  kinds = ["function", "nested_function", "method", "static_method", "interface_method"]
  for i = 0 to len(project.symbols) - 1
    item = project.symbols[i]
    if item.file_id == file_id and item.position == position and util.containsString(kinds, item.kind) then return item end if
  end for
  return 0
end function

/// Performs the '_startsFunction' step in MiniDoc's metrics pipeline.
/// @internal
function _startsFunction(line)
  lower = strings.toLowerAscii(strings.trim(line))
  if lower == "" or strings.startsWith(lower, "end function") or strings.contains(lower, " => ") then return false end if
  // Normalized string tokens contain their unquoted value. Searching for an
  // arbitrary " function " substring therefore mistakes comparisons such as
  // `typeof(value) == "function"` for nested declarations and loses the real
  // closing line. MiniLang declarations have one of these exact prefixes;
  // inline and synchronized modifiers follow the `function` token.
  return strings.startsWith(lower, "function ") or
         strings.startsWith(lower, "static function ") or
         strings.startsWith(lower, "async function ") or
         strings.startsWith(lower, "iterator function ") or
         strings.startsWith(lower, "lazy iterator function ")
end function

/// Performs the '_functionEndLine' step in MiniDoc's metrics pipeline.
/// @internal
function _functionEndLine(normalized_lines, start_line)
  if start_line < 1 or start_line > len(normalized_lines) then return start_line end if
  depth = 1
  index = start_line
  while index < len(normalized_lines)
    lower = strings.toLowerAscii(strings.trim(normalized_lines[index]))
    if strings.startsWith(lower, "end function") then
      depth = depth - 1
      if depth == 0 then return index + 1 end if
    else if _startsFunction(lower) then depth = depth + 1
    end if
    index = index + 1
  end while
  return start_line
end function

/// Performs the '_sourceLines' step in MiniDoc's metrics pipeline.
/// @internal
function _sourceLines(source)
  if typeof(source) != "string" or len(source) == 0 then return [] end if
  lines = strings.split(strings.replaceAll(source, "\r", ""), "\n")
  if strings.endsWith(source, "\n") and len(lines) > 0 then
    trimmed = array(len(lines) - 1, "")
    if len(trimmed) > 0 then
      for i = 0 to len(trimmed) - 1
        trimmed[i] = lines[i]
      end for
    end if
    return trimmed
  end if
  return lines
end function

/// Performs the '_sourceSlice' step in MiniDoc's metrics pipeline.
/// @internal
function _sourceSlice(source, start_line, end_line)
  lines = _sourceLines(source)
  if len(lines) == 0 then return "" end if
  start_index = start_line - 1
  end_index = end_line - 1
  if start_index < 0 then start_index = 0 end if
  if end_index >= len(lines) then end_index = len(lines) - 1 end if
  if end_index < start_index then end_index = start_index end if
  result = tools.arr_vec_new(end_index - start_index + 1)
  index = start_index
  while index <= end_index
    result = tools.arr_vec_push(result, lines[index])
    index = index + 1
  end while
  return strings.join(tools.arr_vec_finish(result), "\n")
end function

/// Performs the '_maintainability' step in MiniDoc's metrics pipeline.
/// @internal
function _maintainability(volume, cyclomatic, source_lines)
  if source_lines <= 0 then return 100.0 end if
  safe_volume = volume
  if safe_volume < 1.0 then safe_volume = 1.0 end if
  score = (171.0 - 5.2 * math.ln(safe_volume) - 0.23 * cyclomatic - 16.2 * math.ln(1.0 * source_lines)) * 100.0 / 171.0
  if score < 0.0 then score = 0.0 end if
  if score > 100.0 then score = 100.0 end if
  return _round2(score)
end function

/// Performs the '_appendFunctionMetric' step in MiniDoc's metrics pipeline.
/// @internal
function _appendFunctionMetric(project, file, normalized_lines, node, output)
  doc_symbol = _findFunctionSymbol(project, file.id, node._pos)
  if typeof(doc_symbol) != "struct" or doc_symbol.kind == "interface_method" then return output end if
  end_line = _functionEndLine(normalized_lines, doc_symbol.line)
  slice = _sourceSlice(file.processed_source, doc_symbol.line, end_line)
  function_lines = _normalizedLines(slice)
  lines_of_code = 0
  if len(function_lines) > 0 then
    for i = 0 to len(function_lines) - 1
      if strings.trim(function_lines[i]) != "" then lines_of_code = lines_of_code + 1 end if
    end for
  end if
  complexity = _complexity(node.body)
  halstead = _halstead(slice)
  metric = model.FunctionMetrics(
    doc_symbol.id,
    doc_symbol.qualified_name,
    file.id,
    file.relative_path,
    doc_symbol.line,
    lines_of_code,
    complexity.statement_count,
    complexity.cyclomatic_complexity,
    complexity.cognitive_complexity,
    complexity.maximum_nesting,
    len(doc_symbol.parameters),
    halstead,
    _maintainability(halstead.volume, complexity.cyclomatic_complexity, lines_of_code)
  )
  return tools.arr_vec_push(output, metric)
end function

/// Performs the '_walkNestedFunctions' step in MiniDoc's metrics pipeline.
/// @internal
function _walkNestedFunctions(project, file, normalized_lines, body, output)
  if typeof(body) != "array" or len(body) == 0 then return output end if
  for i = 0 to len(body) - 1
    statement = body[i]
    kind = tools.ast_kind(statement)
    if kind == "FunctionDef" then
      output = _appendFunctionMetric(project, file, normalized_lines, statement, output)
      output = _walkNestedFunctions(project, file, normalized_lines, statement.body, output)
    else if kind == "If" then
      output = _walkNestedFunctions(project, file, normalized_lines, statement.then_body, output)
      if len(statement.elifs) > 0 then
        for ei = 0 to len(statement.elifs) - 1
          output = _walkNestedFunctions(project, file, normalized_lines, statement.elifs[ei][1], output)
        end for
      end if
      output = _walkNestedFunctions(project, file, normalized_lines, statement.else_body, output)
    else if kind == "While" or kind == "For" or kind == "ForEach" or kind == "DoWhile" or kind == "SynchronizedBlock" then
      output = _walkNestedFunctions(project, file, normalized_lines, statement.body, output)
    else if kind == "Switch" then
      if len(statement.cases) > 0 then
        for ci = 0 to len(statement.cases) - 1
          output = _walkNestedFunctions(project, file, normalized_lines, statement.cases[ci].body, output)
        end for
      end if
      output = _walkNestedFunctions(project, file, normalized_lines, statement.default_body, output)
    end if
  end for
  return output
end function

/// Performs the '_appendFunctionAndNested' step in MiniDoc's metrics pipeline.
/// @internal
function _appendFunctionAndNested(project, file, normalized_lines, node, output)
  output = _appendFunctionMetric(project, file, normalized_lines, node, output)
  return _walkNestedFunctions(project, file, normalized_lines, node.body, output)
end function

/// Performs the '_collectFunctions' step in MiniDoc's metrics pipeline.
/// @internal
function _collectFunctions(project, file, normalized_lines, body, output)
  if typeof(body) != "array" or len(body) == 0 then return output end if
  for i = 0 to len(body) - 1
    node = body[i]
    kind = tools.ast_kind(node)
    if kind == "FunctionDef" then output = _appendFunctionAndNested(project, file, normalized_lines, node, output)
    else if kind == "NamespaceDef" then output = _collectFunctions(project, file, normalized_lines, node.body, output)
    else if kind == "StructDef" or kind == "InterfaceDef" then
      if len(node.methods) > 0 then
        for mi = 0 to len(node.methods) - 1
          output = _appendFunctionAndNested(project, file, normalized_lines, node.methods[mi], output)
        end for
      end if
    end if
  end for
  return output
end function

/// Performs the '_sourceDataById' step in MiniDoc's metrics pipeline.
/// @internal
function _sourceDataById(sources, file_id)
  if len(sources) == 0 then return 0 end if
  for i = 0 to len(sources) - 1
    if sources[i].file_id == file_id then return sources[i] end if
  end for
  return 0
end function

/// Performs the '_markWindow' step in MiniDoc's metrics pipeline.
/// @internal
function _markWindow(source_data, start, count)
  index = 0
  while index < count and start + index < len(source_data.duplicate_flags)
    source_data.duplicate_flags[start + index] = 1
    index = index + 1
  end while
end function

/// Performs the '_windowFingerprint' step in MiniDoc's metrics pipeline.
/// @internal
function _windowFingerprint(lines, start, count)
  parts = array(count, "")
  index = 0
  while index < count
    value = strings.trim(lines[start + index])
    if value == "" then return "" end if
    parts[index] = value
    index = index + 1
  end while
  return strings.join(parts, "\n")
end function

/// Performs the '_calculateDuplicates' step in MiniDoc's metrics pipeline.
/// @internal
function _calculateDuplicates(sources)
  first_by_fingerprint = tools.fastmap_new(1024)
  group_by_fingerprint = tools.fastmap_new(512)
  first_occurrences = tools.arr_vec_new(512)
  first_source_indexes = tools.arr_vec_new(512)
  first_starts = tools.arr_vec_new(512)
  groups = tools.arr_vec_new(256)
  if len(sources) > 0 then
    for source_index = 0 to len(sources) - 1
      source_data = sources[source_index]
      limit = len(source_data.normalized_lines) - DUPLICATE_WINDOW_SIZE
      start = 0
      while start <= limit
        fingerprint = _windowFingerprint(source_data.normalized_lines, start, DUPLICATE_WINDOW_SIZE)
        if fingerprint != "" then
          occurrence = model.CloneOccurrence(source_data.file_id, source_data.file_path, start + 1)
          first_index = tools.fastmap_get(first_by_fingerprint, fingerprint, -1)
          if first_index < 0 then
            first_index = tools.arr_vec_count(first_occurrences)
            first_occurrences = tools.arr_vec_push(first_occurrences, occurrence)
            first_source_indexes = tools.arr_vec_push(first_source_indexes, source_index)
            first_starts = tools.arr_vec_push(first_starts, start)
            first_by_fingerprint = tools.fastmap_set(first_by_fingerprint, fingerprint, first_index)
          else
            group_index = tools.fastmap_get(group_by_fingerprint, fingerprint, -1)
            if group_index < 0 then
              first_occurrence = tools.arr_vec_get(first_occurrences, first_index, occurrence)
              group_index = tools.arr_vec_count(groups)
              groups = tools.arr_vec_push(groups, model.CloneGroup(fingerprint, DUPLICATE_WINDOW_SIZE, [first_occurrence, occurrence]))
              group_by_fingerprint = tools.fastmap_set(group_by_fingerprint, fingerprint, group_index)
              original_source_index = tools.arr_vec_get(first_source_indexes, first_index, source_index)
              original_start = tools.arr_vec_get(first_starts, first_index, start)
              _markWindow(sources[original_source_index], original_start, DUPLICATE_WINDOW_SIZE)
            else
              group = tools.arr_vec_get(groups, group_index, 0)
              group.occurrences = group.occurrences + [occurrence]
              groups = tools.arr_vec_set(groups, group_index, group)
            end if
            _markWindow(source_data, start, DUPLICATE_WINDOW_SIZE)
          end if
        end if
        start = start + 1
      end while
    end for
  end if
  all_groups = tools.arr_vec_finish(groups)
  detail_groups = all_groups
  if len(detail_groups) > CLONE_DETAIL_LIMIT then
    detail_groups = array(CLONE_DETAIL_LIMIT, 0)
    for i = 0 to CLONE_DETAIL_LIMIT - 1
      detail_groups[i] = all_groups[i]
    end for
  end if
  return [sources, detail_groups, len(all_groups)]
end function

/// Performs the '_duplicatedLineCount' step in MiniDoc's metrics pipeline.
/// @internal
function _duplicatedLineCount(source_data)
  count = 0
  index = 0
  while index < len(source_data.duplicate_flags)
    if source_data.duplicate_flags[index] != 0 then count = count + 1 end if
    index = index + 1
  end while
  return count
end function

/// Performs the '_functionTotals' step in MiniDoc's metrics pipeline.
/// @internal
function _functionTotals(function_metrics, file_id)
  count = 0
  statements = 0
  cyclomatic = 0
  maximum_cyclomatic = 0
  cognitive = 0
  maximum_cognitive = 0
  if len(function_metrics) > 0 then
    for i = 0 to len(function_metrics) - 1
      item = function_metrics[i]
      if item.file_id != file_id then continue end if
      count = count + 1
      statements = statements + item.statement_count
      cyclomatic = cyclomatic + item.cyclomatic_complexity
      cognitive = cognitive + item.cognitive_complexity
      if item.cyclomatic_complexity > maximum_cyclomatic then maximum_cyclomatic = item.cyclomatic_complexity end if
      if item.cognitive_complexity > maximum_cognitive then maximum_cognitive = item.cognitive_complexity end if
    end for
  end if
  return [count, statements, cyclomatic, maximum_cyclomatic, cognitive, maximum_cognitive]
end function

/// Performs the '_isDocumentable' step in MiniDoc's metrics pipeline.
/// @internal
function _isDocumentable(doc_symbol)
  if doc_symbol.internal then return false end if
  required = ["function", "method", "static_method", "interface_method", "struct", "extern_struct", "interface", "enum", "extern_function"]
  return util.containsString(required, doc_symbol.kind)
end function

/// Returns whether a symbol contributes parameter contracts to public API coverage.
/// @internal
function _isDocumentableCallable(doc_symbol)
  if doc_symbol.internal then return false end if
  callable = ["function", "method", "static_method", "interface_method", "extern_function"]
  return util.containsString(callable, doc_symbol.kind)
end function

/// Creates one rounded documentation-coverage metric.
/// @internal
function _coverageMetric(documented, total)
  percent = 100
  if total > 0 then percent = _round2(documented * 100.0 / total) end if
  return model.CoverageMetric(documented, total, percent)
end function

/// Performs the '_isMeasuredFile' step in MiniDoc's metrics pipeline.
/// @internal
function _isMeasuredFile(project, file)
  return util.isProjectSource(file.path, project.config.entry, project.config.source_roots)
end function

/// Calculates project, file, and function metrics for an analyzed project.
/// @param project Analyzed project whose metrics should be calculated.
/// @since 0.2.0
function calculate(project)
  sources_vector = tools.arr_vec_new(len(project.files) + 4)
  project_halstead = _newHalsteadAccumulator()
  if len(project.files) > 0 then
    for i = 0 to len(project.files) - 1
      if _isMeasuredFile(project, project.files[i]) == false then continue end if
      source_data = _sourceData(project.files[i])
      sources_vector = tools.arr_vec_push(sources_vector, source_data)
      project_halstead = _accumulateHalstead(project_halstead, project.files[i].processed_source)
    end for
  end if
  sources = tools.arr_vec_finish(sources_vector)

  function_vector = tools.arr_vec_new(256)
  if len(project.files) > 0 then
    for i = 0 to len(project.files) - 1
      source_data2 = _sourceDataById(sources, project.files[i].id)
      if typeof(source_data2) == "struct" then
        function_vector = _collectFunctions(project, project.files[i], source_data2.normalized_lines, project.files[i].program, function_vector)
      end if
    end for
  end if
  function_metrics = tools.arr_vec_finish(function_vector)

  duplicate_result = _calculateDuplicates(sources)
  sources = duplicate_result[0]
  clone_groups = duplicate_result[1]
  clone_group_count = duplicate_result[2]

  file_vector = tools.arr_vec_new(len(sources) + 4)
  physical_lines = 0
  source_lines = 0
  comment_lines = 0
  blank_lines = 0
  statement_count = 0
  cyclomatic = 0
  maximum_cyclomatic = 0
  cognitive = 0
  maximum_cognitive = 0
  duplicated_lines = 0
  weighted_maintainability = 0.0
  if len(sources) > 0 then
    for i = 0 to len(sources) - 1
      source_data3 = sources[i]
      totals = _functionTotals(function_metrics, source_data3.file_id)
      duplicate_count = _duplicatedLineCount(source_data3)
      average_cyclomatic = 0.0
      if totals[0] > 0 then average_cyclomatic = _round2(totals[2] / (1.0 * totals[0])) end if
      duplicate_percent = 0.0
      if source_data3.source_lines > 0 then duplicate_percent = _round2(duplicate_count * 100.0 / source_data3.source_lines) end if
      maintainability = _maintainability(source_data3.halstead.volume, totals[2], source_data3.source_lines)
      file_vector = tools.arr_vec_push(file_vector, model.FileMetrics(
        source_data3.file_id,
        source_data3.file_path,
        source_data3.physical_lines,
        source_data3.source_lines,
        source_data3.comment_lines,
        source_data3.blank_lines,
        totals[0],
        totals[1],
        totals[2],
        average_cyclomatic,
        totals[3],
        totals[4],
        totals[5],
        duplicate_count,
        duplicate_percent,
        source_data3.halstead,
        maintainability
      ))
      physical_lines = physical_lines + source_data3.physical_lines
      source_lines = source_lines + source_data3.source_lines
      comment_lines = comment_lines + source_data3.comment_lines
      blank_lines = blank_lines + source_data3.blank_lines
      statement_count = statement_count + totals[1]
      cyclomatic = cyclomatic + totals[2]
      cognitive = cognitive + totals[4]
      duplicated_lines = duplicated_lines + duplicate_count
      if totals[3] > maximum_cyclomatic then maximum_cyclomatic = totals[3] end if
      if totals[5] > maximum_cognitive then maximum_cognitive = totals[5] end if
      weighted_maintainability = weighted_maintainability + maintainability * source_data3.source_lines
    end for
  end if
  file_metrics = tools.arr_vec_finish(file_vector)

  function_count = len(function_metrics)
  average_cyclomatic = 0.0
  if function_count > 0 then average_cyclomatic = _round2(cyclomatic / (1.0 * function_count)) end if
  duplication_percent = 0.0
  if source_lines > 0 then duplication_percent = _round2(duplicated_lines * 100.0 / source_lines) end if
  maintainability_index = 100.0
  if source_lines > 0 then maintainability_index = _round2(weighted_maintainability / source_lines) end if

  documented_symbols = 0
  documentable_symbols = 0
  documented_parameters = 0
  parameter_count = 0
  documented_fields = 0
  field_count = 0
  documented_constants = 0
  constant_count = 0
  documented_globals = 0
  global_count = 0
  documented_enum_variants = 0
  enum_variant_count = 0
  if len(project.symbols) > 0 then
    for i = 0 to len(project.symbols) - 1
      doc_symbol = project.symbols[i]
      file_data = _sourceDataById(sources, doc_symbol.file_id)
      if typeof(file_data) == "struct" and _isDocumentable(doc_symbol) then
        documentable_symbols = documentable_symbols + 1
        if doc_symbol.summary != "" then documented_symbols = documented_symbols + 1 end if
      end if
      if typeof(file_data) != "struct" or doc_symbol.internal then continue end if
      if _isDocumentableCallable(doc_symbol) and len(doc_symbol.parameters) > 0 then
        for pi = 0 to len(doc_symbol.parameters) - 1
          parameter_count = parameter_count + 1
          if strings.trim(doc_symbol.parameters[pi].description) != "" then documented_parameters = documented_parameters + 1 end if
        end for
      end if
      if doc_symbol.kind == "field" then
        field_count = field_count + 1
        if doc_symbol.summary != "" then documented_fields = documented_fields + 1 end if
      else if doc_symbol.kind == "constant" then
        constant_count = constant_count + 1
        if doc_symbol.summary != "" then documented_constants = documented_constants + 1 end if
      else if doc_symbol.kind == "global" then
        global_count = global_count + 1
        if doc_symbol.summary != "" then documented_globals = documented_globals + 1 end if
      else if doc_symbol.kind == "enum_variant" then
        enum_variant_count = enum_variant_count + 1
        if doc_symbol.summary != "" then documented_enum_variants = documented_enum_variants + 1 end if
      end if
    end for
  end if
  api_coverage = _coverageMetric(documented_symbols, documentable_symbols)
  parameter_coverage = _coverageMetric(documented_parameters, parameter_count)
  field_coverage = _coverageMetric(documented_fields, field_count)
  constant_coverage = _coverageMetric(documented_constants, constant_count)
  global_coverage = _coverageMetric(documented_globals, global_count)
  enum_variant_coverage = _coverageMetric(documented_enum_variants, enum_variant_count)
  overall_documented = documented_symbols + documented_parameters + documented_fields + documented_constants + documented_globals + documented_enum_variants
  overall_total = documentable_symbols + parameter_count + field_count + constant_count + global_count + enum_variant_count
  overall_coverage = _coverageMetric(overall_documented, overall_total)
  documentation = model.DocumentationCoverage(api_coverage, parameter_coverage, field_coverage, constant_coverage, global_coverage, enum_variant_coverage, overall_coverage)
  documentation_coverage = api_coverage.percent

  return model.ProjectMetrics(
    physical_lines,
    source_lines,
    comment_lines,
    blank_lines,
    len(file_metrics),
    function_count,
    statement_count,
    cyclomatic,
    average_cyclomatic,
    maximum_cyclomatic,
    cognitive,
    maximum_cognitive,
    duplicated_lines,
    duplication_percent,
    clone_group_count,
    documented_symbols,
    documentable_symbols,
    documentation_coverage,
    documentation,
    _finishHalstead(project_halstead),
    maintainability_index,
    file_metrics,
    function_metrics,
    clone_groups,
    DUPLICATE_WINDOW_SIZE
  )
end function
