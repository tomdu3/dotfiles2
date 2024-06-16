local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set("n", "x", '"_x')

-- add jk to escape
vim.api.nvim_set_keymap("i", "jk", "<ESC>", { noremap = true, silent = true })

-- add shortcut for wrapping toggle
vim.keymap.set("n", "<leader>ww", ":set wrap!<CR>")

-- increment/decrement numbers
keymap.set("n", "+", "<C-a>") -- increment
keymap.set("n", "-", "<C-x>") -- decrement

-- select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- save file and quit
keymap.set("n", "<leader>w", ":w<CR>", opts)
keymap.set("n", "<leader>q", ":q<CR>", opts)
keymap.set("n", "<leader>Q", ":q!<CR>", opts)

-- nvim tree
keymap.set("n", "<leader>t", ":NvimTreeToggle<CR>", opts)
keymap.set("n", "<leader>f", ":NvimTreeFindFile<CR>", opts)

-- tabs
keymap.set("n", "<leader>te", ":tabedit<CR>", opts)
keymap.set("n", "<tab>", ":tabnext<CR>", opts)
keymap.set("n", "<S-tab>", ":tabprev<CR>", opts)
keymap.set("n", "<leader>to", ":tabnew<CR>", opts)
keymap.set("n", "<leader>tx", ":tabclose<CR>", opts)
keymap.set("n", "<leader>tn", ":tabn<CR>", opts)
keymap.set("n", "<leader>tp", ":tabp<CR>", opts)

-- split window
keymap.set("n", "<leader>sh", "<C-w>s", opts)
keymap.set("n", "<leader>sv", "<C-w>v", opts)
keymap.set("n", "<leader>sc", "<C-w>c", opts)

-- move window
keymap.set("n", "<leader>sh", "<C-w>h", opts)
keymap.set("n", "<leader>sj", "<C-w>j", opts)
keymap.set("n", "<leader>sk", "<C-w>k", opts)
keymap.set("n", "<leader>sl", "<C-w>l", opts)

-- resize window
keymap.set("n", "<C-S-h>", "<C-w><", opts)
keymap.set("n", "<C-S-j>", "<C-w>-", opts)
keymap.set("n", "<C-S-k>", "<C-w>+", opts)
keymap.set("n", "<C-S-l>", "<C-w>>", opts)

-- diagnostic
keymap.set("n", "<C-j>", function()
  vim.diagnostic.goto_next()
end, opts)
