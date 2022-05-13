require'nvim-treesitter.configs'.setup {
    ensure_installed = {'python', 'lua', 'vim', 'html', 'json', 
                        'toml', 'yaml', 'latex', 'julia', 'c'},
    highlight = {
        enable = true,
        disable = {'vim', 'html'},
    },
}
