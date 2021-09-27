" toml.vim

syntax sync minlines=100
setlocal foldmethod=indent
setlocal softtabstop=2
setlocal shiftwidth=2
setlocal textwidth=80
setlocal smarttab
setlocal expandtab

nnoremap <buffer><expr> [Space]f wish#ToggleFiletype()
