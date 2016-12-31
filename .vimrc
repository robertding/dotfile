""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""vundle setting

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'gmarik/Vundle.vim'

""plugin host on github
Plugin 'rizzatti/dash.vim'
Plugin 'Yggdroot/indentLine'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Valloric/YouCompleteMe'
Plugin 'ervandew/supertab'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
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
Plugin 'pangloss/vim-javascript'
Plugin 'Glench/Vim-Jinja2-Syntax'
Plugin 'beautify-web/js-beautify'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'mileszs/ack.vim'
Plugin 'Valloric/vim-operator-highlight'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'mxw/vim-jsx'
"" Plugin 'klen/python-mode'

""Plugin 'c.vim'
Plugin 'Emmet.vim'

call vundle#end()

filetype plugin indent on

""end of vundle
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nu
set mouse=a
syntax enable
colorscheme molokai
set background=dark
set nofoldenable
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
set hlsearch
set autoindent        "自动缩进
set tabstop=4
set ignorecase        "搜索忽视大小写
set helplang=cn       "中文帮助
set softtabstop=4
set shiftwidth=4
set expandtab
set autochdir
set incsearch


set backspace=indent,eol,start

" 定义快捷键前缀
let mapleader=" "

"" 直接使用系统粘贴板
set clipboard=unnamed

""""""python
au FileType python set cc=80    " 在80列显示对齐线
au FileType python set tw=79    " python文件文本最长宽度为79

hi ColorColumn ctermbg=234

"""""" line num color
highlight LineNr ctermfg=59 ctermbg=black
highlight Search ctermfg=59 ctermbg=231

"""""" 
set fillchars=""
hi VertSplit ctermbg=NONE

""encoding setting

set fenc=utf-8
set encoding=utf-8
set fileencodings=utf-8,gbk
set termencoding=utf-8

""normal using map

imap jj <Esc>
nmap <leader>q :q<CR>
nmap <leader>w :w<CR>
nmap <leader>h :noh<CR>

nmap ta 0
nmap te $

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
let NERDTreeIgnore=['\.py[co]$', '__pycache__']


nmap fh <c-w>h
nmap fj <c-w>j
nmap fk <c-w>k
nmap fl <c-w>l


""powerline 
set laststatus=2
set t_Co=256
set encoding=utf8


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

"""" tagbat
" 按位置排序
let g:tagbar_sort = 0

"""" emmet 
"" leader key 
let g:user_emmet_leader_key = ";e"

"""" easy-motion 
"" 两端查找字符
nmap <leader><leader>a <Plug>(easymotion-s)


""""rainbow parenthese
let g:rbpt_colorpairs = [
    \ ['darkgray',    'DarkOrchid3'],
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]

let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0


"""" molokai
let g:molokai_original=1
let g:rehash256=1
hi String          ctermfg=59

"""" operator color
let g:ophigh_color = "Green"


"""" pymode
let g:pymode_rope = 0
let g:pymode_lint_ignore = "E501"

"""" airline
let g:airline_powerline_fonts=1
let g:airline#extensions#syntastic#enabled=1
let g:airline#extensions#tagbar#enabled=1
let g:airline#extensions#tmuxline#enabled=1
let g:airline_theme='powerlineish'

"""" dash
nmap <silent> <leader>d <Plug>DashSearch


"""" snippets configuration
let g:UltiSnipsExpandTrigger='<c-t>'

"""" ctrlp
let g:ctrlp_map='<leader>p'
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,/*.pyc,*/node_modules        " Linux/MacOSX
