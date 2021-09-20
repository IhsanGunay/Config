" html.vim

setlocal includeexpr=substitute(v:fname,'^\\/','','')
let b:AutoPairs = AutoPairsDefine({"<":">"})
setlocal path+=./;/
