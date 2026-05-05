vim.g.mapleader = " "
vim.g.maplocalleader = " "

local remap = function(keys, action, desc, mode)
	vim.keymap.set(mode, keys, action, { desc = desc })
end

local nremap = function(keys, action, desc) remap(keys, action, desc, 'n') end

local vremap = function(keys, action, desc) remap(keys, action, desc, 'v') end

nremap("<C-d>", "<C-d>zz", "Scroll down and center")
nremap("<C-u>", "<C-u>zz", "Scroll up and center")

vremap("J", ":m '>+1<CR>gv=gv")
vremap("K", ":m '<-2<CR>gv=gv")

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
nremap('<Esc>', '<cmd>nohlsearch<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--  See `:help wincmd` for a list of all window commands
nremap('<C-h>', '<C-w><C-h>', 'Move focus to the left window')
nremap('<C-l>', '<C-w><C-l>', 'Move focus to the right window')
nremap('<C-j>', '<C-w><C-j>', 'Move focus to the lower window')
nremap('<C-k>', '<C-w><C-k>', 'Move focus to the upper window')

-- Terminal Keybindings
remap("<leader>tt", '<cmd>ToggleTerm<CR>', 'Terminal (last)', {'n', 't'})
remap("<leader>tf", '<cmd>ToggleTerm direction=float<CR>', 'Terminal float', {'n', 't'})
remap("<leader>tb", '<cmd>ToggleTerm direction=horizontal<CR>', 'Terminal horizontal', {'n', 't'})
remap("<leader>tv", '<cmd>ToggleTerm direction=vertical<CR>', 'Terminal vertical', {'n', 't'})

