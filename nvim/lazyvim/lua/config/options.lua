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

function SetColorScheme()
  local config_path = vim.fn.expand("~/Share/system_settings/settings.toml")

  if type(config_path) == "string" then
    local file = io.open(config_path, "r")

    if file ~= nil then
      local config_data = file:read("*all")
      file:close()

      local is_dark_mode = string.match(config_data, "is_dark_mode%s*=%s*(%a+)")

      if is_dark_mode:lower() == "true" then
        vim.o.background = "dark"
      else
        vim.o.background = "light"
      end
    end
  end
end

SetColorScheme()

-- options
vim.opt.wrap = true
