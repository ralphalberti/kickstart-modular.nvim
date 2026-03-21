local ls = require 'luasnip'

local s = ls.snippet
local i = ls.insert_node
local c = ls.choice_node
local t = ls.text_node

return {
  s('testfn', {
    t 'def ',
    i(1, 'function_name'),
    t '(',
    i(2, 'args'),
    t { '):', '    ' },
    c(3, {
      t '"""Docstring."""',
      t '# no docstring',
    }),
    t { '', '    ' },
    i(0, 'pass'),
  }),

  -- switch between: render view and JSON response
  s('djviewfn', {
    t 'def ',
    i(1, 'view_name'),
    t '(request):',
    t { '', '    ' },
    c(2, {
      t 'return render(request, "app/template.html")',
      t 'return JsonResponse({})',
    }),
    t { '', '' },
  }),
}
