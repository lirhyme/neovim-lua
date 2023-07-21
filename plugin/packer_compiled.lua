-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/lirhyme/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/lirhyme/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/lirhyme/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/lirhyme/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/lirhyme/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    loaded = true,
    path = "/home/lirhyme/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "git@github.com:numToStr/Comment.nvim"
  },
  ["DAPInstall.nvim"] = {
    loaded = true,
    path = "/home/lirhyme/.local/share/nvim/site/pack/packer/start/DAPInstall.nvim",
    url = "git@github.com:ravenxrz/DAPInstall.nvim"
  },
  ["FixCursorHold.nvim"] = {
    loaded = true,
    path = "/home/lirhyme/.local/share/nvim/site/pack/packer/start/FixCursorHold.nvim",
    url = "git@github.com:antoinemadec/FixCursorHold.nvim"
  },
  ["HighStr.nvim"] = {
    loaded = true,
    path = "/home/lirhyme/.local/share/nvim/site/pack/packer/start/HighStr.nvim",
    url = "git@github.com:Pocco81/HighStr.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "/home/lirhyme/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "git@github.com:L3MON4D3/LuaSnip"
  },
  ["accelerated-jk"] = {
    loaded = true,
    path = "/home/lirhyme/.local/share/nvim/site/pack/packer/start/accelerated-jk",
    url = "git@github.com:rhysd/accelerated-jk"
  },
  ["aerial.nvim"] = {
    loaded = true,
    path = "/home/lirhyme/.local/share/nvim/site/pack/packer/start/aerial.nvim",
    url = "git@github.com:stevearc/aerial.nvim"
  },
  ["alpha-nvim"] = {
    loaded = true,
    path = "/home/lirhyme/.local/share/nvim/site/pack/packer/start/alpha-nvim",
    url = "git@github.com:goolord/alpha-nvim"
  },
  ["bufferline.nvim"] = {
    loaded = true,
    path = "/home/lirhyme/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "git@github.com:akinsho/bufferline.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/lirhyme/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "git@github.com:hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/home/lirhyme/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "git@github.com:hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/lirhyme/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "git@github.com:hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/home/lirhyme/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
    url = "git@github.com:hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/lirhyme/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "git@github.com:hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/lirhyme/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "git@github.com:saadparwaiz1/cmp_luasnip"
  },
  ["code_runner.nvim"] = {
    loaded = true,
    path = "/home/lirhyme/.local/share/nvim/site/pack/packer/start/code_runner.nvim",
    url = "git@github.com:CRAG666/code_runner.nvim"
  },
  ["diffview.nvim"] = {
    loaded = true,
    path = "/home/lirhyme/.local/share/nvim/site/pack/packer/start/diffview.nvim",
    url = "git@github.com:sindrets/diffview.nvim"
  },
  ["fidget.nvim"] = {
    loaded = true,
    path = "/home/lirhyme/.local/share/nvim/site/pack/packer/start/fidget.nvim",
    url = "git@github.com:j-hui/fidget.nvim"
  },
  ["formatter.nvim"] = {
    loaded = true,
    path = "/home/lirhyme/.local/share/nvim/site/pack/packer/start/formatter.nvim",
    url = "git@github.com:mhartington/formatter.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/lirhyme/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "git@github.com:rafamadriz/friendly-snippets"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/home/lirhyme/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "git@github.com:lewis6991/gitsigns.nvim"
  },
  ["impatient.nvim"] = {
    loaded = true,
    path = "/home/lirhyme/.local/share/nvim/site/pack/packer/start/impatient.nvim",
    url = "git@github.com:lewis6991/impatient.nvim"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "/home/lirhyme/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "git@github.com:lukas-reineke/indent-blankline.nvim"
  },
  ["leap.nvim"] = {
    loaded = true,
    path = "/home/lirhyme/.local/share/nvim/site/pack/packer/start/leap.nvim",
    url = "git@github.com:ggandor/leap.nvim"
  },
  ["litee-calltree.nvim"] = {
    loaded = true,
    path = "/home/lirhyme/.local/share/nvim/site/pack/packer/start/litee-calltree.nvim",
    url = "git@github.com:ldelossa/litee-calltree.nvim"
  },
  ["litee.nvim"] = {
    loaded = true,
    path = "/home/lirhyme/.local/share/nvim/site/pack/packer/start/litee.nvim",
    url = "git@github.com:ldelossa/litee.nvim"
  },
  ["lsp_signature.nvim"] = {
    loaded = true,
    path = "/home/lirhyme/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim",
    url = "git@github.com:ray-x/lsp_signature.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/home/lirhyme/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "git@github.com:nvim-lualine/lualine.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/home/lirhyme/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "git@github.com:williamboman/mason-lspconfig.nvim"
  },
  ["mason-null-ls.nvim"] = {
    loaded = true,
    path = "/home/lirhyme/.local/share/nvim/site/pack/packer/start/mason-null-ls.nvim",
    url = "git@github.com:jayp0521/mason-null-ls.nvim"
  },
  ["mason-nvim-dap.nvim"] = {
    loaded = true,
    path = "/home/lirhyme/.local/share/nvim/site/pack/packer/start/mason-nvim-dap.nvim",
    url = "git@github.com:jayp0521/mason-nvim-dap.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/home/lirhyme/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "git@github.com:williamboman/mason.nvim"
  },
  ["neodev.nvim"] = {
    loaded = true,
    path = "/home/lirhyme/.local/share/nvim/site/pack/packer/start/neodev.nvim",
    url = "git@github.com:folke/neodev.nvim"
  },
  neotest = {
    loaded = true,
    path = "/home/lirhyme/.local/share/nvim/site/pack/packer/start/neotest",
    url = "git@github.com:nvim-neotest/neotest"
  },
  ["neotest-plenary"] = {
    loaded = true,
    path = "/home/lirhyme/.local/share/nvim/site/pack/packer/start/neotest-plenary",
    url = "git@github.com:nvim-neotest/neotest-plenary"
  },
  ["neotest-python"] = {
    loaded = true,
    path = "/home/lirhyme/.local/share/nvim/site/pack/packer/start/neotest-python",
    url = "git@github.com:nvim-neotest/neotest-python"
  },
  ["neotest-vim-test"] = {
    loaded = true,
    path = "/home/lirhyme/.local/share/nvim/site/pack/packer/start/neotest-vim-test",
    url = "git@github.com:nvim-neotest/neotest-vim-test"
  },
  ["null-ls.nvim"] = {
    loaded = true,
    path = "/home/lirhyme/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
    url = "git@github.com:jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-autopairs"] = {
    loaded = true,
    path = "/home/lirhyme/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "git@github.com:windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/lirhyme/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "git@github.com:hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    loaded = true,
    path = "/home/lirhyme/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua",
    url = "git@github.com:norcalli/nvim-colorizer.lua"
  },
  ["nvim-dap"] = {
    loaded = true,
    path = "/home/lirhyme/.local/share/nvim/site/pack/packer/start/nvim-dap",
    url = "git@github.com:mfussenegger/nvim-dap"
  },
  ["nvim-dap-python"] = {
    loaded = true,
    path = "/home/lirhyme/.local/share/nvim/site/pack/packer/start/nvim-dap-python",
    url = "git@github.com:mfussenegger/nvim-dap-python"
  },
  ["nvim-dap-ui"] = {
    loaded = true,
    path = "/home/lirhyme/.local/share/nvim/site/pack/packer/start/nvim-dap-ui",
    url = "git@github.com:rcarriga/nvim-dap-ui"
  },
  ["nvim-dap-virtual-text"] = {
    loaded = true,
    path = "/home/lirhyme/.local/share/nvim/site/pack/packer/start/nvim-dap-virtual-text",
    url = "git@github.com:theHamsta/nvim-dap-virtual-text"
  },
  ["nvim-jdtls"] = {
    loaded = true,
    path = "/home/lirhyme/.local/share/nvim/site/pack/packer/start/nvim-jdtls",
    url = "git@github.com:mfussenegger/nvim-jdtls"
  },
  ["nvim-lastplace"] = {
    loaded = true,
    path = "/home/lirhyme/.local/share/nvim/site/pack/packer/start/nvim-lastplace",
    url = "git@github.com:ethanholz/nvim-lastplace"
  },
  ["nvim-lightbulb"] = {
    loaded = true,
    path = "/home/lirhyme/.local/share/nvim/site/pack/packer/start/nvim-lightbulb",
    url = "git@github.com:kosayoda/nvim-lightbulb"
  },
  ["nvim-lint"] = {
    loaded = true,
    path = "/home/lirhyme/.local/share/nvim/site/pack/packer/start/nvim-lint",
    url = "git@github.com:mfussenegger/nvim-lint"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/lirhyme/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "git@github.com:neovim/nvim-lspconfig"
  },
  ["nvim-spectre"] = {
    loaded = true,
    path = "/home/lirhyme/.local/share/nvim/site/pack/packer/start/nvim-spectre",
    url = "git@github.com:nvim-pack/nvim-spectre"
  },
  ["nvim-surround"] = {
    loaded = true,
    path = "/home/lirhyme/.local/share/nvim/site/pack/packer/start/nvim-surround",
    url = "git@github.com:kylechui/nvim-surround"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/lirhyme/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "git@github.com:nvim-tree/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/lirhyme/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "git@github.com:nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-textobjects"] = {
    loaded = true,
    path = "/home/lirhyme/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textobjects",
    url = "git@github.com:nvim-treesitter/nvim-treesitter-textobjects"
  },
  ["nvim-ts-context-commentstring"] = {
    loaded = true,
    path = "/home/lirhyme/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring",
    url = "git@github.com:JoosepAlviste/nvim-ts-context-commentstring"
  },
  ["nvim-ts-rainbow"] = {
    loaded = true,
    path = "/home/lirhyme/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow",
    url = "git@github.com:p00f/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/lirhyme/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "git@github.com:nvim-tree/nvim-web-devicons"
  },
  ["one-small-step-for-vimkind"] = {
    loaded = true,
    path = "/home/lirhyme/.local/share/nvim/site/pack/packer/start/one-small-step-for-vimkind",
    url = "git@github.com:jbyuki/one-small-step-for-vimkind"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/lirhyme/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "git@github.com:wbthomason/packer.nvim"
  },
  ["pantran.nvim"] = {
    loaded = true,
    path = "/home/lirhyme/.local/share/nvim/site/pack/packer/start/pantran.nvim",
    url = "git@github.com:potamides/pantran.nvim"
  },
  playground = {
    loaded = true,
    path = "/home/lirhyme/.local/share/nvim/site/pack/packer/start/playground",
    url = "git@github.com:nvim-treesitter/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/lirhyme/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "git@github.com:nvim-lua/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/lirhyme/.local/share/nvim/site/pack/packer/start/popup.nvim",
    url = "git@github.com:nvim-lua/popup.nvim"
  },
  ["project.nvim"] = {
    loaded = true,
    path = "/home/lirhyme/.local/share/nvim/site/pack/packer/start/project.nvim",
    url = "git@github.com:ahmedkhalf/project.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/home/lirhyme/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim",
    url = "git@github.com:nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope-media-files.nvim"] = {
    loaded = true,
    path = "/home/lirhyme/.local/share/nvim/site/pack/packer/start/telescope-media-files.nvim",
    url = "git@github.com:nvim-telescope/telescope-media-files.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/lirhyme/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "git@github.com:nvim-telescope/telescope.nvim"
  },
  ["todo-comments.nvim"] = {
    loaded = true,
    path = "/home/lirhyme/.local/share/nvim/site/pack/packer/start/todo-comments.nvim",
    url = "git@github.com:folke/todo-comments.nvim"
  },
  ["toggleterm.nvim"] = {
    loaded = true,
    path = "/home/lirhyme/.local/share/nvim/site/pack/packer/start/toggleterm.nvim",
    url = "git@github.com:akinsho/toggleterm.nvim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "/home/lirhyme/.local/share/nvim/site/pack/packer/start/tokyonight.nvim",
    url = "git@github.com:folke/tokyonight.nvim"
  },
  ["trouble.nvim"] = {
    loaded = true,
    path = "/home/lirhyme/.local/share/nvim/site/pack/packer/start/trouble.nvim",
    url = "git@github.com:folke/trouble.nvim"
  },
  ["vim-autoread"] = {
    loaded = true,
    path = "/home/lirhyme/.local/share/nvim/site/pack/packer/start/vim-autoread",
    url = "git@github.com:djoshea/vim-autoread"
  },
  ["vim-bbye"] = {
    loaded = true,
    path = "/home/lirhyme/.local/share/nvim/site/pack/packer/start/vim-bbye",
    url = "git@github.com:moll/vim-bbye"
  },
  ["vim-log-highlighting"] = {
    loaded = true,
    path = "/home/lirhyme/.local/share/nvim/site/pack/packer/start/vim-log-highlighting",
    url = "git@github.com:mtdl9/vim-log-highlighting"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/home/lirhyme/.local/share/nvim/site/pack/packer/start/vim-repeat",
    url = "git@github.com:tpope/vim-repeat"
  },
  ["vim-test"] = {
    loaded = true,
    path = "/home/lirhyme/.local/share/nvim/site/pack/packer/start/vim-test",
    url = "git@github.com:vim-test/vim-test"
  },
  ["which-key.nvim"] = {
    loaded = true,
    path = "/home/lirhyme/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "git@github.com:folke/which-key.nvim"
  },
  ["winshift.nvim"] = {
    loaded = true,
    path = "/home/lirhyme/.local/share/nvim/site/pack/packer/start/winshift.nvim",
    url = "git@github.com:sindrets/winshift.nvim"
  }
}

time([[Defining packer_plugins]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
