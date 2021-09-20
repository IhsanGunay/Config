" help.vim

setlocal iskeyword+=:
setlocal iskeyword+=#
setlocal iskeyword+=-
setlocal cursorline
setlocal winwidth=78

nnoremap <buffer>     <ESC>     <C-w>q
nnoremap <buffer>     J         <C-]>
nnoremap <buffer>     K         <C-T>
nnoremap <buffer>     L         /\|\zs\S\+\ze\|<CR>
nnoremap <buffer>     H         ?\|\zs\S\+\ze\|<CR>
nnoremap <buffer>     o         /'\l\{2,\}'<CR>
nnoremap <buffer>     O         ?'\l\{2,\}'<CR>
