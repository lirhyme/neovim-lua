-- 保存时自动格式化
vim.cmd([[
augroup _auto_format
  autocmd!
  autocmd BufWritePre * :lua vim.lsp.buf.format()
augroup end
]])

vim.cmd([[
augroup _auto_save
  autocmd!
  autocmd InsertLeave * :w
augroup end
]])

vim.cmd([[
augroup _fold_bug_solution 
  autocmd!
  autocmd BufRead * autocmd BufWinEnter * ++once normal! zx
augroup end
]])

vim.cmd([[
 augroup _source_myvimrc
   autocmd!
   autocmd BufWritePost init.lua source $MYVIMRC 
 augroup end
]])
