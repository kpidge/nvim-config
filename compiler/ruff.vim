if exists("current_compiler")
  finish
endif
let current_compiler = "ruff"

if exists(":CompilerSet") != 2		" older Vim always used :setlocal
  command -nargs=* CompilerSet setlocal <args>
endif

CompilerSet makeprg=ruff\ check\ -q
CompilerSet errorformat=%f:%l:%c:\ %t%n\ %m
