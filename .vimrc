set nocompatible


" ��ʕ\���̐ݒ�

set number         " �s�ԍ���\������
set cursorline     " �J�[�\���s�̔w�i�F��ς���
set cursorcolumn   " �J�[�\���ʒu�̃J�����̔w�i�F��ς���
set laststatus=2   " �X�e�[�^�X�s����ɕ\��
set cmdheight=2    " ���b�Z�[�W�\������2�s�m��
set showmatch      " �Ή����銇�ʂ������\��
set helpheight=999 " �w���v����ʂ����ς��ɊJ��
set list           " �s��������\��
set display=lastline " ��s�������Ă��\��
set pumheight=10    "�⊮���j���[�̍���
colorscheme evening

" �J�[�\���ړ��֘A�̐ݒ�

set backspace=indent,eol,start " Backspace�L�[�̉e���͈͂ɐ�����݂��Ȃ�
set whichwrap=b,s,h,l,<,>,[,]  " �s���s���̍��E�ړ��ōs���܂���
set scrolloff=8                " �㉺8�s�̎��E���m��
set sidescrolloff=16           " ���E�X�N���[�����̎��E���m��
set sidescroll=1               " ���E�X�N���[���͈ꕶ���Âs��

" �t�@�C�������֘A�̐ݒ�

" set confirm    " �ۑ�����Ă��Ȃ��t�@�C��������Ƃ��͏I���O�ɕۑ��m�F
" set hidden     " �ۑ�����Ă��Ȃ��t�@�C��������Ƃ��ł��ʂ̃t�@�C�����J�����Ƃ��o����
" set autoread   " �O���Ńt�@�C���ɕύX�����ꂽ�ꍇ�͓ǂ݂Ȃ���
set nobackup   " �t�@�C���ۑ����Ƀo�b�N�A�b�v�t�@�C�������Ȃ�
set noswapfile " �t�@�C���ҏW���ɃX���b�v�t�@�C�������Ȃ�

" ����/�u���̐ݒ�

set hlsearch   " ������������n�C���C�g����
set incsearch  " �C���N�������^���T�[�`���s��
set ignorecase " �啶���Ə���������ʂ��Ȃ�
set smartcase  " �啶���Ə����������݂������t�Ō������s�����ꍇ�Ɍ���A�啶���Ə���������ʂ���
set wrapscan   " �Ō���܂Ō������I�����玟�̌����Ő擪�Ɉڂ�
set gdefault   " �u���̎� g �I�v�V�������f�t�H���g�ŗL���ɂ���

" �^�u/�C���f���g�̐ݒ�

set expandtab     " �^�u���͂𕡐��̋󔒓��͂ɒu��������
set tabstop=2     " ��ʏ�Ń^�u��������߂镝
set shiftwidth=2  " �����C���f���g�ł���镝
set softtabstop=2 " �A�������󔒂ɑ΂��ă^�u�L�[��o�b�N�X�y�[�X�L�[�ŃJ�[�\����������
set autoindent    " ���s���ɑO�̍s�̃C���f���g���p������
set smartindent   " ���s���ɓ��͂��ꂽ�s�̖����ɍ��킹�Ď��̍s�̃C���f���g�𑝌�����

" ������Ƃ̓����֘A�̐ݒ�

" OS�̃N���b�v�{�[�h�����W�X�^�w�薳���� Yank, Put �o����悤�ɂ���
set clipboard=unnamed,unnamedplus
" �}�E�X�̓��͂��󂯕t����
set mouse=a
" Windows �ł��p�X�̋�؂蕶���� / �ɂ���
set shellslash
" �C���T�[�g���[�h���甲����Ǝ����I��IME���I�t�ɂ���
if has('gui_running')
  set iminsert=2
endif

" �R�}���h���C���̐ݒ�

" �R�}���h���C�����[�h��TAB�L�[�ɂ��t�@�C�����⊮��L���ɂ���
set wildmenu wildmode=list:longest,full
" �R�}���h���C���̗�����10000���ۑ�����
set history=10000

if has('gui_running')
  syntax on
endif

" �^�[�~�i���̉E�[�ŕ�����܂�Ԃ�
set nowrap

" temp�t�@�C�������Ȃ��B�ҏW���ɓd�������܂��邵�A�Ƃ������l�̓R�����g�A�E�g��
set noswapfile


" �R�}���h���C���⊮�����͂ɂȂ�
set wildmenu
" �R�}���h����ʂ̍ŉ����ɕ\������
set showcmd


" leader�̐ݒ�
:let mapleader = ","




" neobundle settings {{{
if has('vim_starting')
  set nocompatible
  " neobundle ���C���X�g�[�����Ă��Ȃ��ꍇ�͎����C���X�g�[��
  if !isdirectory(expand("C:/Users\K53TA/.vim/bundle/neobundle.vim/"))
    " echo "install neobundle..."
    " vim ����R�}���h�Ăяo���Ă��邾�� neobundle.vim �̃N���[��
    " :call system("git clone git://github.com/Shougo/neobundle.vim C:/Users/K53TA/.vim/bundle/neobundle.vim")
  endif
  " runtimepath �̒ǉ��͕K�{
  set runtimepath+=C:/Users/K53TA/.vim/bundle/neobundle.vim/
endif
call neobundle#begin(expand('C:/Users/K53TA/.vim/bundle'))
let g:neobundle_default_git_protocol='https'

" neobundle#begin - neobundle#end �̊Ԃɓ�������v���O�C�����L�ڂ��܂��B
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/vimproc.vim'


NeoBundle 'Shougo/unite.vim'
" unite {{{
let g:unite_enable_start_insert=0
nnoremap [unite] <Nop>
nmap <Leader>u [unite]
nmap <silent> [unite]b :<C-u>Unite buffer<CR>
nmap <silent> [unite]f :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
nmap <silent> [unite]r :<C-u>Unite -buffer-name=register register<CR>
nmap <silent> [unite]m :<C-u>Unite file_mru<CR>
nmap <silent> [unite]u :<C-u>Unite buffer file_mru<CR>
nmap <silent> [unite]a :<C-u>UniteWithBufferDir -buffer-name=files buffer file_mru bookmark file<CR>
au FileType unite nmap <silent> <buffer> <expr> <C-j> unite#do_action('split')
au FileType unite imap <silent> <buffer> <expr> <C-j> unite#do_action('split')
au FileType unite nmap <silent> <buffer> <expr> <C-l> unite#do_action('vsplit')
au FileType unite imap <silent> <buffer> <expr> <C-l> unite#do_action('vsplit')
au FileType unite nmap <silent> <buffer> <ESC><ESC> q
au FileType unite imap <silent> <buffer> <ESC><ESC> <ESC>q

let g:unite_source_history_yank_enable = 1
nnoremap [unite]y :<C-u>Unite history/yank<CR>

NeoBundle 'Shougo/neomru.vim', {
  \ 'depends' : 'Shougo/unite.vim'
  \ }

" neocomplete
if has('lua')
  NeoBundleLazy 'Shougo/neocomplete.vim', {
    \ 'depends' : 'Shougo/vimproc',
    \ 'autoload' : { 'insert' : 1,}
    \ }
endif

" neocomplete {{{
let g:neocomplete#enable_at_startup               = 1
let g:neocomplete#auto_completion_start_length    = 2
let g:neocomplete#enable_ignore_case              = 1
let g:neocomplete#enable_smart_case               = 1
let g:neocomplete#enable_camel_case               = 1
let g:neocomplete#use_vimproc                     = 1
let g:neocomplete#sources#buffer#cache_limit_size = 1000000
let g:neocomplete#sources#tags#cache_limit_size   = 30000000
let g:neocomplete#enable_fuzzy_completion         = 1
let g:neocomplete#lock_buffer_name_pattern        = '\*ku\*'
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns._ = '\h\w*'
" }}}

" neosnippet, neosnippet-snippets
NeoBundleLazy 'Shougo/neosnippet', {
  \ 'depends' : 'Shougo/neosnippet-snippets',
  \ 'autoload' : {
  \   'insert' : 1,
  \   'filetypes' : 'snippet',
  \ }}
NeoBundle 'Shougo/neosnippet-snippets'

let g:neosnippet#data_directory     = expand('~/.vim/etc/.cache/neosnippet')
let g:neosnippet#snippets_directory = [expand('~/.vim/bundle/neosnippet-snippets/neosnippets'),expand('~/dotfiles/snippets')]

" neosnippet {{{
" <TAB>: completion.
" inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><S-TAB>  pumvisible() ? "\<C-p>" : "\<S-TAB>"

" Plugin key-mappings.
imap <C-y>     <Plug>(neosnippet_expand_or_jump)
smap <C-y>     <Plug>(neosnippet_expand_or_jump)

" SuperTab like snippets behavior.
" imap <expr><TAB> neosnippet#jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : pumvisible() ? "\<C-n>" : "\<TAB>"
imap <expr><TAB> pumvisible() ? "\<C-n>" : neosnippet#jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif
" }}}


NeoBundle 'LeafCage/yankround.vim'

" yankround.vim {{{
nmap p <Plug>(yankround-p)
nmap P <Plug>(yankround-P)
nmap <C-p> <Plug>(yankround-prev)
nmap <C-n> <Plug>(yankround-next)
let g:yankround_max_history = 500
nnoremap <Leader><C-p> :<C-u>Unite yankround<CR>
"}}}

NeoBundleLazy 'Shougo/vimfiler', {
  \ 'depends' : ["Shougo/unite.vim"],
  \ 'autoload' : {
  \   'commands' : [ "VimFilerTab", "VimFiler", "VimFilerExplorer", "VimFilerBufferDir" ],
  \   'mappings' : ['<Plug>(vimfiler_switch)'],
  \   'explorer' : 1,
  \ }}


" vimfiler {{{
let g:vimfiler_as_default_explorer  = 1
let g:vimfiler_safe_mode_by_default = 0
let g:vimfiler_data_directory       = expand('~/.vim/etc/vimfiler')
nnoremap <silent><C-u><C-j> :<C-u>VimFilerBufferDir -split -simple -winwidth=35 -no-quit -toggle<CR>
" }}}

" ���ʂ������I�ɕ��Ă����
NeoBundle 'Townk/vim-autoclose'

" if�Ƃ��̏I���錾�������ő}�����Ă����
NeoBundleLazy 'tpope/vim-endwise', {
  \ 'autoload' : { 'insert' : 1,}}

" s[key][key][done]�̂S�L�[�ŉ�ʓ��̂ǂ��ւł��ړ��\
NeoBundle 'Lokaltog/vim-easymotion'
" NeoBundle 'haya14busa/vim-easymotion'
" vim-easymotion {{{
let g:EasyMotion_do_mapping = 0
nmap s <Plug>(easymotion-s2)
xmap s <Plug>(easymotion-s2)
omap z <Plug>(easymotion-s2)
nmap g/ <Plug>(easymotion-sn)
xmap g/ <Plug>(easymotion-sn)
omap g/ <Plug>(easymotion-tn)
let g:EasyMotion_smartcase = 1
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
let g:EasyMotion_startofline = 0
let g:EasyMotion_keys = 'ASDFGHJKLRUCVBOE;'
let g:EasyMotion_use_upper = 1
let g:EasyMotion_enter_jump_first = 1
let g:EasyMotion_space_jump_first = 1
let g:EasyMotion_use_migemo = 1 " Migemo�@�\ON
" }}}

" clever-f
NeoBundle 'rhysd/clever-f.vim'
let g:clever_f_chars_match_any_signs = ';'

NeoBundleLazy 'junegunn/vim-easy-align', {
  \ 'autoload': {
  \   'commands' : ['EasyAlign'],
  \   'mappings' : ['<Plug>(EasyAlign)'],
  \ }}

" ���͐��`�v���O�C��
" vim-easy-align {{{
vmap <Enter> <Plug>(EasyAlign)
nmap <Leader>a <Plug>(EasyAlign)
" }}}


" true/false�Ƃ����u���ɐ؂�ւ��Ă����
NeoBundle 'AndrewRadev/switch.vim'

" switch {{{
nmap + :Switch<CR>
nmap - :Switch<CR>
" }}}

" �e�L�X�g���݂͂⊇�ʂ̃J�[�\���ړ��@�\���g������
NeoBundle 'tpope/vim-surround'
NeoBundle 'vim-scripts/matchit.zip'

" �R�����g�A�E�g�؂�ւ�
NeoBundle 'tyru/caw.vim'
" ,c �ŃJ�[�\���s���R�����g�A�E�g
" �ēx ,c �ŃR�����g�A�E�g������
" �I�����Ă��畡���s�� ,c ���\
nmap ,c <Plug>(caw:I:toggle)
vmap ,c <Plug>(caw:I:toggle)

" ,C �ŃR�����g�A�E�g�̉���
nmap ,C <Plug>(caw:I:uncomment)
vmap ,C <Plug>(caw:I:uncomment)

" NERDTree
NeoBundle 'scrooloose/nerdtree'

" quickrun
NeoBundle 'thinca/vim-quickrun'
" for quickrun
if !exists("g:quickrun_config")
    let g:quickrun_config = {}
endif

let g:quickrun_config["vb"] = {
            \ "command": "cscript",
            \ "cmdopt": "//Nologo",
            \ "tempfile": "{tempname()}.vbs",
            \}


NeoBundle 'kana/vim-submode'


" �u���������n�C���C�g�\��
NeoBundle 'osyo-manga/vim-over'
" vim-over�̋N��
nnoremap <Leader>o :OverCommandLine<CR>%s/
" �J�[�\�����̒P����n�C���C�g�t���Œu��
nnoremap <Leader>O :OverCommandLine<CR>%s/<C-r><C-w>//<Left>

" appendend

" vimrc �ɋL�q���ꂽ�v���O�C���ŃC���X�g�[������Ă��Ȃ����̂��Ȃ����`�F�b�N����
NeoBundleCheck
call neobundle#end()
filetype plugin indent on



"�S�p�X�y�[�X���n�C���C�g�\��
function! ZenkakuSpace()
    highlight ZenkakuSpace cterm=reverse ctermfg=DarkMagenta gui=reverse guifg=DarkMagenta
endfunction
   
if has('syntax')
    augroup ZenkakuSpace
        autocmd!
        autocmd ColorScheme       * call ZenkakuSpace()
        autocmd VimEnter,WinEnter * match ZenkakuSpace /�@/
    augroup END
    call ZenkakuSpace()
endif

" color scheme
" NeoBundle 'jpo/vim-railscasts-theme'
" colorscheme railscasts
" NeoBundle 'w0ng/vim-hybrid'
" colorscheme hybrid
NeoBundle 'tomasr/molokai'
colorscheme molokai



" KEYMAP

" �f�t�H���g��very magic
nnoremap / /\v

" Edit vimrc
nnoremap ,v :edit $MYVIMRC<CR>
nnoremap ,g :edit $MYGVIMRC<CR>

" ,t ��todo.txt���J��
" nnoremap ,t :edit $MYVIMRC<CR>


" �Q��esc ���������猟���̃n�C���C�g����߂�
nmap <Esc><Esc> :nohlsearch<CR><Esc>
" }}}

" <Leader><Leader>�ŕύX������Εۑ�
noremap <Leader><Leader> :up<CR>

" �X�y�[�X�L�[�ŃJ�[�\������ʒ��S�ɕۂ��ăX�N���[��
nnoremap <Space> <C-f>
nnoremap <S-Space> <C-b>




" NORMAL MODE

" �J�[�\���ʒu���當���܂ŃR�s�[
nnoremap Y y

" �R�}���h���C�����[�h�ւ̈ڍs
" nnoremap ; :
" nnoremap : ;

" help �Ăяo��
nnoremap <C-h> :<C-u>help<Space>
nnoremap <C-h><C-h> :<C-u>help<Space><C-r><C-w><CR>

" �s�ړ������ύX
nnoremap <silent> j gj
nnoremap <silent> k gk
nnoremap <silent> gj j
nnoremap <silent> gk k

" ������
nnoremap ZZ <Nop>
nnoremap ZQ <Nop>
nnoremap Q <Nop>

" Hack #57: ��s��}������
nnoremap <CR> :<C-u>call append(expand('.'), '')<Cr>j

" �s���E�s���ړ��������L�[�̑��Έʒu�ɂ��킹��
nnoremap <C-0> $
nnoremap <C-1> ^

nnoremap + <C-a>
nnoremap - <C-x>

" x �ŕ����������Ă����W�X�^�������Ȃ�
nnoremap x "_x

" ��ʕ����A�^�u�y�[�W
nnoremap ts :<C-u>sp<CR>
nnoremap tv :<C-u>vs<CR>
nnoremap tj <C-w>j
nnoremap tk <C-w>k
nnoremap tl <C-w>l
nnoremap th <C-w>h
nnoremap tJ <C-w>J
nnoremap tK <C-w>K
nnoremap tL <C-w>L
nnoremap tH <C-w>H
nnoremap tn gt
nnoremap tp gT
nnoremap tr <C-w>r
nnoremap t= <C-w>=
nnoremap tw <C-w>w
nnoremap to <C-w>_<C-w>|
nnoremap tO <C-w>=
nnoremap tN :<C-u>bn<CR>
nnoremap tP :<C-u>bp<CR>
nnoremap tt :<C-u>tabnew<CR>
nnoremap tT :<C-u>Unite tab<CR>
nnoremap tq :<C-u>q<CR>
nnoremap tQ :<C-u>bd<CR>
nnoremap tb :<C-u>Unite buffer_tab -buffer-name=file<CR>
nnoremap tB :<C-u>Unite buffer -buffer-name=file<CR>

call submode#enter_with('bufmove', 'n', '', 't>', '<C-w>>')
call submode#enter_with('bufmove', 'n', '', 't<', '<C-w><')
call submode#enter_with('bufmove', 'n', '', 't+', '<C-w>+')
call submode#enter_with('bufmove', 'n', '', 't-', '<C-w>-')
call submode#map('bufmove', 'n', '', '>', '<C-w>>')
call submode#map('bufmove', 'n', '', '<', '<C-w><')
call submode#map('bufmove', 'n', '', '+', '<C-w>+')
call submode#map('bufmove', 'n', '', '-', '<C-w>-')


" INSERT MODE

" jj �Ńm�[�}�����[�h�ɖ߂�
inoremap <silent> jj <esc>

" �J�[�\���ړ�
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>

" �J�[�\���O�̕����폜
" inoremap <silent> <C-h> <C-g>u<C-h>
" �J�[�\����̕����폜
" inoremap <silent> <C-d> <Del>

" ���p��, ���ʂ̐ݒ�
" inoremap { {}<Left>
" inoremap [ []<Left>
" inoremap ( ()<Left>
" inoremap " ""<Left>
" inoremap ' ''<Left>
" inoremap < <><Left>

" COMMAND MODE 

" c_CTRL-X
"   Input current buffer's directory on command line.
cnoremap <C-X> <C-R>=<SID>GetBufferDirectory()<CR>
function! s:GetBufferDirectory()
  let path = expand('%:p:h')
  let cwd = getcwd()
  let dir = '.'
  if match(path, escape(cwd, '\')) != 0
    let dir = path
  elseif strlen(path) > strlen(cwd)
    let dir = strpart(path, strlen(cwd) + 1)
  endif
  return dir . (exists('+shellslash') && !&shellslash ? '\' : '/')
endfunction


" VISUAL MODE

" �r�W���A�����[�h��v�ōs���܂őI��
vnoremap v $h



