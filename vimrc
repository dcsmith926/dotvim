" always use utf8 encoding
set encoding=utf8

" number of lines vim will remember
set history=500

" indent with 4 spaces, tabs expand to 4 spaces
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4

" show line numbers
set number

" have pathogen initialize any plugins
execute pathogen#infect()

"enable syntax highlighting
syntax enable

" enable filetype plugins
filetype plugin on
filetype indent on

" set colorscheme
colorscheme dracula

" toggle NERDTree view with Ctrl+O
map <C-o> :NERDTreeToggle<CR>

" have NERDTree display hidden files
let NERDTreeShowHidden=1
