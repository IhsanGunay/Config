" vim.vim

if line('$') > 1000
  syntax sync minlines=200
endif
setlocal foldmethod=indent
setlocal shiftwidth=2 softtabstop=2
setlocal iskeyword+=:,#
let b:AutoPairs = AutoPairsDefine({"<":">"})
