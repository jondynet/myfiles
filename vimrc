" 目录
if has('Win32')
    set backupdir=$VIM\vimfiles\backup
    set directory=$VIM\vimfiles\temp
else
    set backupdir=$HOME\.vim\backup
    set directory=$HOME\.vim\temp
endif
" 不要使用vi的键盘模式，而是vim自己的 
set nocompatible 
" 在处理未保存或只读文件的时候，弹出确认 
set confirm
" 在被分割的窗口间显示空白，便于阅读 
set fillchars=vert:\ ,stl:\ ,stlnc:\ 
" 通过使用: commands命令，告诉我们文件的哪一行被改变过 
set report=0 
" 备份
set nobackup
set nowb
set noswapfile
setlocal noswapfile "不要生成 swp 文件
set bufhidden=hide  "当buf被丢弃的时候隐藏它

" 中文
set encoding=utf-8
set langmenu=zh_CN.UTF-8
set fileencodings=utf-8,ucs-bom,gbk,gb2312,gb18030,cp936,default,latin1
"language message zh_CN.UTF-8

" history文件中需要记录的行数 
set history=100

" 侦测文件类型 
filetype on
" 载入文件类型插件
filetype plugin on
" 为特定文件类型载入相关缩进文件 
filetype indent on

" 高亮字符，让其不受100列限制 
:highlight OverLength ctermbg=red ctermfg=white guibg=red guifg=white 
:match OverLength '\%101v.*' 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 搜索和匹配 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 高亮显示匹配的括号 
set showmatch 
" 匹配括号高亮的时间（单位是十分之一秒） 
set matchtime=5 
" 在搜索的时候忽略大小写 
set ignorecase 
" 不要高亮被搜索的句子（phrases） 
"set nohlsearch 
" 在搜索时，输入的词句的逐字符高亮（类似firefox的搜索） 
set incsearch 
" 输入:set list命令是应该显示些啥？ 
set listchars=tab:\|\ ,trail:.,extends:>,precedes:<,eol:$ 
" 光标移动到buffer的顶部和底部时保持3行距离 
set scrolloff=3
" 不要闪烁 
set novisualbell

"Set to auto read when a file is changed from the outside
set autoread

"Have the mouse enabled all the time:
set mouse=a

"界面设置、工具条、菜单、全屏、配色等
"colorscheme desert

if has("gui_running")
    set guioptions-=m "Remove menubars"
    set guioptions-=T "Remove toolbar"
    set guioptions-=l "Remove Scrollbars
    set guioptions-=L
    set guioptions-=r
    set guioptions-=R
    set guioptions-=t
    set guioptions-=B
    set guioptions-=e
    set guioptions+=c
    au GUIEnter * simalt ~x "   ;全屏
endif

" gui 字体
" set guifont=Courier_New:h11
if has('Win32')
    " 代码字体和大小 
    "set guifont=YaHei_Consolas_Hybrid:h10.5
    "set guifont=Bitstream_Vera_Sans_Mono:h11
    set guifont=Inconsolata:h12
    set linespace=1 
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 文件格式
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set ffs=unix,dos,mac

set fenc=utf-8
set fencs=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936  
"set fileencodings=ucs-bom,utf-8,gbk
set encoding=utf-8
set lsp=0
set et        " expandtab
set wm=2      " wrapmargin
set tabstop=2
set softtabstop=2           " 使得按退格键时可以一次删掉 2 个空格
                            " （不足 2 个时删掉所有剩下的空格）
set shiftwidth=2
set lbr       "不在单词中间断行
set fo+=mB    "打开断行模块对亚洲语言支持

set bs=2      " backspace

"No sound on errors.
set noerrorbells
set novisualbell

" 设定文件浏览器目录为当前目录
set bsdir=buffer

"高亮显示当前行和列
if has("gui_running")
  set cursorline
  hi cursorline guibg=#333333
  set cursorcolumn
  hi cursorcolumn guibg=#333333
endif

"状态行颜色
set laststatus=2
"highlight StatusLine guifg=SlateBlue guibg=Yellow
"highlight StatusLineNC guifg=Gray guibg=White
set statusline=%<%f\ [%{&ft}]\ %h%m%r%=%k[%{(&fenc==\"\")?&enc:&fenc}%{(&bomb?\",BOM\":\"\")}][%{&ff}]\ %-10.(%l,%c%V%)\ %P
"另一种状态栏样式
"function! CurDir()
"let curdir = substitute(getcwd(), '/Users/amir/', "~/", "g")
"return curdir
"endfunction
"set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{CurDir()}%h\ \ \ Line:\ %l/%L:%c
"再一种状态栏样式
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}

"代码高亮
syntax on

"代码折叠
set foldmethod=manual
"set foldlevel=100  " 启动vim时不要自动折叠代码

"The commandbar is 1 high
set cmdheight=1

"Show line number
"set nu

" 自动缩进
set autoindent
" set cindent " cindent是特别针对 C语言语法自动缩进

"Set backspace
set backspace=indent,eol,start

set display=lastline        " 长行不能完全显示时显示当前屏幕能显示的部分。
                            " 默认值为空，长行不能完全显示时显示 @。

"去掉自动注释
"与zencoding冲突！！！
"set paste

"显示特殊符号
"set list
"set showmatch " 高亮显示匹配的括号

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 自动完成的背景色 steel blue, Gray
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
highlight Pmenu guibg=SteelBlue gui=bold

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 与windows的剪切板共享
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set clipboard+=unnamed

" 最后更新时间 Last modified: <datetime>
autocmd BufWritePre,FileWritePre *.py   ks|call LastMod()|'s
fun LastMod()
    if line("$") > 10
        let l = 10
    else
        let l = line("$")
    endif
    exe "1," . l . "g/Last modified: /s/Last modified: .*/Last modified: " .
        \ strftime("%Y-%m-%d %H:%I:%S")
endfun

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 运行python
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <S-k> :!python %

" python 的自动提示
autocmd FileType python set omnifunc=pythoncomplete#Complete

" 改变make命令为编译pyc
autocmd BufRead *.py set makeprg=python\ -c\ \"import\ py_compile,sys;\ sys.stderr=sys.stdout;\ py_compile.compile(r'%')\"

" 取消自动注释下一行
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" => Zen Coding
" let g:user_zen_settings = {'indentation' : '  ',}
let g:user_zen_expandabbr_key = '<C-K>'
" let g:use_zen_complete_tag = 1

" snipMate
" autocmd FileType python set ft=python.django " For SnipMate
autocmd FileType html set ft=html.djangotemplate " For SnipMate
