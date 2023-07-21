-- ~/.local/share/nvim/site/pack/packer/
local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
local packer_bootstrap
if fn.empty(fn.glob(install_path)) > 0 then
  vim.notify("正在安装Pakcer.nvim，请稍后...")
  packer_bootstrap = fn.system({
    "git", "clone", "--depth", "1",
    "git@github.com:wbthomason/packer.nvim",
    install_path,
  })

  -- https://github.com/wbthomason/packer.nvim/issues/750
  local rtp_addition = vim.fn.stdpath("data") .. "/site/pack/*/start/*"
  if not string.find(vim.o.runtimepath, rtp_addition) then
    vim.o.runtimepath = rtp_addition .. "," .. vim.o.runtimepath
  end
  vim.notify("Pakcer.nvim 安装完毕")
end

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  vim.notify("没有安装 packer.nvim")
  return
end

packer.startup({
  function(use)
    use("wbthomason/packer.nvim") -- Packer 可以升级自己
    use("lewis6991/impatient.nvim") --  Speed up loading Lua modules in Neovim to improve startup time. 加速插件加载
    --------------------- colorschemes --------------------
    -- tokyonight
    use("folke/tokyonight.nvim")
    -- some dependence
    use("nvim-lua/popup.nvim") -- An implementation of the Popup API from vim in Neovim.
    use("nvim-lua/plenary.nvim") -- Useful lua function used by lots of plugins
    use("nvim-tree/nvim-web-devicons") -- icon
    --- navigation
    use("nvim-tree/nvim-tree.lua") -- 目录
    use("akinsho/bufferline.nvim") -- 标签页
    use("nvim-lualine/lualine.nvim") -- 状态栏
    -- enhance
    use("Pocco81/HighStr.nvim") -- highlight string
    -- use("Pocco81/auto-save.nvim") -- 自动保存
    -- use("Shatur/neovim-session-manager") -- 工作空间
    use("akinsho/toggleterm.nvim") -- 终端
    use("djoshea/vim-autoread") -- 保存时实时刷新
    use("ethanholz/nvim-lastplace") -- A Lua rewrite of vim-lastplace
    use("folke/todo-comments.nvim") -- todo-comments
    use("folke/trouble.nvim") -- trouble
    use("folke/which-key.nvim") -- which  key 快捷键
    use("ggandor/leap.nvim") -- 移动插件
    use("goolord/alpha-nvim") -- welcome page
    use("j-hui/fidget.nvim") -- show lsp progress
    use("ldelossa/litee-calltree.nvim") --
    use("ldelossa/litee.nvim") -- litee
    use("lukas-reineke/indent-blankline.nvim") -- indent blankline 缩进空白显示
    use("numToStr/Comment.nvim") -- 注释
    use("JoosepAlviste/nvim-ts-context-commentstring") -- comment enhance
    use("sindrets/winshift.nvim") -- rerange window layout
    use("stevearc/aerial.nvim") -- 文件大纲图
    use("kylechui/nvim-surround") -- 环绕修饰
    use("windwp/nvim-autopairs") -- 自动括号
    use("folke/neodev.nvim") -- 代码提示内容加强
    use("tpope/vim-repeat")
    use("moll/vim-bbye") -- buffer
    use("rhysd/accelerated-jk") -- speed
    use("norcalli/nvim-colorizer.lua") -- show color
    use("mtdl9/vim-log-highlighting") -- highlight log
    use("nvim-pack/nvim-spectre") -- search ans replace
    -- -- code runner
    use("nvim-neotest/neotest") -- dap support
    use("CRAG666/code_runner.nvim") -- best code runner
    use("nvim-neotest/neotest-python")
    use("nvim-neotest/neotest-plenary")
    use("vim-test/vim-test")
    use("nvim-neotest/neotest-vim-test")

    -- transalte
    use { "potamides/pantran.nvim" }
    -- git
    use({ "lewis6991/gitsigns.nvim" })
    use("sindrets/diffview.nvim") -- diff
    -- telescope 搜索
    use("nvim-telescope/telescope.nvim") -- find_files
    -- telescope extension
    use("nvim-telescope/telescope-media-files.nvim") -- media
    use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" }) -- sorter
    use("ahmedkhalf/project.nvim") -- project

    --  -- treesitter 语法高亮
    use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
    -- extra modules by treesitter
    use("p00f/nvim-ts-rainbow") --Rainbow parentheses powered by tree-sitter
    use("nvim-treesitter/playground") --View treesitter information directly in Neovim
    use("nvim-treesitter/nvim-treesitter-textobjects") -- Textobjects defined by tree-sitter queries

    -- lsp功能:
    -- code action(快速修复和重构)
    -- diagnostic(代码诊断)
    -- formatting(代码格式化)
    -- completion(代码补全)
    -- 悬浮提示 定义跳转 实现跳转 引用查找 标识符查找
    --  --------------------- lsp --------------------
    use("neovim/nvim-lspconfig") -- config for the nvim  lsp client
    use("williamboman/mason.nvim") -- lsp installer
    use("williamboman/mason-lspconfig.nvim") --
    use("jayp0521/mason-null-ls.nvim")
    use("jayp0521/mason-nvim-dap.nvim")

    --  lint and formatter
    use("mhartington/formatter.nvim") -- focus on formatter
    use("mfussenegger/nvim-lint") -- focus on lint
    use("jose-elias-alvarez/null-ls.nvim") -- formatter lint eg.
    -- code action
    use("kosayoda/nvim-lightbulb") -- code action
    use("antoinemadec/FixCursorHold.nvim") -- code action recommended
    use("ray-x/lsp_signature.nvim") -- Show function signature when you type
    -- java
    use 'mfussenegger/nvim-jdtls'
    --------------------cmp ---------------------
    -- 补全引擎
    use("hrsh7th/nvim-cmp") -- Autocompletion plugin
    -- list of sources
    use("hrsh7th/cmp-nvim-lsp") -- lsp
    use("hrsh7th/cmp-buffer") -- buffer for nvim-cmp
    use("hrsh7th/cmp-path") -- path for nvim-cmp
    use("hrsh7th/cmp-cmdline") -- cmdlien for nvim-cmp
    use("hrsh7th/cmp-nvim-lua") -- lua API
    -- snippets
    use("L3MON4D3/LuaSnip") --snippet engine
    use("saadparwaiz1/cmp_luasnip") -- LuaSnip require
    use("rafamadriz/friendly-snippets") -- LuaSnip require

    -- -----------------dap----------------------------
    use("mfussenegger/nvim-dap")
    use("ravenxrz/DAPInstall.nvim")
    use("rcarriga/nvim-dap-ui")
    use("theHamsta/nvim-dap-virtual-text")
    use("mfussenegger/nvim-dap-python")
    -- dap adapter
    use("jbyuki/one-small-step-for-vimkind")

    use({
      "iamcco/markdown-preview.nvim",
      run = "cd app && npm install",
      setup = function()
        vim.g.mkdp_filetypes = { "markdown" }
      end,
      ft = { "markdown" },
      disable = true,
    })
    if packer_bootstrap then
      packer.sync()
    end
  end,
  config = {
    -- 锁定插件版本在snapshots目录
    snapshot_path = require("packer.util").join_paths(vim.fn.stdpath("config"), "snapshots"),
    -- 这里锁定插件版本在v1，不会继续更新插件
    -- snapshot = "v1",

    -- 最大并发数
    -- max_jobs = 16,
    -- 自定义源
    git = {
      default_url_format = "git@github.com:%s",
      -- default_url_format = "https://hub.fastgit.xyz/%s",
      -- default_url_format = "https://mirror.ghproxy.com/https://github.com/%s",
      -- default_url_format = "https://gitcode.net/mirrors/%s",
      -- default_url_format = "https://gitclone.com/github.com/%s",
    },
    display = {
      -- 使用浮动窗口显示
      open_fn = function()
        return require("packer.util").float({ border = "single" })
      end,
    },
  },
})

vim.cmd([[
     augroup packer_user_config
       autocmd!
       autocmd BufWritePost plugins.lua source <afile> | PackerSync
     augroup end
   ]])
-- )
