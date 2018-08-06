""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 一般设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 关闭VI的兼容模式
set nocompatible
" 显示行号
set number
" 设置缩进
set smarttab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set linespace=2
set expandtab 
" 设定 << 和 >> 命令移动时的宽度为 4
set shiftwidth=2
" 设置在编辑过程中,于右下角显示光标位置的状态行
set ruler
" 高亮语法
syntax on
" 设置高亮搜索
set hlsearch
" 在insert模式下能用删除键进行删除
set backspace=indent,eol,start
" 或者 set autoindent vim使用自动对齐，也就是把当前行的对齐格式应用到下一行
set ai
" 设定配色方案
set t_Co=256
colorscheme  molokai
" colorscheme  desert
" 高亮当前行列
set cursorline
set cursorcolumn
" 设定列宽
set colorcolumn=81
" 编码字体设置
let &termencoding=&encoding
set fileencodings=ucs-bom,utf-8,gbk,cp936,cp950,latin1
set fileformat=unix
set encoding=utf-8
set langmenu=zh_CN.UTF-8
language message zh_CN.UTF-8
" 解决自动换行格式下, 如高度在折行之后超过窗口高度结果这一行看不到的问题
set display=lastline
" 不自动换行
set nowrap
" 智能自动缩进
set smartindent
" 设定命令行的行数为 1
set cmdheight=1
" 显示状态栏 (默认值为 1, 无法显示状态栏)
set laststatus=2
"显示括号配对情况
set showmatch
" 设置GUI
if has("gui_running")
    set guioptions-=m " 隐藏菜单栏
    set guioptions-=T " 隐藏工具栏
    set guioptions-=L " 隐藏左侧滚动条
    set guioptions-=r " 隐藏右侧滚动条
    set guioptions-=b " 隐藏底部滚动条
    set showtabline=0 " 隐藏Tab栏
    set guifont=Consolas:h13.0
endif
if has("win32") || has("win64")
      set runtimepath=$CUSTOMVIMRUNTIME,$VIMRUNTIME,$CUSTOMVIMRUNTIME/after
    endif
"启动时不显示 捐赠提示
set shortmess=atl


set list "显示不可见字符 默认的太不好看了
"set listchars=tab:\|\ ,trail:.,extends:>,precedes:<
set listchars=tab:\:\ ,trail:~,extends:>,precedes:<,nbsp:\.



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 开始折叠
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set foldenable
" 设置语法折叠
" manual  手工定义折叠
" indent  更多的缩进表示更高级别的折叠
" expr    用表达式来定义折
" syntax  用语法高亮来定义折叠
" diff    对没有更改的文本进行折叠
" marker  对文中的标志折叠
set foldmethod=indent
"折叠相关的快捷键
"zR 打开所有的折叠
"za Open/Close (toggle) a folded group of lines.
"zA Open a Closed fold or close and open fold recursively.
"zi 全部 展开/关闭 折叠
"zo 打开 (open) 在光标下的折叠
"zc 关闭 (close) 在光标下的折叠
"zC 循环关闭 (Close) 在光标下的所有折叠
"zM 关闭所有可折叠区域
" 新建的文件，刚打开的文件不折叠
" autocmd! BufNewFile,BufRead * setlocal nofoldenable

" 
" au BufRead,BufNewFile *.vm set filetype=html



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 快捷键
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree快捷键 
nnoremap <silent> <Leader>nt :NERDTreeToggle<CR>
nnoremap <silent> <Leader>nf :NERDTreeFind<CR>
nnoremap <silent> <Leader>nr :NERDTree %:p:h<CR>
" 显示行号
let NERDTreeShowLineNumbers=1
let NERDTreeAutoCenter=1
" 是否显示隐藏文件
let NERDTreeShowHidden=1

" FuzzyFinder快捷键
let g:fuf_dataDir = $HOME."/.vim_backup/.vim-fuf-data"
nnoremap <silent> <Leader>f :FufFile<CR>
nnoremap <silent> <Leader>j :FufBuffer<CR>

" MRU
nnoremap <silent> <c-i> :MRU<cr>
let MRU_File = $HOME."/.vim_backup/.mru_files"
let MRU_Max_Entries = 1000
set autochdir

" 删除行未尾空格
nnoremap <f12> :%s / $//g<cr>
" 设置为当前文件目录
nnoremap <f11> :set autochdir<cr>
" 行号的显示隐藏
nnoremap <f4> :set number<cr>
nnoremap <f5> :set nonumber<cr>

" 去掉高亮显示
nnoremap <silent> <Leader><Space> :nohl<cr>

" 粘贴
set pastetoggle=<F10>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" pathogen
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call pathogen#infect()
Helptags
