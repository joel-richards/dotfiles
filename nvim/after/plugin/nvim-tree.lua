require("nvim-tree").setup({
  sort_by = "extension",
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  }
})
