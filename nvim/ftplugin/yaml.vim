" yaml.vim

setlocal softtabstop=2
setlocal shiftwidth=2
setlocal expandtab
setlocal nosmartindent
setlocal foldmethod=expr
setlocal foldexpr=getline(v:lnum)=~'^\\s*#'
setlocal foldlevelstart=99
