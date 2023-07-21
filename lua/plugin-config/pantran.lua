local status_ok,pantran = pcall(require,"pantran")
if not status_ok then
  vim.notify("pantran no found")
  return
end

local opts = {noremap = true, silent = true, expr = true}
vim.keymap.set("n", "<leader>tr", pantran.motion_translate, opts)
vim.keymap.set("n", "<leader>trr", function() return pantran.motion_translate() .. "_" end, opts)
vim.keymap.set("x", "<leader>tr", pantran.motion_translate, opts)

pantran.setup{
  -- Default engine to use for translation. To list valid engine names run
  -- `:lua =vim.tbl_keys(require("pantran.engines"))`.
  default_engine = "argos",
  -- Configuration for individual engines goes here.
  engines = {
    yandex = {
      -- Default languages can be defined on a per engine basis. In this case
      -- `:lua require("pantran.async").run(function()
      -- vim.pretty_print(require("pantran.engines").yandex:languages()) end)`
      -- can be used to list available language identifiers.
      default_source = "auto",
      default_target = "zh",
    },
    argos = {
      default_source = "auto",
      default_target = "en",
      url = "https://translate.argosopentech.com",
      api_key = vim.NIL,
    }
  },
  controls = {
    mappings = {
      edit = {
        n = {
          -- Use this table to add additional mappings for the normal mode in
          -- the translation window. Either strings or function references are
          -- supported.
          ["j"] = "gj",
          ["k"] = "gk"
        },
        i = {
          -- Similar table but for insert mode. Using 'false' disables
          -- existing keybindings.
          ["<C-y>"] = false,
          ["<C-a>"] = require("pantran.ui.actions").yank_close_translation
        }
      },
      -- Keybindings here are used in the selection window.
      select = {
        n = {
        }
      }
    }
  }
}
