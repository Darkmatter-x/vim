set encoding=utf-8                                    "设置字符编码
set fileencoding=utf-8                                "设置字符编码
set fileencodings=ucs-bom,utf-8,gbk,cp936,latin-1     "设置字符编码
set fileformat=unix                                   "设置字符编码
set fileformats=unix,dos,mac                          "设置字符编码
colorscheme github                                    "配置颜色 
syntax on	                                          "语法高亮		
set nu						                          "显示行号
filetype on                                           "启用文件类型侦测
filetype plugin on                                    "根据文件加载插件
filetype plugin indent on                             "根据文件加载插件
set autoread 					                      "当文件更新，自动加载
set expandtab                                         "将Tab键转换为空格
set tabstop=4                                         "置Tab键的宽度
set shiftwidth=4                                      "换行时自动缩进4个空格
set smarttab                                          "指定按一次backspace就删除shiftwidth宽度的空格格
set nocompatible                                      "禁用兼容模式
set backspace=indent,eol,start
set laststatus=2                                      "启用状态栏信息
set cmdheight=2                                       "设置命令行的高度为2
set cursorline                                        "突出显示当前行
set t_Co=256                                          "设置颜色


autocmd! bufwritepost $HOME/.vimrc source %           "自动生效配置
set guifont=WenQuanYi\ Micro\ Hei\ Mono\ 10           "设置字体 


">>>基础设置结束============================================================



">>>插件设置================================================================
"vundle设置
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'vundle'
Bundle 'https://github.com/lukaszb/vim-web-indent'                    
Bundle 'https://github.com/vim-scripts/php.vim'
Bundle 'https://github.com/scrooloose/nerdtree'             
Bundle 'https://github.com/Lokaltog/vim-powerline'
Bundle 'https://github.com/jiangmiao/auto-pairs'           
Bundle 'https://github.com/vim-scripts/taglist.vim'
Bundle 'https://github.com/msanders/snipmate.vim'
Bundle 'https://github.com/vim-scripts/DoxygenToolkit.vim'
Bundle 'https://github.com/scrooloose/nerdcommenter'
Bundle 'https://github.com/othree/xml.vim'
Bundle 'https://github.com/scrooloose/syntastic'
Bundle 'https://github.com/vim-scripts/AutoTag'
Bundle 'https://github.com/pangloss/vim-javascript'
Bundle 'https://github.com/vim-scripts/jQuery'
Bundle 'https://github.com/endel/vim-github-colorscheme'
Bundle 'https://github.com/vim-scripts/tornadotmpl.vim'
Bundle 'https://github.com/sjl/gundo.vim'			
Bundle 'https://github.com/airblade/vim-gitgutter'
Bundle 'https://github.com/mhinz/vim-signify'
Bundle 'https://github.com/tpope/vim-fugitive'
"Bundle 'https://github.com/vim-scripts/AutoComplPop'
Bundle 'https://github.com/Shougo/neocomplcache.vim'
"=================================================================================
"ctags 设置、
set tags=./tags;                            "递归查找tags文件
let Tlist_Show_One_File=1                   "只显示当前文件的tags
let Tlist_Enable_Fold_Column=0              "使taglist插件不显示左边的折叠行
let Tlist_WinWidth=30                       "设置窗口宽度
let Tlist_Use_Right_Window=1                "在右侧窗口中显示
"powerline
let g:Powerline_symbols='unicode'

let g:neocomplcache_enable_at_startup = 1
"Doxygentoolkit 生成注释信息
let g:DoxygenToolkit_authorName="Wangeldon wangeldon@gmail.com"
let g:DoxygenToolkit_briefTag_funcName="yes"
let g:doxygen_enhanced_color=1
"DoxLic 插入copyright  Doxauthor 插入文档信息 Leader-a
nmap <leader>a : DoxAuthor<CR>                
"Gundo 显示文件修改历史  Leader -g
nmap <leader>g :GundoToggle<CR>
"F2 启用NERDTree
nmap <F2> :NERDTreeToggle<CR>               
"F3 Tlist
nmap <F3> :Tlist<CR>                        

nmap <C-b> :tabnew<CR>                      "C-b 新建tab
nmap <C-n> :tabp  <CR>                      "C-n 移动tab 
