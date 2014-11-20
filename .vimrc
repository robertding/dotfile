""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""vundle setting

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'gmarik/Vundle.vim'

""plugin host on github
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-scripts/taglist.vim'
Plugin 'nvie/vim-flake8'
Plugin 'ervandew/supertab'
Plugin 'bling/vim-airline'

""plugin from https://vim-scripts.org/vim/scripts.html
Plugin 'c.vim'
Plugin 'python.vim'
Plugin 'pythoncomplete'
Plugin 'Emmet.vim'

""removed because vim-airline
""Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim'}
""Plugin 'scrooloose/nerdtree'
""Plugin 'bufexplorer.zip'
""Plugin 'kien/ctrlp.vim'
""Plugin 'grep.vim'

call vundle#end()

filetype plugin indent on

""end of vundle
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nu
syntax enable
set background=dark
"colorscheme morning
"
filetype on
filetype plugin on
filetype indent on

set nobackup          "禁止自动备份
set cursorline        "行光标下划线
set ruler
set showmatch         "显示匹配
set nohlsearch
set autoindent        "自动缩进
set tabstop=4
set ignorecase        "搜索忽视大小写
set helplang=cn       "中文帮助
set softtabstop=4
set shiftwidth=4
set expandtab
set autochdir

set backspace=indent,eol,start

""encoding setting

set fenc=utf-8
set encoding=utf-8
set fileencodings=utf-8,gbk
set termencoding=utf-8

""normal using map

imap jj <Esc>
nmap qq :q<CR>
imap ss jj:w<CR>
nmap ss :w<CR>

"" Tlist set

nmap tt :TlistToggle<CR>
set tags=tags;

let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Use_Right_Window = 1
let Tlist_WinWidth = 40
"let Tlist_Auto_Open = 1


"" NerdTree set
nmap mm :NERDTreeToggle<CR>

let NERDTreeShowFiles = 1
let NERDChristmasTree = 1
let NERDTreeHighlightCursorline = 1
let NERDTreeShowBookmarks = 1
let NERDTreeDirArrows = 1


""grep
nmap <C-i> :Grep<cr>

nmap fh <c-w>h
nmap fj <c-w>j
nmap fk <c-w>k
nmap fl <c-w>l


""powerline 
set laststatus=2
set t_Co=256
set encoding=utf8
let g:Powerline_symbols='unicode'


""vim-airline setting

"* enable/disable bufferline integration >
let g:airline#extensions#bufferline#enabled = 1
"* enable/disable syntastic integration >
let g:airline#extensions#syntastic#enabled = 1
"* enable/disable tagbar integration >
let g:airline#extensions#tagbar#enabled = 1