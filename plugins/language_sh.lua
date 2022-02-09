-- mod-version:2 -- lite-xl 2.0
local syntax = require "core.syntax"

syntax.add {
  name = "Shell script",
  files = { "%.sh$" },
  headers = "^#!.*bin.*sh\n",
  comment = "#",
  patterns = {
    -- $# is a bash special variable and the '#' shouldn't be interpreted
    -- as a comment.
    { pattern = "$[%a_@*#][%w_]*",        type = "keyword2" },
    { pattern = "${.-}",                  type = "keyword2" },
    { pattern = "#.*\n",                  type = "comment"  },
    { pattern = [[\.]],                   type = "normal"   },
    { pattern = { '"', '"', '\\' },       type = "string"   },
    { pattern = { "'", "'", '\\' },       type = "string"   },
    { pattern = { '`', '`', '\\' },       type = "string"   },
    { pattern = "%f[%w_][%d%.]+%f[^%w_]", type = "number"   },
    { pattern = "[!<>|&%[%]=*]",          type = "operator" },
    { pattern = "%f[%S]%-[%w%-_]+",       type = "function" },
    { pattern = "[%a_][%w_]*",            type = "symbol"   },
  },
  symbols = {
    ["case"]      = "keyword",
    ["in"]        = "keyword",
    ["esac"]      = "keyword",
    ["if"]        = "keyword",
    ["then"]      = "keyword",
    ["elif"]      = "keyword",
    ["else"]      = "keyword",
    ["fi"]        = "keyword",
    ["while"]     = "keyword",
    ["do"]        = "keyword",
    ["done"]      = "keyword",
    ["for"]       = "keyword",
    ["break"]     = "keyword",
    ["continue"]  = "keyword",
    ["function"]  = "keyword",
    ["local"]     = "keyword",
    ["echo"]      = "keyword",
    ["return"]    = "keyword",
    ["exit"]      = "keyword",
    ["alias"]     = "keyword",
    ["test"]      = "keyword",
    ["cd"]        = "keyword",
    ["declare"]   = "keyword",
    ["enable"]    = "keyword",
    ["eval"]      = "keyword",
    ["exec"]      = "keyword",
    ["export"]    = "keyword",
    ["getopts"]   = "keyword",
    ["hash"]      = "keyword",
    ["history"]   = "keyword",
    ["help"]      = "keyword",
    ["jobs"]      = "keyword",
    ["kill"]      = "keyword",
    ["let"]       = "keyword",
    ["mapfile"]   = "keyword",
    ["printf"]    = "keyword",
    ["read"]      = "keyword",
    ["readarray"] = "keyword",
    ["pwd"]       = "keyword",
    ["select"]    = "keyword",
    ["set"]       = "keyword",
    ["shift"]     = "keyword",
    ["source"]    = "keyword",
    ["time"]      = "keyword",
    ["type"]      = "keyword",
    ["until"]     = "keyword",
    ["unalias"]   = "keyword",
    ["unset"]     = "keyword",
    ["true"]      = "literal",
    ["false"]     = "literal",
    [":"]         = "literal"
  }
}

