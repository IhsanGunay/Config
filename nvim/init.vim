" Ihsan's nvimrc
set number relativenumber
set ignorecase smartcase nohlsearch
set clipboard+=unnamedplus
set expandtab shiftwidth=4
set splitbelow splitright
set noswapfile
set hidden
set list
set background=light
set wildmode=longest,list,full

set runtimepath+=~/.local/share/dein/repos/github.com/Shougo/dein.vim
let s:hare = '~/.config/nvim/dein.toml'
let s:tortoise = '~/.config/nvim/deinlazy.toml'
let s:elephant = '~/.config/nvim/deinft.toml'

if dein#load_state('~/.local/share/dein')
 call dein#begin('~/.local/share/dein')
 call dein#load_toml(s:hare, {'lazy': 0})
 call dein#load_toml(s:tortoise, {'lazy': 1})
 call dein#load_toml(s:elephant)
 call dein#end()
 call dein#save_state()
endif

filetype plugin indent on
syntax on
colorscheme nord
hi Folded ctermfg=3 ctermbg=None

nmap <Space> [Space]
nmap s [Window]

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

inoremap jj <ESC>

nnoremap [Space] <Nop>
nnoremap [Window] <Nop>
nnoremap <silent> [Window]f :<C-u>edit ~/.config/nvim/init.vim<CR>
nnoremap <silent> [Window]w :<C-u>vsplit<CR>:wincmd w<CR>
nnoremap <silent> [Window]o :<C-u>only<CR>
nnoremap Q o<Esc>k
nnoremap <C-s> :%s//g<Left><Left>
nnoremap P "_ci'p
nnoremap <silent> <Tab> :wincmd w<CR>

cnoremap Q q
cnoremap W w
cnoremap WQ wq
cnoremap Wq wq
cnoremap wQ wq
cnoremap WQ! wq!
cnoremap Wq! wq!
cnoremap wQ! wq!
cnoremap W!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!

au Bufread ~/.config/nvim/* let g:dein#auto_recache=1
au Bufwritepost ~/.config/qtile/config.py !xdotool key super+ctrl+r
