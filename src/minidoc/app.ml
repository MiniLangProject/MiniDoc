/*
Copyright 2026 Nils Kopal

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0
*/

//! Coordinates configuration, analysis, metrics, rendering, and command-line reporting.

package minidoc.app

import minidoc.analyzer as analyzer
import minidoc.config as config
import minidoc.loader as loader
import minidoc.metrics as metrics
import minidoc.ordering as ordering
import minidoc.render_html as html
import minidoc.render_markdown as markdown
import minidoc.util as util
import std.process as process
import std.time as time

/// Semantic version embedded in generated output and CLI messages.
/// @internal
const VERSION = "0.4.4"

/// Prints the current MiniDoc version.
/// @since 0.1.0
function printVersion()
  print "MiniDoc " + VERSION
end function

/// Prints command-line usage and all supported options.
/// @since 0.1.0
function printHelp()
  print "MiniDoc " + VERSION + " - documentation generator for MiniLang"
  print ""
  print "Usage:"
  print "  minidoc <entry.ml> [options]"
  print "  minidoc --project <minilang.toml> [options]"
  print "  minidoc --config <minidoc.toml> [options]"
  print ""
  print "Input options:"
  print "  --project <file>          Read a MiniLang project manifest"
  print "  --config <file>           Read MiniDoc configuration"
  print "  -I, --import-path <dir>   Add an import root"
  print "  -DNAME[=VALUE]            Set a compile-time definition"
  print "  --target <target>         windows-x64 or linux-x64"
  print "  --name <name>             Override the displayed project name"
  print "  --description <text>      Override the project introduction"
  print ""
  print "Output options:"
  print "  --format <value>          html, markdown, or all"
  print "  --html-out <dir>          HTML output directory"
  print "  --md-out <dir>            Markdown output directory"
  print "  --md-profile <profile>    repository or wiki"
  print "  --no-timestamp            Omit volatile generation time metadata"
  print "  --dependencies <mode>     none, summary, or full"
  print "  --graph <list>            imports,calls,types"
  print "  --graph-granularity <g>   package or symbol"
  print "  --no-graphs               Disable every graph"
  print ""
  print "Validation options:"
  print "  --check                   Analyze without writing output"
  print "  --strict                  Fail when documentation warnings exist"
  print "  --keep-going              Emit explicitly incomplete documentation"
  print "  --reachable-only          Omit orphan source files"
  print "  --include-internal        Include @internal declarations"
  print "  --contract-warnings <s>   off, public, or all"
  print "  --summary-quality <s>     off, public, or all"
  print "  --revision <value>        Record an exact source revision"
  print "  --show-empty-graphs       Keep graph pages with no relations"
end function

/// Convert a SOURCE_DATE_EPOCH value into MiniDoc's stable UTC timestamp.
/// @param raw Decimal seconds since 1970-01-01T00:00:00Z.
/// The result is a UTC timestamp or an error for malformed/out-of-range input.
/// @internal
function _sourceDateEpochTimestamp(raw)
  if typeof(raw) != "string" or len(raw) == 0 then return error(1, "SOURCE_DATE_EPOCH must be a non-empty decimal integer") end if
  seconds = 0
  for i = 0 to len(raw) - 1
    encoded = bytes(raw[i])
    if len(encoded) != 1 or encoded[0] < 48 or encoded[0] > 57 then
      return error(1, "SOURCE_DATE_EPOCH must contain decimal digits only")
    end if
    digit = encoded[0] - 48
    if seconds > 25340230079 or (seconds == 25340230079 and digit > 9) then
      return error(1, "SOURCE_DATE_EPOCH is outside MiniDoc's supported calendar range")
    end if
    seconds = seconds * 10 + digit
  end for
  instant = time.datetime.fromUnixMillis(seconds * 1000)
  if typeof(instant) != "struct" then return error(1, "SOURCE_DATE_EPOCH is outside MiniDoc's supported calendar range") end if
  return time.datetimeToString(instant) + " UTC"
end function

/// Select deterministic UTC metadata when SOURCE_DATE_EPOCH is present.
/// @param cfg Effective configuration controlling timestamp emission.
/// The result is a rendered timestamp, an empty string, or a configuration error.
/// @internal
function _generationTimestamp(cfg)
  if cfg.include_generation_timestamp == false then return "" end if
  source_epoch = try(process.environment("SOURCE_DATE_EPOCH"))
  if typeof(source_epoch) == "error" then return source_epoch end if
  if typeof(source_epoch) == "string" then return _sourceDateEpochTimestamp(source_epoch) end if
  local_timestamp = time.datetimeToString(time.datetime.nowLocal())
  if typeof(local_timestamp) != "string" then return "Unknown local time" end if
  return local_timestamp + " local time"
end function

/// Performs the '_hasArg' step in MiniDoc's application workflow.
/// @internal
function _hasArg(args, value)
  if typeof(args) != "array" or len(args) == 0 then return false end if
  for i = 0 to len(args) - 1
    if args[i] == value then return true end if
  end for
  return false
end function

/// Performs the '_printDiagnostics' step in MiniDoc's application workflow.
/// @internal
function _printDiagnostics(project)
  if len(project.diagnostics) == 0 then return end if
  for i = 0 to len(project.diagnostics) - 1
    item = project.diagnostics[i]
    print item.file_path + ":" + item.line + ":" + item.column + ": " + item.severity + " " + item.code + ": " + item.message
  end for
end function

/// Performs the '_countSeverity' step in MiniDoc's application workflow.
/// @internal
function _countSeverity(project, severity)
  count = 0
  if len(project.diagnostics) == 0 then return count end if
  for i = 0 to len(project.diagnostics) - 1
    if project.diagnostics[i].severity == severity then count = count + 1 end if
  end for
  return count
end function

/// Loads, analyzes, measures, and deterministically orders a MiniLang project.
/// @param cfg Effective MiniDoc configuration.
/// @since 0.1.0
function generate(cfg)
  project = try(loader.loadProject(cfg))
  if typeof(project) == "error" then return project end if
  generated_at = try(_generationTimestamp(cfg))
  if typeof(generated_at) == "error" then return generated_at end if
  project.generator_version = VERSION
  project.generated_at = generated_at
  project.source_revision = cfg.source_revision
  if project.source_revision == "" then project.source_revision = util.gitRevision(project.root_dir) end if
  project = analyzer.analyze(project)
  project = ordering.apply(project)
  project.metrics = metrics.calculate(project)
  project = ordering.apply(project)
  return project
end function

/// Writes every configured output format for an analyzed project.
/// @param project Fully analyzed project model.
/// @since 0.1.0
function render(project)
  if project.config.check_only then return true end if
  if util.containsString(project.config.formats, "html") then
    result_html = try(html.render(project))
    if typeof(result_html) == "error" then return result_html end if
  end if
  if util.containsString(project.config.formats, "markdown") then
    result_markdown = try(markdown.render(project))
    if typeof(result_markdown) == "error" then return result_markdown end if
  end if
  return true
end function

/// Executes the command-line workflow and returns a process exit code.
/// @param args Command-line arguments supplied by the host process.
/// @since 0.1.0
function run(args)
  if _hasArg(args, "--version") or _hasArg(args, "-version") then printVersion() return 0 end if
  if _hasArg(args, "--help") or _hasArg(args, "-h") then printHelp() return 0 end if

  cfg = try(config.load(args))
  if typeof(cfg) == "error" then
    print "MiniDoc configuration error: " + cfg.message
    return 2
  end if
  project = try(generate(cfg))
  if typeof(project) == "error" then
    print "MiniDoc error: " + project.message
    return 2
  end if
  _printDiagnostics(project)
  errors = _countSeverity(project, "error")
  warnings = _countSeverity(project, "warning")
  if errors > 0 and cfg.keep_going == false then
    print "MiniDoc stopped: " + errors + " error(s), " + warnings + " warning(s)."
    return 2
  end if
  rendered = try(render(project))
  if typeof(rendered) == "error" then
    print "MiniDoc output error: " + rendered.message
    return 2
  end if
  print "MiniDoc: " + len(project.files) + " file(s), " + len(project.symbols) + " symbol(s), " + warnings + " warning(s)."
  if errors > 0 then return 2 end if
  if cfg.strict and warnings > 0 then return 1 end if
  return 0
end function
