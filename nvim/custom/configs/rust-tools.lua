local rt = require "rust-tools"

rt.setup {
  capabilities = require("cmp_nvim_lsp").default_capabilities(),
  on_attach = function(_, buffer)
    vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { desc = "Rust hover actions", buffer })
    vim.keymap.set(
      "n",
      "<Leader>a",
      rt.code_action_group.code_action_group,
      { desc = "Rust code actions", buffer }
    )
  end,
}
