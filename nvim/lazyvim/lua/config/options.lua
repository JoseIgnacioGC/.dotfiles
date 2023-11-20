-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- globals
for _, provider in ipairs({ "node", "perl", "python3", "ruby" }) do
  vim.g["loaded_" .. provider .. "_provider"] = 0
end

function ToggleColorScheme()
  if vim.o.background == "dark" then
    vim.o.background = "light"
  else
    vim.o.background = "dark"
  end
end

-- TODO: export this to autocmd.lua file
-- set color scheme at startup
local COMMAND_IS_DARK =
  "powershell.exe -noprofile -nologo -noninteractive '$a = Get-ItemProperty -Path HKCU:\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Themes\\Personalize; $a.AppsUseLightTheme'"
vim.fn.jobstart(COMMAND_IS_DARK, {
  on_exit = function(_, is_dark, _)
    print("is_dark: " .. is_dark)
    if is_dark == 0 then
      vim.o.background = "dark"
    else
      vim.o.background = "light"
    end
  end,
})

-- options
vim.opt.wrap = true
