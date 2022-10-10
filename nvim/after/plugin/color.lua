require("one_monokai").setup({
    use_cmd = true,
    transparent = false,
    themes = function(colors)
        return {
            Identifier = { fg = colors.fg }
        }
    end,
})

