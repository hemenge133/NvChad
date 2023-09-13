local autocmd = vim.api.nvim_create_autocmd
autocmd("BufReadPost", {
  pattern =  '*',
  command = 'silent! normal! g`"zv',
})
autocmd("VimEnter", {
  pattern = "*",
  command = 'silent! colorscheme lushwal',
})
vim.opt["termguicolors"] = true

-- Python provider stuff
vim.g["loaded_python3_provider"] = nil
vim.g["leetcode_solution_filetype"] = 'python3'
vim.g["python3_host_prog"] = '/usr/bin/python3'
vim.g["leetcode_browser"] = 'firefox'

vim.opt["clipboard"] = nil
vim.cmd [[set so=999]]
-- vim.api.nvim_set_keymap('n', '<Leader>p', [[<Cmd>NeoRootSwitchMode<CR>]], { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<Leader>pre', [[<Cmd>NeoRootChange<CR>]], { noremap = true, silent = true })
