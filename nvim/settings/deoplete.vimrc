" Deoplete settings

call deoplete#custom#source('zsh', 'filetypes', ['zsh', 'sh'])

inoremap <silent><expr><TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ deoplete#manual_complete()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
inoremap <expr><C-g> deoplete#refresh()
inoremap <expr><C-e> deoplete#cancel_popup()
inoremap <silent><expr><C-l> deoplete#complete_common_string()
inoremap <silent><CR> <C-r>=<SID>my_cr_function()<CR>

call deoplete#custom#option('candidate_marks',
      \ ['A', 'S', 'D', 'F', 'G'])
inoremap <expr>A pumvisible() ? deoplete#insert_candidate(0) : 'A'
inoremap <expr>S pumvisible() ? deoplete#insert_candidate(1) : 'S'
inoremap <expr>D pumvisible() ? deoplete#insert_candidate(2) : 'D'
inoremap <expr>F pumvisible() ? deoplete#insert_candidate(3) : 'F'
inoremap <expr>G pumvisible() ? deoplete#insert_candidate(4) : 'G'

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

function! s:my_cr_function() abort
  return pumvisible() ? deoplete#close_popup()."\<CR>" : "\<CR>"
endfunction
