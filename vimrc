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
Plugin 'asins/vimcdoc'

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
Plugin 'scrooloose/nerdtree'
Plugin 'vim-scripts/winmanager'
Plugin 'vim-scripts/JavaRun'
"Plugin 'corntrace/vjde'
Plugin 'vim-scripts/javacomplete'
Plugin 'vim-scripts/JavaBrowser'
"Plugin 'vim-scripts/Conque-Shell'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

"Plugin 'Conque-Shell'
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
set t_Co=256 " 终端设定为256色
set encoding=utf-8 " 编码
set guifont=Monaco:h12 " 设置字体和大小
filetype on " 自动判断文件类型
syntax on " 使用自定义语法
syntax enable " 语法高亮
set tabstop=4 " 制表符长度
set softtabstop=4 " 插入制表符长度
set shiftwidth=4 " 空白长度
set expandtab "用空格代替tab
set cindent " c风格缩进
set autoindent  " 自动缩进
set smartindent " 智能缩进,在行和段开始处使用制表符
set ai! " 强制缩进
set nu " 设置行号
set hidden " 设置隐藏buffer自动保
colorscheme molokai " 设置颜色主题
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
"set foldmethod=syntax       " 设置语法折叠
"set foldcolumn=0            " 设置折叠区域的宽度
"setlocal foldlevel=1        " 设置折叠层数为
"set foldclose=all            设置为自动关闭折叠
"highlight RipGroup ctermbg=yellow cterm=none ctermfg=black "颜色的定义
"match RipGroup /TODO/ “修饰某个关键字
set wildmode=list,full "命令补全模式设定
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
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"
"                      Conque-shell.vim
"
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"== USAGE ==
"
"Type :ConqueTerm <command> to run your command in vim, for example:
"
":ConqueTerm bash
":ConqueTerm mysql -h localhost -u joe -p sock_collection
":ConqueTerm Powershell.exe
":ConqueTerm C:\Python27\python.exe
"
"To open ConqueTerm in a new horizontal or vertical buffer use:
"
":ConqueTermSplit <command>
":ConqueTermVSplit <command>
":ConqueTermTab <command>
"
"All text typed in insert mode will be sent to your shell. Use the <F9> key to send a visual selection from any buffer to the shell.
"
"For more help type :help ConqueTerm
let g:ConqueTerm_PyExe = "/usr/bin/python"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"
"                      Emmet.vim
"
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
                      
"使用命令 <C-y>,为执行命令
"html:5  -> 执行html代码片段
"p.foo   -> <p class="foo"></p>
"p#foo   -> <p id="foo"></p>
"h1{foo} -> <h1>foo</h1>
"a[href=#]  -> <a href=#></a>
">：子元素符号，表示嵌套的元素
"+：同级标签符号
"^：可以使该符号前的标签提升一行 
"() -> <div></div>
"ul>li*3 -> *3表示有三个li标签
"ul>li.item$*3 -> $表示该处数字从0递增到3
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"let g:user_emmet_mode='n'    "only enable normal mode functions.
"let g:user_emmet_mode='inv'  "enable all functions, which is equal to
let g:user_emmet_mode='a'    "enable all function in all mode.
"let g:user_emmet_install_global = 0 "Enable just for html/css
"autocmd FileType html,css EmmetInstall
"let g:user_emmet_leader_key='<C-Z>' "Redefine trigger key
"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"
"                         Javacomplete
"
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"setlocal omnifunc=javacomplete#Complete
"autocmd Filetype java set omnifunc=javacomplete#Complete " 自动补全
"autocmd Filetype java set completefunc=javacomplete#CompleteParamsInf  " 参数提示
"【重要】需要编译Reflection.java并把编译后的文件加入CLASSPATH
map <F5>:!clear&&javac %&&java %:r<CR>
setlocal omnifunc=javacomplete#Complete
autocmd FileType java set omnifunc=javacomplete#Complete
autocmd FileType java set completefunc=javacomplete#CompleteParamsInf
" 这两句的意思 是说按下Ctrl+X 后再按下Ctrl+U 才会触发提示功能如 调入System.
" 会出现一个列表框列出System 类中的成员
" 自动补全
inoremap <buffer> <C-X><C-U> <C-X><C-U><C-P> 
" 参数提示
inoremap <buffer> <C-S-Space> <C-X><C-U><C-P> 
" 这样每敲入一个大写字母,会进行补全提示,当然这个只能补全当编辑文件
" 中出现的同名短语
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  A  A<C-N><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  B  B<C-N><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  C  C<C-N><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  D  D<C-N><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  E  E<C-N><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  F  F<C-N><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  G  G<C-N><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  H  H<C-N><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  I  I<C-N><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  J  J<C-N><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  K  K<C-N><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  L  L<C-N><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  M  M<C-N><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  N  N<C-N><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  O  O<C-N><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  P  P<C-N><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  Q  Q<C-N><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  R  R<C-N><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  S  S<C-N><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  T  T<C-N><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  U  U<C-N><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  V  V<C-N><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  W  W<C-N><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  X  X<C-N><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  Y  Y<C-N><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  Z  Z<C-N><C-P>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"
"                             vimcdoc
"
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 设定doc文档目录
let helptags=$VIM."/vimfiles/doc"
set helplang=cn

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"
"                             NERDTree.vim
"
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"o 打开关闭文件或者目录，如果是文件的话，光标出现在打开的文件中
"go 效果同上，不过光标保持在文件目录里，类似预览文件内容的功能
"i和s可以水平分割或纵向分割窗口打开文件，前面加g类似go的功能
"t 在标签页中打开
"T 在后台标签页中打开
"p 到上层目录
"P 到根目录
nmap tre :NERDTree<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"
"                            JavaBrowser.vim
"
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap jtre :JavaBrowser<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"
"                            Winmanager.vim
"
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"【重要】 需要修改ToggleWindowsManage
let g:NERDTree_title="[NERDTree]"  
let g:winManagerWindowLayout="NERDTree|TagList"  
  
function! NERDTree_Start()  
	exec 'NERDTree'  
endfunction  
	  
function! NERDTree_IsValid()  
	return 1  
endfunction  
		  
cmap wm :WMToggle<CR>  
cmap qa :only<CR>:q<CR>
