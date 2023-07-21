require("mason").setup({
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗"
    }
  }
})

require("mason-lspconfig").setup({
  ensure_installed = {},
  automatic_installation = false,
})

-- require("mason-null-ls").setup({
--   ensure_installed = {},
--   automatic_installation = false,
--   automatic_setup = false,
-- })
--
-- require("mason-nvim-dap").setup({
--   ensure_installed = {},
--   automatic_installation = false,
--   automatic_setup = false,
-- })
