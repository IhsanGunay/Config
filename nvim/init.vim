" Ihsan's nvimrc
set ignorecase smartcase nohlsearch
set wildmode=longest,list,full
set clipboard+=unnamedplus
set expandtab shiftwidth=4
set number relativenumber
set splitbelow splitright
set background=dark
set scrolloff=10
set noswapfile
set noshowmode
set hidden
set list

set runtimepath+=~/.local/share/dein/repos/github.com/Shougo/dein.vim
let s:hare = '~/.config/nvim/dein.toml'
let s:tortoise = '~/.config/nvim/deinlazy.toml'

if dein#load_state('~/.local/share/dein')
  call dein#begin('~/.local/share/dein')
  call dein#load_toml(s:hare, {'lazy': 0})
  call dein#load_toml(s:tortoise, {'lazy': 1})
  call dein#end()
  call dein#save_state()
endif

if dein#check_install()
  call dein#install()
endif

filetype plugin indent on
syntax on
colorscheme nord
hi Folded ctermfg=3 ctermbg=None

nmap <Space> [Space]
nmap s [Window]
nnoremap [Space] <Nop>
nnoremap [Window] <Nop>
nnoremap ZZ <Nop>

inoremap JJ <ESC>

nnoremap [Window]s   <Cmd>bnext<CR>
nnoremap [Window]h   <Cmd>b #<CR>
nnoremap [Window]d   <Cmd>bdelete<CR>
nnoremap [Window]o   <Cmd>only<CR>
nnoremap [Window]v   <Cmd>vsplit<CR>
nnoremap <C-s>       <Cmd>write<CR>
nnoremap <C-M-s>     <Cmd>silent! write !sudo tee %<CR>
nnoremap <C-e>       <Cmd>quit<CR>
nnoremap <C-M-e>     <Cmd>quit!<CR>
nnoremap <C-l>       <C-w>l
nnoremap <C-h>       <C-w>h
nnoremap <M-l>       <C-w>>
nnoremap <M-s>       :%s//gc<Left><Left><Left>
nnoremap [Space]h    q:k
nnoremap [Space]D    <Cmd>call dein#install()<CR>
nnoremap Q           o<Esc>k
nnoremap M           zA
nnoremap >           >>
nnoremap <           <<

xnoremap >           >gv
xnoremap <           <gv

cnoremap <C-j>       <Down>
cnoremap <C-k>       <Up>
cnoremap <C-v>       <C-r>+

tnoremap <ESC>       <C-\><C-n>
tnoremap <C-h>       <Left>
tnoremap <C-l>       <Right>
tnoremap <C-j>       <Down>
tnoremap <C-k>       <Up>
tnoremap <C-v>       <C-r>+

augroup elves
  au!
  au CmdwinEnter * nnoremap <buffer> <ESC> <C-w>q
  au Bufwritepost ~/.config/qtile/config.py 
   \ silent! !xdotool key super+ctrl+r
  au BufNewFile ~/.local/bin/* 
   \ au Bufwritepost <buffer> call setfperm(expand("%"),"rwxr-xr-x")
augroup end
