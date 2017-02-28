" Easy-Vimrc.template
" Author: philosophos<philosoph@yeah.net>
" GitHub: https://github.com/philosophos/easy-vimrc

au BufWritePost $MYVIMRC source $MYVIMRC |" 让配置变更立即生效

set t_Co=256
set background=dark "dark/light
"colorscheme molokai
colorscheme solarized

" 目录 移动光标到该行字符上，按*键即可跳转到对应配置处；Ctrl+o跳转回来
"file文件
"history&undo历史&撤销
"read&write文件读写
"backup备份文件
"swapfile交换文件
"format&coding格式&编码
"view视图
"linebreak换行
"search搜索
"indent&tab缩进&制表符
"fold折叠
"scroll滚屏
"cursor光标
"highlight高亮
"the_custom_color_configuration自定义色彩设置
"statusline状态栏
" 改变默认快捷键
" 标签页操作
" 导入vim插件管理文件
" 编辑新文件时读入样板
" 把整个缓冲区写回到文件前更改时间戳
" 一键编译运行
" 环境保存
" **************************************************************
"the table align with plugin tabular
"###################################################################################################
"file文件

"history&undo
"set undodir=           |"udir .+persistent_undo                 ;撤销历史保存路径
"set undofile           |"udf  off+persistent_undo               ;保存撤销历史
"set undolevels         |"ul   100+persistent_undo               ;最多可以撤销的改变个数
"set history=500        |"hi   20                                ;存储历史命令行数

"read&write
"set autochdir          |"acd  off                               ;根据当前窗口的文件自动切换目录
 set autoread           |"ar   off                               ;有 Vim 之外的改动时自动重读文件
"set autowrite          |"aw   off                               ;有改动时自动写回文件
"set autowriteall       |"awa  off                               ;类似于'autowrite'，但适用于更多命令
 set confirm            |"cf   off                               ;退出未保存或只读文件前确认
"set hidden             |"hid  off                               ;当缓冲区被放弃(abandon)时不卸载之,切换文件不保存只隐藏
"set readonly           |"ro   off                               ;
"set write              |"     on                                ;允许写入文件
"set writeany           |"wa   off                               ;写入文件不需!强制

"backup备份文件
"set backup             |"bk   off                               ;覆盖文件时保留备份文件
"set backupcopy=        |"bkc  unix:yes                          ;文件备份使用复制而不是换名
"set backupdir+=        |"bdir unix:".,~/tmp,~/"                 ;
"set backupext=~        |"bex  ~                                 ;备份文件使用的扩展名
"set backupskip         |"bsk  "/tmp/*,$TMPDIR/*,$TMP/*,$TEMP/*" ;匹配这些模式的文件不予备份
"set writebackup        |"wb   on+writebackup                    ;覆盖文件时建立备份

"swapfile交换文件
"set directory=.        |"dir  unix:".,~/tmp,/var/tmp,/tmp"      ;交换文件所用的目录名列表
"set swapfile           |"swf  on                                ;缓冲区是否使用交换文件
"set swapsync           |"sws  fsync                             ;和交换文件同步的方式
"set updatecount        |"uc   200                               ;刷新交换文件所需的字符数
"set updatetime         |"ut   4000                              ;刷新交换文件所需的毫秒数

"format&coding格式&编码
"set fileformat         |"ff   unix:unix                         ;文件输入输出使用的格式
"set fileformats        |"ffs  unix:unix,dos                     ;参与自动检测的 'fileformat' 的格式
"set encoding=utf-8     |"enc  latin1/$LANG+multi_byte           ;vim内部使用的编码
"set termencoding=utf-8 |"tenc "":encoding+multi_byte            ;
"set fileencoding=utf-8 |"fenc "":encoding+multi_byte            ;多字节文本的文件编码
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
"" 'fencs';ucs-bom(utf-8,default,latin1)+multi_byte;参与自动检测的字符编码
filetype indent plugin on

"#########################################################################################
"view视图
"set cmdheight=1         |"ch   ;1                             ;命令行（在状态栏下）使用的行数
"set cmdwinheight        |"cwh  ;7+vertsplit                   ;命令行窗口的高度
"set display=            |"dy   ;""                            ;lastline,uhex
"set helpfile            |"hf   ;$VIMRUNTIME/doc/help.txt      ;主帮助文件的完整路径名
"set helpheight          |"hh   ;20+windows                    ;新帮助窗口的最小高度
 set helplang=cn         |"hlg  ;+multi_lang                   ;首选帮助语言
 set laststatus=2        |"ls   ;1                             ;显示状态栏
 set number              |"nu   ;off                           ;显示行号
 set relativenumber      |"rnu  ;off                           ;相对行号
 set shortmess=aTI       |"shm  ;"filnxtTo0"                   ;关闭欢迎页面
"set showcmd             |"sc   ;on                            ;在状态行显示输入的命令
"set showmode            |"smd  ;on                            ;显示mode
"set splitbelow          |"sb   ;off+windows                   ;用split新建窗口，新的放下面
"set splitright          |"spr  ;off+vertsplit                 ;用vsplit新建窗口，新的放右边
 set title               |"     ;off+title                     ;让 Vim 设置窗口标题
"set titlelen=80         |"     ;_85                           ;用于窗口标题的 'columns' 比例
"set wildignore          |"wig  ;""+wildignore                 ;匹配这些模式的文件不会参与自动补全
"set wildignorecase      |"wic  ;off                           ;匹配文件名时忽略大小写
 set wildmenu            |"wmnu ;off+wildmenu                  ;自动补全显示文件菜单
 set wildmode=list:full  |"wim  ;full                          ;

 set spell               |"     ;_off                          ;拼写检查
"set spellcapcheck       |"spc  ;"[.?!]\_[\])'" \t]\+"         ;定位句子尾部的模式
"set spellfile           |"spf  ;""                            ;zg和zw保存单词的文件
"set spelllang+=         |"spl  ;en                            ;拼写检查使用的语言
"set spellsuggest        |"sps  ;best                          ;提供拼写校正建议的方法

"linebreak换行
"set wrap                |"     ;_on                           ;自动换行
"set wrapmargin          |"wm   ;0                             ;使 (硬) 回绕开始的从右侧起算的字符数
"set breakat=-           |"brk  ;" ^I!@*-+;:,./?"              ;可以在此断行的字符
 set linebreak           |"lbr  ;off+linebreak                 ;单词不换行
"set list                |"     ;_off                          ;显示 <Tab> 和 <EOL>
"set showbreak=>\        |"sbr  ;""                            ;用于提示回绕行开始的字符串
 set textwidth=100       |"tw   ;0                             ;内容宽度
 set colorcolumn=+1      |"cc   ;""                         ;逗号分隔的屏幕列的列表
"setjoinspaces           |"js   ;on                            ;连接命令在句号之后加2(1)个空格

"search搜索
 set hlsearch            |"hls  ;off+extra_search              ;高亮最近的匹配搜索结果
 set ignorecase          |"ic   ;off                           ;搜索时大小写不敏感
 set incsearch           |"is   ;off+extra_search              ;开启实时搜索功能
 set smartcase           |"scs  ;off                           ;如果有大写就区别大小写匹配
 set nowrapscan          |"ws   ;on                            ;搜索在文件末回绕回文件首

"indent&tab缩进&制表符
"set cindent             |"cin  ;off+cindent                   ;自动 C 程序缩进
"set cinkeys=            |"cink ;"0{,0},0),:,0#,!^F,o,O,e"     ;设置 'cindent' 时启动缩进的键
"set cinoptions=         |"cino ;""                            ;设置 'cindent' 时如何缩进
"set cinwords=           |"cinw ;"if,else,while,do,for,switch" ;'si' 和 'cin' 在这些词后加入额外的缩进
 set autoindent          |"ai   ;off                           ;根据上一行决定新行的缩进
"set copyindent          |"ci   ;off                           ;使得 'autoindent' 使用已有的缩进结构
"set smartindent         |"si   ;off+smartindent               ;智能缩进
 set smarttab            |"sta  ;off                           ;插入 <Tab> 时使用 'shiftwidth'
 set expandtab           |"et   ;off                           ;键入 <Tab> 时使用空格
 set tabstop=4           |"ts   ;8                             ;编辑时制表符占用空格数
 set shiftround          |"sr   ;off                           ;缩进列数对齐到 shiftwidth 的整数倍
 set shiftwidth=4        |"sw   ;8                             ;自动缩进使用的步进单位，以空格数目计
 set softtabstop=4       |"sts  ;0                             ;把连续数量的空格视为一个制表符

"fold折叠+folding
"set foldclose=all       |"fcl  ;""                            ;当光标离开时关闭折叠
"set foldcolumn=         |"fdc  ;0                             ;设定指示折叠的列宽度
"set foldenable          |"fen  ;on                            ;启动vim时打开折叠代码
"set foldexpr=           |"fde  ;0+eval                        ;当foldmethod=expr时使用的表达式
"set foldignore=         |"fdi  ;#                             ;当foldmethod=indent时忽略的行
"set foldlevel=          |"fdl  ;0                             ;当折叠级别高于此值时关闭折叠
"set foldlevelstart=     |"fdls ;-1                            ;开始编辑文件的 'foldlevel'
"set foldmarker=         |"fmr  ;"{{{,}}}"                     ;当foldmethod=marker时的标志
 set foldmethod=indent   |"fdm  ;manual                        ;折叠的类型
"set foldminlines=       |"fml  ;1                             ;折叠关闭所需的最少行数
"set foldnestmax=        |"fdn  ;20                            ;最大折叠深度
"set foldtext=           |"fdt  ;"foldtext()"                  ;显示关闭的折叠所用的表达式
"set foldopen=           |"fdo  ;"block,hor,mark,percent,quickfix,search,tag,undo" ;打开折叠所使用的命令

"scroll滚屏
"set scroll=10           |"scr  ;半屏                  ;滚动量 C-d/C-u
"set scrollbind          |"scb  ;off+scrollbind        ;其他窗口滚动时滚动当前窗口
"set scrolljump=5        |"sj   ;1                     ;垂直滚动量 jk
"set scrolloff=3         |"so   ;0                     ;距离边界多远开始垂直滚动 jk
"set scrollopt           |"sbo  ;"ver,jump"+scrollbind ;scrollbind的行为方式
"set sidescroll=5        |"ss   ;0                     ;水平滚动量 hl
"set sidescrolloff=5     |"siso ;0                     ;距离边界多远开始水平滚动 hl

"cursor光标
 set backspace=2         |"bs   ;""                    ;退格键分别可删除缩进，上一行结束，insert之前的字
"set ruler               |"ru   ;off                   ;在状态行里显示光标的行号和列号
"set rulerformat=        |"ruf  ;""                    ;
 set virtualedit=onemore |"ve   ;""                    ;光标可以移到当行最后一个字符之后
"set whichwrap=b,s,<,>   |"ww   ;"b,s"                 ;跨行移动光标
 set mouse=
"set clipboard=          |"cb   ;+xterm_clipboard/GUI使用剪贴板作为无名的寄存器
if has('clipboard')
	if has('unnameplus')
		set clipboard=unnameplus
	else
		set clipboard=unname
	endif
endif

"autocmd FileType tex setlocal spell spelllang=en_us " 拼写检查针对文件类型
 set listchars+=tab:>-,trail:+,extends:>,precedes:< "lcs;"eol:$";list模式下显示用的字符
"#########################################################################################
"highlight高亮

set cursorcolumn    |" cuc ; off+syntax    ; 高亮显示当前列
set cursorline      |" cul ; off+syntax    ; 高亮显示当前行
set matchpairs+=<:> |" mps ; "(:),{:},[:]" ; 能匹配的字符对
set matchtime=5     |" mat ; 5             ; 高亮匹配括号的时间（单位是1/10秒）
set showmatch       |" sm  ; off           ; 高亮显示匹配
set redrawtime=500  |" rdt ; 2000          ; :hlsearch 和 :match 高亮的超时
syntax on           |" syn ; ""            ; 允许用指定语法高亮配色方案替换默认方案
syntax enable       |"     ;               ; 开启语法高亮功能

"the_custom_color_configuration should be after the colorscheme & syntax on
hi ColorColumn    ctermbg=238
hi Normal         ctermbg=000 ctermfg=118
hi CursorColumn   ctermbg=234
hi CursorLine     ctermbg=234 cterm=none
"hi CursorLineNr  ctermbg=094
hi TabLine        ctermbg=232
hi TabLineFill    ctermbg=016
hi TabLineSel     ctermbg=022
hi LineNr         ctermbg=236
hi VertSplit      ctermbg=058
hi Folded         ctermbg=238
hi FoldColumn     ctermbg=236
hi ModeMsg        ctermfg=136
hi MoreMsg        ctermfg=136
hi DiffAdd        ctermbg=232
hi DiffChange     ctermbg=233 cterm=underline
hi DiffDelete     ctermbg=233 cterm=bold
hi DiffText       ctermbg=016 ctermfg=202 cterm=bold

hi helpHyperTextJump term=underline cterm=underline ctermfg=045

"插入模式减弱行列高亮
au InsertLeave * hi CursorColumn ctermbg=234 |hi CursorLine ctermbg=234 cterm=none
au InsertEnter * hi CursorColumn ctermbg=233 |hi CursorLine ctermbg=233 cterm=none
"插入模式取消行高亮
"au InsertLeave * set cul
"au InsertEnter * set nocul

"statusline状态栏**************************************************************
"set statusline=%n\ %f%m%r%w\ %y\%=\[%{&ff}]\ %v,%l/%L=[%P]
set stl=%<%1*%n\ %*
set stl+=%2*%f\ %*
set stl+=%3*%m%r%w\ %*
set stl+=%4*%y\ %*
set stl+=%=
set stl+=%5*\ \%{\"\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\").\"\"}%*
set stl+=%6*\ %{&ff}%*
set stl+=%7*\ %v,%l/%L=%*
set stl+=%8*[%P]%*
hi  User1         cterm=underline  ctermbg=232  ctermfg=202
hi  User2         cterm=none       ctermbg=235  ctermfg=202
hi  User3         cterm=bold       ctermbg=238  ctermfg=232
hi  User4         cterm=none       ctermbg=058  ctermfg=232
hi  StatusLine    cterm=none       ctermbg=094  ctermfg=094
hi  StatusLineNC  cterm=none       ctermbg=235  ctermfg=235
hi  user5         cterm=bold       ctermbg=237  ctermfg=232
hi  User6         cterm=bold       ctermbg=236  ctermfg=232
hi  User7         cterm=none       ctermbg=235  ctermfg=202
hi  User8         cterm=none       ctermbg=234  ctermfg=202

"###############################################################################
"改变默认快捷键

let mapleader=" "		" 定义全局快捷键的前缀
let maplocalleader=","	" 定义局部快捷键的前缀
nnoremap ; :
nnoremap U <C-r>|" easier redo
nnoremap + zo
nnoremap - zc
 noremap <C-\> :vsplit 
 noremap <leader><F1> :vert help 
nnoremap <silent><leader>/ :nohls<CR>
"Ctrl-a行首 Ctrl-e行尾
noremap! <C-a> <Home>
noremap! <C-e> <End>
 noremap <C-a> <Home>
 noremap <C-e> <End>
"easy to move between windows
 noremap <C-h> <C-W>h
 noremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
 noremap <C-l> <C-W>l

" 标签页操作
" http://vim.wikia.com/wiki/Alternative_tab_navigation
" 切换标签页
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 10gt
noremap <leader>th :tabfirst<CR>
noremap <leader>tl :tablast<CR>
noremap <leader>tj :tabnext<CR>
noremap <leader>tk :tabprev<CR>
" 新建/关闭标签页
nnoremap <C-t> :tabedit 
inoremap <C-t> <Esc>:tabedit 
noremap <leader>tb :tab 
noremap <leader>td :tabclose<CR>
noremap <leader>tm :tabm 
" Toggles between the active and last active tab
let g:last_active_tab = 1
nnoremap <silent> <leader>tt :execute 'tabnext ' . g:last_active_tab<CR>
autocmd TabLeave * let g:last_active_tab = tabpagenr()

"#########################################################################################
" 导入vim插件管理文件
if filereadable(expand("~/.vim/vimrc.plugin.list"))
	source ~/.vim/vimrc.plugin.list
endif
if filereadable(expand("~/.vim/vimrc.plugin.conf"))
	source ~/.vim/vimrc.plugin.conf
endif
"###############################################################################
"编辑新文件时读入样板
au BufNewFile *.sh,*.py,*.pl,*.lua,*.c,*.cpp,*.java,*.tex,*.latex call s:Template()
function! s:Template()
    let l:author="philosophos<philosoph@yeah.net>"
    if &filetype == "sh" || &filetype == "python" || &filetype == "perl"
        if &filetype == "sh"
            call setline(1,"#!/usr/bin/bash")
            call append(line("."),"")
        elseif &filetype == "python"
            call setline(1,"#!/usr/bin/python")
            call append(line("."),"# coding=utf-8")
        elseif &filetype == "perl"
            call setline(1,"#!/usr/bin/perl")
            call append(line("."),"")
        endif
        call append(line(".")+1,"# File Name: ".expand("%"))
        call append(line(".")+2,"# Author: ".author)
        call append(line(".")+3,"# Create Time: ".strftime("%Y %b %d"))
        call append(line(".")+4,"# Last modified: ")
        call append(line(".")+5,"################################################################################")
    endif
    if &filetype == "lua"
        call setline(1,"#!/usr/bin/lua")
        call append(line("."),"-- File Name: ".expand("%"))
        call append(line(".")+1,"-- Author: ".author)
        call append(line(".")+2,"-- Create Time: ".strftime("%Y %b %d"))
        call append(line(".")+3,"-- Last modified: ")
        call append(line(".")+4,"--------------------------------------------------------------------------------")
    endif
    if &filetype == "c" || &filetype == "cpp" || &filetype == "java"
        if &filetype == "c"
            call setline(1,"#include<stdio.h>")
            call append(line("."),"")
        endif
        if &filetype == "cpp"
            call setline(1,"#include<iostream>")
            call append(line("."),"using namespace std;")
        endif
        if &filetype == "java"
            call setline(1,"")
            call append(line("."),"")
        endif
        call append(line(".")+1,"// File Name: ".expand("%"))
        call append(line(".")+2,"// Author: ".author)
        call append(line(".")+3,"// Create Time: ".strftime("%Y %b %d"))
        call append(line(".")+4,"// Last modified: ")
        call append(line(".")+5,"////////////////////////////////////////////////////////////////////////////////")
    endif
    if &filetype == "tex" || &filetype == "plaintex"
        call setline(1,"\\documentclass[12pt]{article}")
        call append(line("."),"%\\usepackage{}")
        call append(line(".")+1,"\\author{".author."}")
        call append(line(".")+2,"\\date{\\today}")
        call append(line(".")+3,"%\\title{}")
        call append(line(".")+4,"\\begin{document}")
        call append(line(".")+5,"\\maketitle")
        call append(line(".")+6,"\\newpage")
        call append(line(".")+7,"\\tableofcontents")
        call append(line(".")+8,"\\newpage")
        call append(line(".")+9,"\\begin{abstract}")
        call append(line(".")+10,"\\end{abstract}")
        call append(line(".")+11,"\\section{}")
        call append(line(".")+12,"\\section{}")
        call append(line(".")+13,"\\end{document}")
    endif
    au BufNewFile * normal Go
endfunction

"###############################################################################
"把整个缓冲区写回到文件前更改时间戳
au BufWritePre *.sh,*.py,*.pl,*.lua,*.c,*.cpp,*.java,*.tex,*.latex ks|call s:LastMod()|'s
function! s:LastMod()
    if line("$") > 10
        let l = 10
    else
        let l = line("$")
    endif
    exe "1,".l."g/Last modified: /s/Last modified: .*/Last modified: ".strftime("%Y %b %d")
endfunction

"###############################################################################
"一键编译运行
nnoremap <F4> :w<CR>:make<CR>
nnoremap <F5> :make<CR>
nnoremap <F6> :make<CR>:!./%<.bin
au FileType c setlocal cin mp=gcc\ %\ -o\ %<.bin\ -g
au FileType cpp setlocal cin mp=g++\ %\ -o\ %<.bin\ -g
au FileType java setlocal mp=javac\ %
au FileType sh setlocal mp=bash\ %
au FileType perl setlocal mp=perl\ %
au FileType tex setlocal mp=latex\ %
au FileType python call s:Pymp()
function! s:Pymp()
    if getline(1) =~ '^#!.*[/\\]python3\>'']'
        setlocal mp=python3\ %<.py
    elseif getline(1) =~ '^#!.*[/\\]python2\>'']'
        setlocal mp=python2\ %<.py
    else
        setlocal mp=python\ %<.py
    endif
endfunction

" 环境保存
set sessionoptions="blank,buffers,globals,localoptions,tabpages,sesdir,folds,help,options,resize,winpos,winsize"
au BufWinLeave <buffer> silent mkview
au BufRead <buffer> silent loadview
"#########################################################################################
" END OF FILE
