local map = vim.keymap.set


-- Copy to system clipboard in visual mode
map("v", "<leader>y", '"+y', { noremap = true })

-- Paste from system clipboard
map("n", "<leader>p", '"+p', { noremap = true })
map("v", "<leader>p", '"+p', { noremap = true })
map("n", "<leader>e", vim.diagnostic.open_float, { noremap = true })
map("n", ",", "<<", { noremap = true })
map("n", ".", ">>", { noremap = true })
map("v", ",", "<gv", { noremap = true })
map("v", ".", ">gv", { noremap = true })
map({"n", "v"}, "+", "$", { noremap = true })

