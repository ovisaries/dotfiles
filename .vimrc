set nocompatible


" 画面表示の設定

set number         " 行番号を表示する
set cursorline     " カーソル行の背景色を変える
set cursorcolumn   " カーソル位置のカラムの背景色を変える
set laststatus=2   " ステータス行を常に表示
set cmdheight=2    " メッセージ表示欄を2行確保
set showmatch      " 対応する括弧を強調表示
set helpheight=999 " ヘルプを画面いっぱいに開く
set list           " 不可視文字を表示
set display=lastline " 一行が長くても表示
set pumheight=10    "補完メニューの高さ
colorscheme evening

" カーソル移動関連の設定

set backspace=indent,eol,start " Backspaceキーの影響範囲に制限を設けない
set whichwrap=b,s,h,l,<,>,[,]  " 行頭行末の左右移動で行をまたぐ
set scrolloff=8                " 上下8行の視界を確保
set sidescrolloff=16           " 左右スクロール時の視界を確保
set sidescroll=1               " 左右スクロールは一文字づつ行う

" ファイル処理関連の設定

" set confirm    " 保存されていないファイルがあるときは終了前に保存確認
" set hidden     " 保存されていないファイルがあるときでも別のファイルを開くことが出来る
" set autoread   " 外部でファイルに変更がされた場合は読みなおす
set nobackup   " ファイル保存時にバックアップファイルを作らない
set noswapfile " ファイル編集中にスワップファイルを作らない

" 検索/置換の設定

set hlsearch   " 検索文字列をハイライトする
set incsearch  " インクリメンタルサーチを行う
set ignorecase " 大文字と小文字を区別しない
set smartcase  " 大文字と小文字が混在した言葉で検索を行った場合に限り、大文字と小文字を区別する
set wrapscan   " 最後尾まで検索を終えたら次の検索で先頭に移る
set gdefault   " 置換の時 g オプションをデフォルトで有効にする

" タブ/インデントの設定

set expandtab     " タブ入力を複数の空白入力に置き換える
set tabstop=2     " 画面上でタブ文字が占める幅
set shiftwidth=2  " 自動インデントでずれる幅
set softtabstop=2 " 連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅
set autoindent    " 改行時に前の行のインデントを継続する
set smartindent   " 改行時に入力された行の末尾に合わせて次の行のインデントを増減する

" 動作環境との統合関連の設定

" OSのクリップボードをレジスタ指定無しで Yank, Put 出来るようにする
set clipboard=unnamed,unnamedplus
" マウスの入力を受け付ける
set mouse=a
" Windows でもパスの区切り文字を / にする
set shellslash
" インサートモードから抜けると自動的にIMEをオフにする
if has('gui_running')
  set iminsert=2
endif

" コマンドラインの設定

" コマンドラインモードでTABキーによるファイル名補完を有効にする
set wildmenu wildmode=list:longest,full
" コマンドラインの履歴を10000件保存する
set history=10000

if has('gui_running')
  syntax on
endif

" ターミナルの右端で文字を折り返す
set nowrap

" tempファイルを作らない。編集中に電源落ちまくるし、とかいう人はコメントアウトで
set noswapfile


" コマンドライン補完が強力になる
set wildmenu
" コマンドを画面の最下部に表示する
set showcmd


" leaderの設定
:let mapleader = ","




" neobundle settings {{{
if has('vim_starting')
  set nocompatible
  " neobundle をインストールしていない場合は自動インストール
  if !isdirectory(expand("C:/Users\K53TA/.vim/bundle/neobundle.vim/"))
    " echo "install neobundle..."
    " vim からコマンド呼び出しているだけ neobundle.vim のクローン
    " :call system("git clone git://github.com/Shougo/neobundle.vim C:/Users/K53TA/.vim/bundle/neobundle.vim")
  endif
  " runtimepath の追加は必須
  set runtimepath+=C:/Users/K53TA/.vim/bundle/neobundle.vim/
endif
call neobundle#begin(expand('C:/Users/K53TA/.vim/bundle'))
let g:neobundle_default_git_protocol='https'

" neobundle#begin - neobundle#end の間に導入するプラグインを記載します。
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

" 括弧を自動的に閉じてくれる
NeoBundle 'Townk/vim-autoclose'

" ifとかの終了宣言を自動で挿入してくれる
NeoBundleLazy 'tpope/vim-endwise', {
  \ 'autoload' : { 'insert' : 1,}}

" s[key][key][done]の４キーで画面内のどこへでも移動可能
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
let g:EasyMotion_use_migemo = 1 " Migemo機能ON
" }}}

" clever-f
NeoBundle 'rhysd/clever-f.vim'
let g:clever_f_chars_match_any_signs = ';'

NeoBundleLazy 'junegunn/vim-easy-align', {
  \ 'autoload': {
  \   'commands' : ['EasyAlign'],
  \   'mappings' : ['<Plug>(EasyAlign)'],
  \ }}

" 文章整形プラグイン
" vim-easy-align {{{
vmap <Enter> <Plug>(EasyAlign)
nmap <Leader>a <Plug>(EasyAlign)
" }}}


" true/falseとかを瞬時に切り替えてくれる
NeoBundle 'AndrewRadev/switch.vim'

" switch {{{
nmap + :Switch<CR>
nmap - :Switch<CR>
" }}}

" テキストを囲みや括弧のカーソル移動機能を拡張する
NeoBundle 'tpope/vim-surround'
NeoBundle 'vim-scripts/matchit.zip'

" コメントアウト切り替え
NeoBundle 'tyru/caw.vim'
" ,c でカーソル行をコメントアウト
" 再度 ,c でコメントアウトを解除
" 選択してから複数行の ,c も可能
nmap ,c <Plug>(caw:I:toggle)
vmap ,c <Plug>(caw:I:toggle)

" ,C でコメントアウトの解除
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


" 置換処理をハイライト表示
NeoBundle 'osyo-manga/vim-over'
" vim-overの起動
nnoremap <Leader>o :OverCommandLine<CR>%s/
" カーソル下の単語をハイライト付きで置換
nnoremap <Leader>O :OverCommandLine<CR>%s/<C-r><C-w>//<Left>

" appendend

" vimrc に記述されたプラグインでインストールされていないものがないかチェックする
NeoBundleCheck
call neobundle#end()
filetype plugin indent on



"全角スペースをハイライト表示
function! ZenkakuSpace()
    highlight ZenkakuSpace cterm=reverse ctermfg=DarkMagenta gui=reverse guifg=DarkMagenta
endfunction
   
if has('syntax')
    augroup ZenkakuSpace
        autocmd!
        autocmd ColorScheme       * call ZenkakuSpace()
        autocmd VimEnter,WinEnter * match ZenkakuSpace /　/
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

" デフォルトでvery magic
nnoremap / /\v

" Edit vimrc
nnoremap ,v :edit $MYVIMRC<CR>
nnoremap ,g :edit $MYGVIMRC<CR>

" ,t でtodo.txtを開く
" nnoremap ,t :edit $MYVIMRC<CR>


" ２回esc を押したら検索のハイライトをやめる
nmap <Esc><Esc> :nohlsearch<CR><Esc>
" }}}

" <Leader><Leader>で変更があれば保存
noremap <Leader><Leader> :up<CR>

" スペースキーでカーソルを画面中心に保ってスクロール
nnoremap <Space> <C-f>
nnoremap <S-Space> <C-b>




" NORMAL MODE

" カーソル位置から文末までコピー
nnoremap Y y

" コマンドラインモードへの移行
" nnoremap ; :
" nnoremap : ;

" help 呼び出し
nnoremap <C-h> :<C-u>help<Space>
nnoremap <C-h><C-h> :<C-u>help<Space><C-r><C-w><CR>

" 行移動挙動変更
nnoremap <silent> j gj
nnoremap <silent> k gk
nnoremap <silent> gj j
nnoremap <silent> gk k

" 無効化
nnoremap ZZ <Nop>
nnoremap ZQ <Nop>
nnoremap Q <Nop>

" Hack #57: 空行を挿入する
nnoremap <CR> :<C-u>call append(expand('.'), '')<Cr>j

" 行頭・行末移動方向をキーの相対位置にあわせる
nnoremap <C-0> $
nnoremap <C-1> ^

nnoremap + <C-a>
nnoremap - <C-x>

" x で文字を消してもレジスタを汚さない
nnoremap x "_x

" 画面分割、タブページ
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

" jj でノーマルモードに戻る
inoremap <silent> jj <esc>

" カーソル移動
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>

" カーソル前の文字削除
" inoremap <silent> <C-h> <C-g>u<C-h>
" カーソル後の文字削除
" inoremap <silent> <C-d> <Del>

" 引用符, 括弧の設定
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

" ビジュアルモード時vで行末まで選択
vnoremap v $h



