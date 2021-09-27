" defx.vim

setlocal nonumber
setlocal norelativenumber

nnoremap <silent><buffer><expr> k
\ line('.') == 2 ? '' : 'k'
nnoremap <silent><buffer><expr> h
\ defx#do_action('cd', ['..'])
nnoremap <silent><buffer><expr> l
\ defx#is_directory() ?
\ defx#do_action('open_directory') :
\ defx#do_action('multi', ['drop', 'quit'])

nnoremap <silent><buffer><expr> ~
\ defx#do_action('cd')
nnoremap <silent><buffer><expr> \
\ defx#do_action('cd', getcwd())

nnoremap <silent><buffer><expr> <CR>
\ defx#do_action('multi', ['drop', 'quit'])
nnoremap <silent><buffer><expr> E
\ defx#do_action('open', 'vsplit')
nnoremap <silent><buffer><expr> P
\ defx#do_action('preview')

nnoremap <silent><buffer><expr> <Space>
\ defx#do_action('toggle_select') . 'j'
nnoremap <silent><buffer><expr> *
\ defx#do_action('toggle_select_all')

nnoremap <silent><buffer><expr> c
\ defx#do_action('copy')
nnoremap <silent><buffer><expr> m
\ defx#do_action('move')
nnoremap <silent><buffer><expr> p
\ defx#do_action('paste')
nnoremap <silent><buffer><expr> d
\ defx#do_action('remove_trash')
nnoremap <silent><buffer><expr> r
\ defx#do_action('rename')

nnoremap <silent><buffer><expr> K
\ defx#do_action('new_directory')
nnoremap <silent><buffer><expr> N
\ defx#do_action('new_file')
nnoremap <silent><buffer><expr> M
\ defx#do_action('new_multiple_files')

nnoremap <silent><buffer><expr> !
\ defx#do_action('execute_command')
nnoremap <silent><buffer><expr> &
\ defx#do_action('execute_command', ['', 'async'])

nnoremap <silent><buffer><expr> o
\ defx#do_action('open_tree', ['nested', 'toggle'])
nnoremap <silent><buffer><expr> O
\ defx#do_action('open_tree', 'recursive')

nnoremap <silent><buffer><expr> .
\ defx#do_action('repeat')
nnoremap <silent><buffer><expr> yy
\ defx#do_action('yank_path')
nnoremap <silent><buffer><expr> <ESC>
\ defx#do_action('quit')
nnoremap <silent><buffer><expr> q
\ defx#do_action('quit')

nnoremap <silent><buffer><expr> <C-l>
\ defx#do_action('redraw')
nnoremap <silent><buffer><expr> <C-g>
\ defx#do_action('print')

xnoremap <silent><buffer><expr> <CR>
\ defx#do_action('toggle_select_visual')
