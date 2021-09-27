" denite.vim

if b:denite.buffer_name == 'complete'
  nnoremap <silent><buffer><expr> <CR>
  \ denite#do_map('do_action', 'execute')
  nnoremap <silent><buffer><expr> <Tab>
  \ denite#do_map('do_action', 'complete')
  nnoremap <silent><buffer><expr> l
  \ denite#do_map('do_action', 'complete')
else
  nnoremap <silent><buffer><expr> <CR>
  \ denite#do_map('do_action')
  nnoremap <silent><buffer><expr> l
  \ denite#do_map('do_action')
endif

nnoremap <silent><buffer><expr> i
\ denite#do_map('open_filter_buffer')

nnoremap <silent><buffer><expr> a
\ denite#do_map('choose_action')
nnoremap <silent><buffer><expr> d
\ denite#do_map('do_action', 'delete')
nnoremap <silent><buffer><expr> e
\ denite#do_map('do_action', 'edit')
nnoremap <silent><buffer><expr> p
\ denite#do_map('do_action', 'preview')

nnoremap <silent><buffer><expr> N
\ denite#do_map('do_action', 'new')
nnoremap <silent><buffer><expr> q
\ denite#do_map('quit')
nnoremap <silent><buffer><expr> <Esc>
\ denite#do_map('quit')

nnoremap <silent><buffer><expr> '
\ denite#do_map('quick_move')
nnoremap <silent><buffer><expr> <Space>
\ denite#do_map('toggle_select').'j'
nnoremap <silent><buffer><expr> r
\ denite#do_map('do_action', 'quickfix')

nnoremap <silent><buffer><expr> <C-t>
\ denite#do_map('do_action', 'tabopen')
nnoremap <silent><buffer><expr> <C-v>
\ denite#do_map('do_action', 'vsplit')
nnoremap <silent><buffer><expr> <C-h>
\ denite#do_map('do_action', 'split')

nnoremap <silent><buffer><expr> <C-r>
\ denite#do_map('restore_sources')
nnoremap <silent><buffer><expr> <C-l>
\ denite#do_map('redraw')
