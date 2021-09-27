imap <silent><buffer> JJ
\ <Plug>(denite_filter_update)

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

call deoplete#custom#buffer_option('auto_complete', v:false)
