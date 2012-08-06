"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 一般设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 关闭VI的兼容模式
set nocompatible
" 显示行号
set number
" 设置tab键为4个空格
set tabstop=4
" 设定 << 和 >> 命令移动时的宽度为 4
set shiftwidth=4
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
colorscheme  molokai
" colorscheme  desert
" 高亮当前行列
set cursorline
set cursorcolumn
" 设定列宽
set colorcolumn=80
" 编码字体设置
set termencoding=chinese
set fileencodings=ucs-bom,utf-8,cp936,cp950,latin1
set ambiwidth=double
set guifont=Consolas:h13.0
set fenc=utf-8
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
    " set guioptions-=m " 隐藏菜单栏
    " set guioptions-=T " 隐藏工具栏
    set guioptions-=L " 隐藏左侧滚动条
    set guioptions-=r " 隐藏右侧滚动条
    set guioptions-=b " 隐藏底部滚动条
    set showtabline=0 " 隐藏Tab栏
endif
"启动时不显示 捐赠提示
set shortmess=atl



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 开始折叠
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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
autocmd! BufNewFile,BufRead * setlocal nofoldenable



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 快捷键
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree快捷键 
nmap <silent> <Leader>nt :NERDTreeToggle<CR>
nmap <silent> <Leader>nf :NERDTreeFind<CR>


" 删除所有行未尾空格
" nnoremap <f12> :%s/[ \t\r]\+$//g<cr>
