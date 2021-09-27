" Helper function to check both vim and
" toml syntax when writing dein files
function wish#ToggleFiletype() abort
  if &filetype == 'toml'
    set filetype=vim
  else
    set filetype=toml
  endif
endfunction
