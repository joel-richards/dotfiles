local nnoremap = require("joel.keymap").nnoremap

-- nvim tree
nnoremap("<leader>e", "<cmd>NvimTreeToggle<CR>")

-- telescope (fuzzy find)
nnoremap("<leader>ff", "<cmd>Telescope find_files<CR>")
nnoremap("<leader>fg", "<cmd>Telescope live_grep<CR>")
nnoremap("<leader>fb", "<cmd>Telescope buffers<CR>")

-- buffer cycling
nnoremap("<leader>n", ":bnext<CR>")
nnoremap("<leader>N", ":bprev<CR>")
