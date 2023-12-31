local status_ok, leap = pcall(require, "leap")
if not status_ok then
  vim.notify("leap no found")
  return
end

local opts = {
  max_phase_one_targets = nil,
  highlight_unlabeled_phase_one_targets = false,
  max_highlighted_traversal_targets = 10,
  case_sensitive = false,
  equivalence_classes = { ' \t\r\n', },
  substitute_chars = {},
  safe_labels = { "s", "f", "n", "u", "t", "/",
                  "S", "F", "N", "L", "H", "M", "U", "G", "T", "?", "Z" },
  labels = { "s", "f", "n",
             "j", "k", "l", "h", "o", "d", "w", "e", "m", "b",
             "u", "y", "v", "r", "g", "t", "c", "x", "/", "z",
             "S", "F", "N",
             "J", "K", "L", "H", "O", "D", "W", "E", "M", "B",
             "U", "Y", "V", "R", "G", "T", "C", "X", "?", "Z" },
  special_keys = {
    repeat_search = '<enter>',
    next_phase_one_target = '<enter>',
    next_target = { '<enter>', ';' },
    prev_target = { '<tab>', ',' },
    next_group = '<space>',
    prev_group = '<tab>',
    multi_accept = '<enter>',
    multi_revert = '<backspace>',
  },
}
for key, value in pairs(opts) do
  leap.opts[key] = value
end
leap.add_default_mappings()

vim.cmd([[
 autocmd ColorScheme * lua require('leap').init_highlight(true)
]])
