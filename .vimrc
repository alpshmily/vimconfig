nmap S :source~/.vimrc<CR>
"不兼容VI模式
set nocompatible 
"打开行号和相对等号
set nu 
set relativenumber
"光标所在行高亮
set cursorline
"自动拆行
set wrap
set textwidth=320
set linebreak
set wrapmargin=2
"垂直滚动时，光标距离顶部的位位置
set scrolloff=5
"状态栏显示，0表示不显示，1表示只在多窗口时显示，2不示显示
set laststatus=2
"状态栏显示光标的当前位置
set ruler
"G光标遇到括号时自动高亮对应的另一半括号
set showmatch
"搜索时，高亮显示匹配结果
set hlsearch
"输入搜索模式时，每输入一个字符，就自动跑到第一个匹配结果
set incsearch
set ignorecase
set smartcase
"打开语法高亮
syntax on
"底部显示模式和当前键入
set showmode 
set showcmd
set mouse=a 
"使用utf-8编码
set encoding=utf-8 
filetype indent on 
"自动缩进
set autoindent 
set tabstop=2
set shiftwidth=4 
set softtabstop=2

"打开英语单词的拼写检查
set spell spelllang=en_us
"不创建备份文件
set nobackup
"自动切换工作目录
set autochdir


"设置（自动补全）功能
inoremap " ""<ESC>i
inoremap ' ''<ESC>i
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {<CR>}<ESC>o
inoremap < <><ESC>i
"跳出补全的）和“号
func SkipPair()
		if getline('.')[col('.') - 1] == '"' || getline('.')[col('.') - 1] == ')' || getline('.')[col('.') - 1] == ']' || getline('.')[col('.') - 1] == '}' || getline('.')[col('.') - 1] == '>' || getline('.')[col('.') - 1] == "'"
		    return "\<ESC>la"
		else
				return "\t"
		endif
endfunc
inoremap<TAB> <c-r>=SkipPair()<CR>
