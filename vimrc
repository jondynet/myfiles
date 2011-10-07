" 目录
if has('Win32')
    set backupdir=$VIM\vimfiles\backup
    set directory=$VIM\vimfiles\temp
else
    set backupdir=$HOME\.vim\backup
    set directory=$HOME\.vim\temp
endif
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

"Get out of VI's compatible mode..  
set nocompatible

"Sets how many lines of history VIM har to remember
set history=100

"Enable filetype plugin
filetype plugin on
"缩进  不要自动缩进，粘贴代码会乱掉
filetype indent on
" Auto indent 
set ai
" Smart indent
set si

"Set to auto read when a file is changed from the outside
set autoread

"Have the mouse enabled all the time:
set mouse=a

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"source $VIMRUNTIME/vimrc_example.vim
"source $VIMRUNTIME/mswin.vim
"behave mswin

"界面设置、工具条、菜单、全屏、配色等
colorscheme desert

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
else
    "set guifont=Consolas\ Bold\ 13
    "set guifont=Consolas\ 13
    "set guifont=Monaco\ Bold\ 11
    "set guifont=Monaco\ 10
    "set guifont=Bitstream\ Vera\ Sans\ Mono\ Bold\ 12
    "set guifont=Bitstream\ Vera\ Sans\ Mono\ 11
    "set guifont=Inconsolata\ 15
    "set gfw=WenQuanYi\Micro\Hei\ 12
    "set gfw=WenQuanYi\Zen\Hei\ 11
    "set linespace=2 
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
set wm=4      " wrapmargin
set tabstop=4
set softtabstop=4
set shiftwidth=4
set lbr       "不在单词中间断行
set fo+=mB    "打开断行模块对亚洲语言支持
set bs=2      " backspace

"Ignore case when searching
set ignorecase
set incsearch
"Highlight search things
set hlsearch
set ru        " ruler
set ic        " ignorecase      "忽略大小写 但是输入中有大写的话不忽略
set is        " incsearch
set scs       " smartcase: override the 'ic' when searching

set showcmd                 " 在状态栏显示目前所执行的指令，未完成的指令片段亦
                            " 会显示出来
set softtabstop=4           " 使得按退格键时可以一次删掉 4 个空格
                            " （不足 4 个时删掉所有剩下的空格）
" yaml,xml,html 使用2个空格作为缩进 
autocmd FileType html,css,xml,yaml setlocal ts=2 sts=2 sw=2 expandtab


"No sound on errors.
set noerrorbells
set novisualbell
set t_vb=

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
set foldlevel=100  " 启动vim时不要自动折叠代码

"The commandbar is 1 high
set cmdheight=1

"Show line number
"set nu

"Do not redraw, when running macros.. lazyredraw
set lz

"Set backspace
set backspace=indent,eol,start

set display=lastline        " 长行不能完全显示时显示当前屏幕能显示的部分。
                            " 默认值为空，长行不能完全显示时显示 @。
" ctrl s 保存
noremap <C-S>           :update<CR>
vnoremap <C-S>          <C-C>:update<CR>
inoremap <C-S>          <C-O>:update<CR>

" ctrl v 从剪切板中粘贴
cmap <C-V>              <C-R>+
exe 'inoremap <script> <C-V>' paste#paste_cmd['i']
exe 'vnoremap <script> <C-V>' paste#paste_cmd['v']
imap <S-Insert>         <C-V>
vmap <S-Insert>         <C-V>

" Ctrl c 复制到剪切板
vnoremap <C-C> "+y

" Shift+Enter
imap <S-CR> <End> <CR>
" Ctrl+Enter
imap <C-CR> <End>:<CR>

"去掉自动注释
"与zencoding冲突！！！
"set paste

"显示特殊符号
"set list
set showmatch " 高亮显示匹配的括号

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 自动完成
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 自动完成的背景色 steel blue, Gray
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
highlight Pmenu guibg=SteelBlue gui=bold

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 与windows的剪切板共享
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set clipboard+=unnamed

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CTags的设定
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("win32")
let Tlist_Ctags_Cmd = $VIM.'/ctags.exe' " location of ctags tool
else
let Tlist_Ctags_Cmd = '/usr/bin/ctags'
endif 
" 按照名称排序
let Tlist_Sort_Type = "name"
" 在右侧显示窗口
let Tlist_Use_Right_Window = 1
" 压缩方式
let Tlist_Compart_Format = 1
" 如果只有一个buffer，kill窗口也kill掉buffer
let Tlist_Exist_OnlyWindow = 1
" 不要关闭其他文件的tags
let Tlist_File_Fold_Auto_Close = 0
" 不要显示折叠树
let Tlist_Enable_Fold_Column = 0

" 括号自动补全
inoremap ( ()<ESC>i
inoremap ) <c-r>=ClosePair(')')<CR>
inoremap { {}<ESC>i
inoremap } <c-r>=ClosePair('}')<CR>
inoremap [ []<ESC>i
inoremap ] <c-r>=ClosePair(']')<CR>
inoremap < <><ESC>i
inoremap > <c-r>=ClosePair('>')<CR>

function ClosePair(char)
if getline('.')[col('.') - 1] == a:char
return "\<Right>"
else
return a:char
endif
endf

" 最后更新时间
"autocmd BufWritePre,FileWritePre *.py   ks|call LastMod()|'s
"fun LastMod()
"    if line("$") > 10
"        let l = 10
"    else
"        let l = line("$")
"    endif
"    exe "1," . l . "g/Last modified: /s/Last modified: .*/Last modified: " .
"        \ strftime("%Y-%m-%d %H:%I:%S")
"endfun

" Diff
set diffexpr=MyDiff()
function MyDiff()
   let opt = '-a --binary '
   let g:snip_set_textmate_cp=1
   if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
   if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
   let arg1 = v:fname_in
   if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
   let arg2 = v:fname_new
   if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
   let arg3 = v:fname_out
   if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
   let eq = ''
   if $VIMRUNTIME =~ ' '
     if &sh =~ '\<cmd'
       let cmd = '""' . $VIMRUNTIME . '\diff"'
       let eq = '"'
     else
       let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
     endif
   else
     let cmd = $VIMRUNTIME . '\diff'
   endif
   silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 运行python
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <F12> :pyfile % <CR>
map <C-F12> :!python.exe -i %

" 改变make命令为编译pyc
autocmd BufRead *.py set makeprg=python\ -c\ \"import\ py_compile,sys;\ sys.stderr=sys.stdout;\ py_compile.compile(r'%')\"

" snipMate
" autocmd FileType python set ft=python.django " For SnipMate
" autocmd FileType html set ft=html.django_template " For SnipMate

" => Zen Coding
let g:user_zen_settings = {
\    'indentation' : '  ',
\}
let g:user_zen_expandabbr_key = '<C-K>'
"let g:use_zen_complete_tag = 1

" CTags的设定
if has("win32")
let Tlist_Ctags_Cmd = $VIM.'/ctags.exe' " location of ctags tool
else
let Tlist_Ctags_Cmd = '/usr/bin/ctags' " on my mackbook
endif
" 按照名称排序
let Tlist_Sort_Type = "name"
" 在右侧显示窗口
let Tlist_Use_Right_Window = 1
" 压缩方式
let Tlist_Compart_Format = 1
" 如果只有一个buffer，kill窗口也kill掉buffer
let Tlist_Exist_OnlyWindow = 1
" 不要关闭其他文件的tags
let Tlist_File_Fold_Auto_Close = 0
" 不要显示折叠树
let Tlist_Enable_Fold_Column = 0

