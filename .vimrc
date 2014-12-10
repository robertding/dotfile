""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""vundle setting

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'gmarik/Vundle.vim'

""plugin host on github
Plugin 'scrooloose/nerdcommenter'
<<<<<<< HEAD
Plugin 'vim-scripts/taglist.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'nvie/vim-flake8'
=======
Plugin 'kevinw/pyflakes-vim'
Plugin 'Valloric/YouCompleteMe'
>>>>>>> 8105619018aeff4e095d8a3810f9c8582e15cc09
Plugin 'ervandew/supertab'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'Shougo/neocomplcache'
Plugin 'vim-scripts/AutoClose'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'tomasr/molokai'
Plugin 'tpope/vim-surround'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'nathanaelkane/vim-indent-guides'

""plugin from https://vim-scripts.org/vim/scripts.html
Plugin 'c.vim'
Plugin 'python.vim'
Plugin 'Emmet.vim'

call vundle#end()

filetype plugin indent on

""end of vundle
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nu
syntax enable
colorscheme molokai
set background=dark
"
"
filetype on
filetype plugin on
filetype indent on

set nobackup          "禁止自动备份
set autoread          "文件改动自动加载
set cursorline        "行光标下划线
set wildmenu
set ruler
set scrolljump=10     "光标距顶部/底部多少行滚动
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

""""""python
au FileType python set cc=78                      " 在78列显示对齐线
au FileType python set tw=78 " python文件文本最长宽度为78


""""""""""


""encoding setting

set fenc=utf-8
set encoding=utf-8
set fileencodings=utf-8,gbk
set termencoding=utf-8

""normal using map

imap jj <Esc>
nmap qq :q<CR>
imap sf jj:w<CR>
nmap sf :w<CR>

"" Tagbar set

nmap tt :TagbarToggle<CR>
set tags=tags;

let g:tagbar_ctags_bin = "/usr/local/bin/ctags"


"" NerdTree set
nmap mm :NERDTreeToggle<CR>

let NERDTreeShowFiles = 1
let NERDChristmasTree = 1
let NERDTreeHighlightCursorline = 1
let NERDTreeShowBookmarks = 1
let NERDTreeDirArrows = 1
let NERDTreeIgnore=['\.pyc$']


nmap fh <c-w>h
nmap fj <c-w>j
nmap fk <c-w>k
nmap fl <c-w>l


""powerline 
set laststatus=2
set t_Co=256
set encoding=utf8

""vim-airline setting

"* enable/disable bufferline integration >
let g:airline#extensions#bufferline#enabled = 1
"* enable/disable syntastic integration >
let g:airline#extensions#syntastic#enabled = 1
"* enable/disable tagbar integration >
let g:airline#extensions#tagbar#enabled = 1


let g:python_author='RobertDing'
let g:python_email='robertdingx@gmail.com'
"Python 注释

function InsertPythonComment()
    exe 'normal'.1.'G'
    let line = getline('.')
    if line =~ '^#!.*$' || line =~ '^#.*coding:.*$'
        return
    endif
    normal O
    call setline('.', '#!/usr/bin/env python')
    normal o
    call setline('.', '# -*- coding:utf-8 -*-')
    normal o
    call setline('.', '#')
    normal o
    call setline('.', '#   Author  :   '.g:python_author)
    normal o
    call setline('.', '#   E-mail  :   '.g:python_email)
    normal o
    call setline('.', '#   Date    :   '.strftime("%y/%m/%d %H:%M:%S"))
    normal o
    call setline('.', '#   Desc    :   ')
    normal o
    call setline('.', '#')
    normal o
    call setline('.', 'from __future__ import absolute_import, print_function, division, with_statement')
    call cursor(7, 17)
endfunction

" F4 添加Python注释
au FileType python map <F4> :call InsertPythonComment()<cr>

function InsertCommentWhenOpen()
    if line('$') == 1 && getline(1) == ''
        call InsertPythonComment()
    end
endfunc

" 打开Python文件自动添加注释
au FileType python :call InsertCommentWhenOpen()

" 对齐线宽度为1
let g:indent_guides_guide_size = 1
" vim开始的时候就显示对齐线
let g:indent_guides_enable_on_vim_startup = 1
" 从第二级开始显示对齐线
let g:indent_guides_start_level = 2
let g:indent_guides_color_change_percent = 80
