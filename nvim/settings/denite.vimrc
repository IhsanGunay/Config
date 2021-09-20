" Denite Settings
"call denite#custom#var('file/rec', 'command', ['rg', '--files', '--glob', '.config'])
" \'--glob', '!.git'])

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
  \ ['init',        '~/.config/nvim/init.vim'],
  \ ['deinlazy',    '~/.config/nvim/deinlazy.toml'],
  \ ['dein',        '~/.config/nvim/dein.toml'],
  \ ]
let s:menus.zsh = {
  \ 'description': 'zsh configuration files'
  \ }
let s:menus.zsh.file_candidates = [
  \ ['zshrc',      '~/.config/zsh/.zshrc'],
  \ ['profile',    '~/.config/shell/profile'],
  \ ['shortcutrc', '~/.config/shell/shortcutrc'],
  \ ['aliasrc',    '~/.config/shell/aliasrc'],
  \ ]

call denite#custom#var('menu', 'menus', s:menus)

let s:denite_options = {'default' : {
\ 'split': 'top',
\ 'start_filter': 0,
\ 'auto_resize': 1,
\ 'source_names': 'short',
\ 'prompt': 'λ ',
\ 'highlight_matched_char': 'QuickFixLine',
\ 'highlight_matched_range': 'Visual',
\ 'highlight_window_background': 'Visual',
\ 'highlight_filter_background': 'DiffAdd',
\ 'winrow': 1,
\ 'vertical_preview': 1
\ }}

" Loop through denite options and enable them
function! s:profile(opts) abort
  for l:fname in keys(a:opts)
    for l:dopt in keys(a:opts[l:fname])
      call denite#custom#option(l:fname, l:dopt, a:opts[l:fname][l:dopt])
    endfor
  endfor
endfunction

call s:profile(s:denite_options)

" Define mappings while in 'filter' mode
"   <C-o>         - Switch to normal mode inside of search results
"   <Esc>         - Exit denite window in any mode
"   <CR>          - Open currently selected file in any mode
"   <C-t>         - Open currently selected file in a new tab
"   <C-v>         - Open currently selected file a vertical split
"   <C-h>         - Open currently selected file in a horizontal split
autocmd FileType denite-filter call s:denite_filter_my_settings()
function! s:denite_filter_my_settings() abort
  imap <silent><buffer> <C-o>
  \ <Plug>(denite_filter_quit)
  inoremap <silent><buffer><expr> <Esc>
  \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> <Esc>
  \ denite#do_map('quit')
  inoremap <silent><buffer><expr> <CR>
  \ denite#do_map('do_action')
  inoremap <silent><buffer><expr> <C-t>
  \ denite#do_map('do_action', 'tabopen')
  inoremap <silent><buffer><expr> <C-v>
  \ denite#do_map('do_action', 'vsplit')
  inoremap <silent><buffer><expr> <C-h>
  \ denite#do_map('do_action', 'split')
endfunction
