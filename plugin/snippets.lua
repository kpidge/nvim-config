local ls = require("luasnip")
-- some shorthands...
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node
local l = require("luasnip.extras").lambda
local rep = require("luasnip.extras").rep
local p = require("luasnip.extras").partial
local m = require("luasnip.extras").match
local n = require("luasnip.extras").nonempty
local dl = require("luasnip.extras").dynamic_lambda
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local types = require("luasnip.util.types")
local conds = require("luasnip.extras.conditions")
local conds_expand = require("luasnip.extras.conditions.expand")

local function do_something(args)
	local arguments = args[1][1]
	local _args = arguments:gmatch('%s*([%w_]+)')
	local params = ""
	for w in _args do
		params = params .. ":param " .. w .. ":\n"
	end
	return sn(nil, i(1, "Hello"))
end

ls.add_snippets("all", {
	-- trigger is `fn`, second argument to snippet-constructor are the nodes to insert into the buffer on expansion.
	s("dfd", {
		t("# Params: "),
		f(do_something, 2),
		t({"", "def "}),
		i(1, "funcname"),
		t("("),
		i(2, "some arg"),
		t({"):", "\t\"\"\""}),
		t({"", "\t\"\"\""}),
		t({"", "\t"}),
		i(0, "pass")
	}),
	s("fn", {
		t({ "", "def " }),
		i(1, "funcname"),
		t("("),
		i(2, "arguments"),
		t({ "):", "\t" }),
		t({ "\"\"\"", "\t" }),
		f(do_something, 2),
		t({ "", "\t" }),
		t({ "\"\"\"", "\t" }),
		i(0, "pass"),
	})
})
