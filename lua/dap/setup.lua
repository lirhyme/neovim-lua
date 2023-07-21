local dap_install = require("dap-install")
dap_install.setup({
  installation_path = vim.fn.stdpath("data") .. "/dapinstall/",
})

local dap = require("dap")
local dapui = require("dapui")

require("nvim-dap-virtual-text").setup({
  commented = true,
})

vim.fn.sign_define("DapBreakpoint", {
  text = "🛑",
  texthl = "LspDiagnosticsSignError",
  linehl = "",
  numhl = "",
})

vim.fn.sign_define("DapStopped", {
  text = "",
  texthl = "LspDiagnosticsSignInformation",
  linehl = "DiagnosticUnderlineInfo",
  numhl = "LspDiagnosticsSignInformation",
})

vim.fn.sign_define("DapBreakpointRejected", {
  text = "",
  texthl = "LspDiagnosticsSignHint",
  linehl = "",
  numhl = "",
})

dapui.setup({
  icons = { expanded = "", collapsed = "", current_frame = "" },
  mappings = {
    -- Use a table to apply multiple mappings
    expand = { "o", "<CR>", "<2-LeftMouse>" },
    open = "o",
    remove = "d",
    edit = "e",
    repl = "r",
    toggle = "t",
  },

  layouts = {
    {
      -- You can change the order of elements in the sidebar
      elements = {
        -- Provide as ID strings or tables with "id" and "size" keys
        { id = "scopes", size = 0.25, }, -- Can be float or integer > 1
        { id = "breakpoints", size = 0.25 },
        { id = "stacks", size = 0.25 },
        { id = "watches", size = 00.25 },
      },
      size = 40,
      position = "left", -- Can be "left", "right", "top", "bottom"
    },
    {
      elements = { "repl", "console" },
      size = 0.25,
      position = "bottom", -- Can be "left", "right", "top", "bottom"
    },
  },
  controls = {
    -- Requires Neovim nightly (or 0.8 when released)
    enabled = true,
    -- Display controls in this element
    element = "repl",
    icons = {
      pause = "",
      play = "",
      step_into = "",
      step_over = "",
      step_out = "",
      step_back = "",
      run_last = "",
      terminate = "",
    },
  },
  floating = {
    max_height = nil, -- These can be integers or a float between 0 and 1.
    max_width = nil, -- Floats will be treated as percentage of your screen.
    border = "single", -- Border style. Can be "single", "double" or "rounded"
    mappings = {
      close = { "q", "<Esc>" },
    },
  },
  windows = { indent = 1 },
  render = {
    max_type_length = nil, -- Can be integer or nil.
    max_values_lines = 100,
  },
}) -- use default

dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.disconnect["dapui_config"] = function()
  dapui.close()
end

vim.api.nvim_set_keymap('n', '<F8>', [[:lua require"dap".toggle_breakpoint()<CR>]], { noremap = true })
vim.api.nvim_set_keymap('n', '<F9>', [[:lua require"dap".continue()<CR>]], { noremap = true })
vim.api.nvim_set_keymap('n', '<F10>', [[:lua require"dap".step_over()<CR>]], { noremap = true })
vim.api.nvim_set_keymap('n', '<S-F10>', [[:lua require"dap".step_into()<CR>]], { noremap = true })
vim.api.nvim_set_keymap('n', '<F12>', [[:lua require"dap.ui.widgets".hover()<CR>]], { noremap = true })
vim.api.nvim_set_keymap('n', '<F5>', [[:lua require"osv".launch({port = 8086})<CR>]], { noremap = true })

local names = {
  'lua',
  'python'
}
for _, name in ipairs(names) do
  require("dap.settings." .. name).setup(dap)
end
