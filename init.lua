require("options")
-- 快捷键映射
require("keymaps")
---- Packer插件管理
require("plugins")
-- 主题设置
require("colorscheme")
-- 自动命令
require("autocmds")



require("lsp.mason")
require("lsp.setup")
require("lsp.nvim-cmp")

require("dap.setup")


require("plugin-config.neodev")
require("plugin-config.neotest")
require("plugin-config.aerial")
-- require("plugin-config.auto-save")
require("plugin-config.bufferline")
require("plugin-config.code-runner")
require("plugin-config.comment")
require("plugin-config.alpha")
require("plugin-config.fidget")
require("plugin-config.gitsigns")
-- require("plugin-config.indent-blankline")
require("plugin-config.lualine")
-- require("plugin-config.session-manager")
require("plugin-config.autopairs")
require("plugin-config.nvim-tree")
require("plugin-config.treesitter")
require("plugin-config.project")
require("plugin-config.surround")
require("plugin-config.telescope")
require("plugin-config.toggleterm")
require("plugin-config.which-key")


