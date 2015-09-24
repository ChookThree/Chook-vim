" autoload _vimrc
autocmd! bufwritepost $HOME/.vimrc source %
set shortmess=atI
set encoding=utf-8

set autoread                 " 自动载入
set nu
set ruler                    " 显示标尺
set cursorline               " 突出显示当前行
set magic

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set backspace=2
set autoindent
set smartindent
set cindent

"- 则点击光标不会换,用于复制
set mouse=a

set fdm=marker


" No annoying sound on errors
" 去掉输入错误的提示声音
set title                " change the terminal's title
set novisualbell         " don't beep
set noerrorbells         " don't beep
set t_vb=
set tm=500

" 显示中文帮助
if version >= 603
    set helplang=cn
        set encoding=utf-8
        endif

" *** my map ***
let mapleader=","

map <leader>; <Esc>:


" install Vundle bundles
if filereadable(expand("~/.vimrc.bundles"))
    source ~/.vimrc.bundles
endif


"检测文件类型
filetype on
""针对不同的文件类型采用不同的缩进格式
filetype indent on
"允许插件
filetype plugin on
""启动自动补全
filetype plugin indent on
