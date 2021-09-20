" toml.vim

syntax sync minlines=100

nnoremap <buffer><expr> [Space]f <SID>ToggleFiletype()

function! s:ToggleFiletype()
  if &filetype == 'toml'
    set filetype=vim
  else
    set filetype=toml
  endif
endfunction
