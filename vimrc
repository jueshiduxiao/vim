"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" һ������
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" �ر�VI�ļ���ģʽ
set nocompatible
" ��ʾ�к�
set number
" ����tab��Ϊ4���ո�
set tabstop=4
" �趨 << �� >> �����ƶ�ʱ�Ŀ��Ϊ 4
set shiftwidth=4
" �����ڱ༭������,�����½���ʾ���λ�õ�״̬��
set ruler
" �����﷨
syntax on
" ���ø�������
set hlsearch
" ��insertģʽ������ɾ��������ɾ��
set backspace=indent,eol,start
" ���� set autoindent vimʹ���Զ����룬Ҳ���ǰѵ�ǰ�еĶ����ʽӦ�õ���һ��
set ai
" �趨��ɫ����
colorscheme  molokai
" colorscheme  desert
" ������ǰ����
set cursorline
set cursorcolumn
" �趨�п�
set colorcolumn=80
" ������������
set termencoding=chinese
set fileencodings=ucs-bom,utf-8,cp936,cp950,latin1
set ambiwidth=double
set guifont=Consolas:h13.0
set fenc=utf-8
" ����Զ����и�ʽ��, ��߶�������֮�󳬹����ڸ߶Ƚ����һ�п�����������
set display=lastline
" ���Զ�����
set nowrap
" �����Զ�����
set smartindent
" �趨�����е�����Ϊ 1
set cmdheight=1
" ��ʾ״̬�� (Ĭ��ֵΪ 1, �޷���ʾ״̬��)
set laststatus=2
"��ʾ����������
set showmatch
" ����GUI
if has("gui_running")
    " set guioptions-=m " ���ز˵���
    " set guioptions-=T " ���ع�����
    set guioptions-=L " ������������
    set guioptions-=r " �����Ҳ������
    set guioptions-=b " ���صײ�������
    set showtabline=0 " ����Tab��
endif
"����ʱ����ʾ ������ʾ
set shortmess=atl



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ��ʼ�۵�
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set foldenable
" �����﷨�۵�
" manual  �ֹ������۵�
" indent  �����������ʾ���߼�����۵�
" expr    �ñ��ʽ��������
" syntax  ���﷨�����������۵�
" diff    ��û�и��ĵ��ı������۵�
" marker  �����еı�־�۵�
set foldmethod=indent
"�۵���صĿ�ݼ�
"zR �����е��۵�
"za Open/Close (toggle) a folded group of lines.
"zA Open a Closed fold or close and open fold recursively.
"zi ȫ�� չ��/�ر� �۵�
"zo �� (open) �ڹ���µ��۵�
"zc �ر� (close) �ڹ���µ��۵�
"zC ѭ���ر� (Close) �ڹ���µ������۵�
"zM �ر����п��۵�����
" �½����ļ����մ򿪵��ļ����۵�
autocmd! BufNewFile,BufRead * setlocal nofoldenable



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ��ݼ�
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree��ݼ� 
nmap <silent> <Leader>nt :NERDTreeToggle<CR>
nmap <silent> <Leader>nf :NERDTreeFind<CR>


" ɾ��������δβ�ո�
" nnoremap <f12> :%s/[ \t\r]\+$//g<cr>
