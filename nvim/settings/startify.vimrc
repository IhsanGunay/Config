" Startify settings

let g:startify_files_number = 5

let g:startify_lists = [
\ { 'type': 'sessions',  'header': ['   Sessions']                     },
\ { 'type': 'files',     'header': ['   Most Recent Files']            },
\ { 'type': 'bookmarks', 'header': ['   Bookmarks']                    },
\ { 'type': 'dir',       'header': ['   Most Recent Files '. getcwd()] },
\ ]

let g:startify_bookmarks = [
\  '~/.config/nvim/init.vim',
\  '~/.config/nvim/deinlazy.toml',
\  '~/.config/nvim/dein.toml',
\  '~/.config/alacritty/alacritty.yml',
\  '~/.config/qtile/config.py',
\  '~/.config/zsh/.zshrc',
\ ]
