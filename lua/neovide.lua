local N = {}
vim.g.neovide_fullscreen = true
vim.g.neovide_hide_mouse_when_typing = true

-- vim.o.guifont = 'JetBrainsMono Nerd Font Mono:h12'
-- vim.o.guifont = 'LythMono Nerd Font:h16:b'
-- vim.o.guifont = 'Agave Nerd Font Mono:h16'
-- vim.o.guifont = 'FiraCode Nerd Font:h16'
vim.o.guifont = 'Hack Nerd Font Mono:h10'

vim.api.nvim_set_keymap("n", "<C-=>", ":lua vim.g.neovide_scale_factor = math.min(vim.g.neovide_scale_factor + 0.1,  1.0)<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "<C-->", ":lua vim.g.neovide_scale_factor = math.max(vim.g.neovide_scale_factor - 0.1,  0.1)<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "<C-+>", ":lua vim.g.neovide_transparency = math.min(vim.g.neovide_transparency + 0.05, 1.0)<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "<C-_>", ":lua vim.g.neovide_transparency = math.max(vim.g.neovide_transparency - 0.05, 0.0)<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "<C-0>", ":lua vim.g.neovide_scale_factor = 0.5<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "<C-)>", ":lua vim.g.neovide_transparency = 0.9<CR>", { silent = true })

return N
