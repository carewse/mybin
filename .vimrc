set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'	"文件目录
Plugin 'jnurmine/Zenburn'	"配色
Plugin 'romasr/molokai'		"配色
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/syntastic'	"语法检查
Plugin 'nvie/vim-flake8'	"对齐检查
Plugin 'bling/vim-airline'	"状态美化
Plugin 'majutsushi/tagbar' 	"侧边栏 总揽 
Plugin 'davidhalter/jedi-vim'
Plugin 'kien/ctrlp.vim'         "搜索插件
Plugin 'Yggdroot/indentLine'    "缩进指示线
Plugin 'fatih/vim-go'           "go插件
"Plugin 'Valloric/YouCompleteMe' 	"自动补全 
" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

colorscheme molokai		"配色方案
"colorscheme solarized
"colorscheme Zenburn
syntax on
set laststatus=2
"set encoding=utf-8
autocmd BufReadPost *.py,*.js,*.go call tagbar#autoopen()		"如果是python，tagbar自动开启
set nu
set cursorline	"行高亮
set background=dark
set showcmd
set ts=4
":%retab!  
set expandtab
set shiftwidth=4
set showmatch   "显示匹配的括号"
set hlsearch    "查询高亮
"set nowrap      "设置不折行"
set guifont=Monaco:h13  
set showtabline=0   "隐藏顶部标签栏
"set nowrap      "不折行
set scrolloff=5     "距离顶部和底部5行
"set ruler
"set cursorcolumn "列高亮
command Json %!python -m json.tool 

let python_highlight_all=1
"NERDTree 设置
"autocmd BufNewFile,BufRead *.py,*.js,*.go NERDTree	"python 自动打开目录p
let NERDTreeAutoCenter=1
"let NERDTreeWinSize=50
"let NERDTreeShowHidden=1
let NERDTreeShowLineNumbers=1
let NERDTreeShowBookmark=1
let NERDTreeIgnore=['\.pyc']

let g:tagbar_autofocus = 1
let g:indentLine_concealcursor = 'inc'
let g:indentLine_conceallevel = 2

nmap <silent> <F4> :TagbarToggle<CR>
nmap <silent> <F3> :NERDTree<CR>
"nmap <silent> <F5> :IndentLinesToggle<CR>
