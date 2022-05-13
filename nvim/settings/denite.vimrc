" Denite Settings

call denite#custom#var('grep', 'command', ['rg'])
call denite#custom#var('grep', 'default_opts', ['--hidden', '--vimgrep', '--heading', '-S'])
call denite#custom#var('grep', 'recursive_opts', [])
call denite#custom#var('grep', 'pattern_opt', ['--regexp'])
call denite#custom#var('grep', 'separator', ['--'])
call denite#custom#var('grep', 'final_opts', [])

call denite#custom#var('buffer', 'date_format', '')

let s:menus = {}
let s:menus.vim = {
  \ 'description': 'vim configuration files'
  \ }
let s:menus.vim.file_candidates = [
  \ ['init.vim',        '~/.config/nvim/init.vim'],
  \ ['deinlazy.toml',    '~/.config/nvim/deinlazy.toml'],
  \ ['dein.toml',        '~/.config/nvim/dein.toml'],
  \ ]
let s:menus.zsh = {
  \ 'description': 'zsh configuration files'
  \ }
let s:menus.zsh.file_candidates = [
  \ ['settings',   '~/.config/zsh/settings.zsh'],
  \ ['zshrc',      '~/.config/zsh/.zshrc'],
  \ ['profile',    '~/.config/shell/profile'],
  \ ['shortcutrc', '~/.config/shell/shortcutrc'],
  \ ['aliasrc',    '~/.config/shell/aliasrc'],
  \ ]

call denite#custom#var('menu', 'menus', s:menus)

call denite#custom#option('_', {
\ 'split': 'top',
\ 'auto_resize': 1,
\ 'source_names': 'short',
\ 'prompt': 'λ ',
\ 'highlight_matched_char': 'QuickFixLine',
\ 'highlight_matched_range': 'Visual',
\ 'highlight_window_background': 'Visual',
\ 'highlight_filter_background': 'DiffAdd',
\ 'winrow': 1,
\ 'winheight': 10,
\ 'vertical_preview': 1
\ })

call denite#custom#option('search', {
\ 'start_filter': 1,
\ })

call denite#custom#option('complete', {
\ 'immediately_1': 1,
\ })

call denite#custom#option('menu', {
\ 'quick_move': 'immediately',
\ })
