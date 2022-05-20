" auto-install vim-plug if not already
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
    silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Declare the list of plugins.
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree'
Plug 'dense-analysis/ale'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

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

"enable syntax highlighting
syntax enable

" disable that annoying bell
set noerrorbells visualbell t_vb=
if has('autocmd')
    autocmd GUIEnter * set visualbell t_vb=
endif

" toggle NERDTree view with Ctrl+O
map <C-o> :NERDTreeToggle<CR>

" have NERDTree display hidden files
let NERDTreeShowHidden=1
