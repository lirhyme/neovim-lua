local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

vim.diagnostic.config({
  -- disable virtual text
  virtual_text = true, -- show signs
  signs = {
    active = signs,
  },
  update_in_insert = true,
  underline = true,
  severity_sort = true,
  float = {
    focusable = false,
    style = "minimal",
    border = "rounded",
    source = "always",
    header = "",
    prefix = "",
  },
})

vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
  border = "single",
  title = "hover"
})

vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
  border = "rounded",
})
-- Mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
local opts = { noremap = true, silent = true }
vim.keymap.set("n", "<space>e", vim.diagnostic.open_float, opts)
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)
vim.keymap.set("n", "<space>q", vim.diagnostic.setloclist, opts)

local lspconfig = require('lspconfig')
local handlers = require('lsp.handlers')


-- require("lsp.settings.sumneko_lua")

local servers = {
  'lua_ls', -- Lua
  'pyright', -- Python
  'tsserver', -- Typescript
  'clangd', -- c/c++
  'jdtls', -- Java
}

for _, server in ipairs(servers) do
  local status_ok = pcall(require, "lsp.settings." .. server)
  if not status_ok then
    lspconfig[server].setup {
      on_attach = handlers.on_attach,
      flags = handlers.lsp_flags,
      capabilities = handlers.capabilities,
    }
  else
    lspconfig[server].setup {
      on_attach = handlers.on_attach,
      flags = handlers.lsp_flags,
      capabilities = handlers.capabilities,
      settings = require("lsp.settings." .. server).settings;
    }
  end
end
