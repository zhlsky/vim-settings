"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"
"                            Pathogen.vim
"
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""             

execute pathogen#infect()
filetype plugin indent on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 
"             
"                            Powerline.vim
"
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set guifont=PowerlineSymbols\ for\ Powerline
set nocompatible
let g:Powerline_symbols = 'fancy'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"
"                            Vundle.vim
"
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
                            
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'


" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
Plugin 'tomasr/molokai'
Plugin 'tpope/vim-commentary'
Plugin 'kana/vim-textobj-entire'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"                        Normal Settings
"
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set mouse=a " 允许鼠标操作
set encoding=utf-8 "编码
set helplang=cn " 帮助文档语言设定
filetype on " 自动判断文件类型
syntax on " 使用自定义语法
syntax enable " 语法高亮
set tabstop=4 " 制表符长度
set softtabstop=4 " 插入制表符长度
set shiftwidth=4 " 空白长度
set cindent "c风格缩进
set autoindent "自动缩进
set smartindent "智能缩进
set ai! "强制缩进
set nu " 设置行号
colorscheme molokai " 设置颜色主题
set t_Co=256 " 终端设定为256色
set cursorline " 设置光标所在行高亮

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"
"                       Molokai.vim
"
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:molokai_original = 1
let g:rehash256 = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
