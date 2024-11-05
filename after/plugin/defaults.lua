vim.opt.relativenumber = true

-- Telescope
vim.keymap.set('n', '<leader>sb', require('telescope.builtin').buffers, { desc = '[S]earch [B]uffers' })
vim.keymap.set('n', '<leader>sk', require('telescope.builtin').keymaps, { desc = '[S]earch [K]eymaps' })

vim.keymap.set('n', '<leader>l', require('lazy').sync, { desc = '[L]azy' })
vim.opt.foldnestmax = 3
vim.opt.foldmethod = 'indent'

vim.api.nvim_create_autocmd("BufWritePost", {
    pattern = "*.tex",
    command = "silent !make"
})

