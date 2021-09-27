" deol.vim

nnoremap <buffer><silent> <ESC> <C-w>q

nnoremap <buffer><silent> [Space]gc
\ :<C-u>call deol#send('git commit')<CR>
nnoremap <buffer><silent> [Space]gs
\ :<C-u>call deol#send('git status')<CR>
nnoremap <buffer><silent> [Space]gA
\ :<C-u>call deol#send('git commit --amend')<CR>

nmap <buffer> I <Plug>(deol_edit)
