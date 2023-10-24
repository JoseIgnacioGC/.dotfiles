local null_ls = require "null-ls"

local b = null_ls.builtins

-- available builtins
-- https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md
local sources = {
  -- webdev stuff
  b.formatting.prettier,

  -- other
  b.formatting.beautysh,
  b.formatting.stylua,
  b.formatting.clang_format,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
