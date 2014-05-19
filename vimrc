""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"
"                            Pathogen.vim
"
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""             
set nocompatible "不要使用vi的键盘模式，而是vim自己的
filetype on   " 侦测文件类型
execute pathogen#infect()
filetype plugin indent on "为特定文件类型载入相关缩进文件

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 
"             
"                            Powerline.vim
"
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"set guifont=PowerlineSymbols\ for\ Powerline
"set nocompatible "不要使用vi的键盘模式，而是vim自己的
"let g:Powerline_symbols = 'fancy'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"
"                            Vundle.vim
"
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
                            
"set nocompatible              " be iMproved, required
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
"Plugin 'tomasr/molokai'
Plugin 'zhlsky/vim-colors'
Plugin 'mattn/emmet-vim'
Plugin 't9md/vim-macvim-transparency'
Plugin 'tpope/vim-commentary'
Plugin 'kana/vim-textobj-user'
Plugin 'kana/vim-textobj-entire'
Plugin 'vim-scripts/taglist.vim'
Plugin 'Lokaltog/vim-powerline'
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
filetype plugin indent on   "载入文件类型插件(required)
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
"
"                        Transparency.vim
"
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if has("gui_macvim")
	let g:macvim_transparency_step = 10
	let g:macvim_transparency_roller = [0, 50, 100]
"transparent
	nmap <D-Up>   <Plug>(macvim-transparency-inc)
" opaque
	nmap <D-Down> <Plug>(macvim-transparency-dec)
" roll from 
	nmap <F10>    <Plug>(macvim-transparency-roll)

	imap <D-Up>   <Plug>(macvim-transparency-inc)
	imap <D-Down> <Plug>(macvim-transparency-dec)
	imap <F10>    <Plug>(macvim-transparency-roll)

	xmap <D-Up>   <Plug>(macvim-transparency-inc)
	xmap <D-Down> <Plug>(macvim-transparency-dec)
	xmap <F10>    <Plug>(macvim-transparency-roll)
endif

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
set cindent " c风格缩进
set autoindent  " 自动缩进
set smartindent " 智能缩进,在行和段开始处使用制表符
set ai! " 强制缩进
set nu " 设置行号
colorscheme molokai " 设置颜色主题
set t_Co=256 " 终端设定为256色
set cursorline " 设置光标所在行高亮
"set noeb  or noerrorbells " 关闭错误信息响铃
set confirm     " 在处理未保存或只读文件的时候，弹出确认
set noexpandtab " 不要用空格代替制表符
set history=1000 " 历史记录数
"set nobackup   " 禁止生成临时文件
"set noswapfile " 禁止生成临时文件
"set ignorecase   " 搜索忽略大小写
set hlsearch  " 搜索逐字符高亮
set gdefault " 行内替换
"set laststatus=2 " 总是显示状态行
set ruler           " 在编辑过程中，在右下角显示光标位置的状态行
"set cmdheight=2  " 命令行（在状态行下）的高度，默认为1，这里是2
set viminfo+=!   " 保存全局变量
set iskeyword+=_,$,@,%,#,-    " 带有如下符号的单词不要被换行分割
"set linespace=0   " 字符间插入的像素行数目
"set wildmenu   " 增强模式中的命令行自动完成操作
"set backspace=2   " 使回格键（backspace）正常处理indent, eol, start等
"set whichwrap+=<,>,h,l     " 允许backspace和光标键跨越行边界
"可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
set autochdir               " 自动切换当前目录为当前文件所在的目录
set backupcopy=yes          " 设置备份时的行为为覆盖
"set ignorecase smartcase " 搜索时忽略大小写，但在有一个或以上大写字母时仍大小写敏感
"set nowrapscan  禁止在搜索到文件两端时重新搜索
set incsearch               " 输入搜索内容时就显示搜索结果
set foldmethod=syntax       " 设置语法折叠
set foldcolumn=0            " 设置折叠区域的宽度
setlocal foldlevel=1        " 设置折叠层数为
"set foldclose=all            设置为自动关闭折叠
"highlight RipGroup ctermbg=yellow cterm=none ctermfg=black "颜色的定义
"match RipGroup /TODO/ “修饰某个关键字
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
"
"
"                       Taglist.vim
"
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let Tlist_Ctags_Cmd="/usr/local/bin/ctags" " 设置ctags命令执行路径

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
