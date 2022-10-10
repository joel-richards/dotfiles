vim.opt.termguicolors = true

require('bufferline').setup {
    options = {
        mode = "buffers", -- set to "tabs" to only show tabpages instead
        indicator = 'underline',
        separator_style = 'slant',
        modified_icon = '●',
        close_icon = '',
        left_trunc_marker = '',
        right_trunc_marker = '',
        offsets = {
            {
                filetype = "NvimTree",
                text = "File Explorer",
                text_align = "center", 
                separator = true
            }
        },
        color_icons = true, -- whether or not to add the filetype icon highlights
        show_close_icon = true,
        always_show_bufferline = true
    }
}
