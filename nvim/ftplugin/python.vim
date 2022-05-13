" python.vim

setlocal softtabstop=4
setlocal shiftwidth=4
setlocal textwidth=80
setlocal smarttab
setlocal expandtab
setlocal nosmartindent

" Fold cells if jupytext
if getline(2) =~# '^#\sjupyter:'
  setlocal foldmethod=expr
  setlocal foldexpr=getline(v:lnum)=~'^\\s*#'
  setlocal foldlevelstart=99
else
  setlocal foldmethod=indent
  setlocal foldlevel=10
endif
