if &compatible
  set nocompatible
endif

" reset augroup
augroup MyAutoCmd
    autocmd!
augroup END

" プラグインをインストールするディレクトリ
let s:dein_plugins_dir = expand("~/.deinPlugins")

" dein.vim本体
let s:dein_repo_dir = expand("~/.config/nvim/dein")

execute "set runtimepath^=" .s:dein_repo_dir

if dein#load_state(s:dein_plugins_dir)
  call dein#begin(s:dein_plugins_dir)

  let s:main_toml = expand("~/.config/nvim/toml/main.toml")
  let s:lazy_toml = expand("~/.config/nvim/toml/lazy.toml")

  " TOMLを読み込み、キャッシュしておく
  call dein#load_toml(s:main_toml, {"lazy": 0})
  call dein#load_toml(s:lazy_toml, {"lazy": 1})

  call dein#end()
  call dein#save_state()
endif

" 未インストールのプラグインをインストール
if has("vim_starting") && dein#check_install()
    call dein#install()
endif

filetype plugin indent on
syntax enable

" Vim Base Setting Scripts---------------------

" Status Windowの文字化けをなくす
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=0

colorscheme molokai

set number         " 行番号を表示する
set cursorline     " カーソル行の背景色を変える
set cursorcolumn   " カーソル位置のカラムの背景色を変える
set laststatus=2   " ステータス行を常に表示
set cmdheight=2    " メッセージ表示欄を2行確保
set showmatch      " 対応する括弧を強調表示
set matchtime=3    " 対応括弧のハイライト表示を3秒にする
set helpheight=999 " ヘルプを画面いっぱいに開く
set list           " 不可視文字を表示
set wrap           " 長いテキストの折り返し
set textwidth=0    " 自動的に改行が入るのを無効化
set colorcolumn=80 " 80文字目にラインを入れる
set splitbelow     " 横分割で下にウィンドウを開く
set splitright     " 縦分割で右にウィンドウを開く
set completeopt=menuone " 補完時にプレビューを表示しない"

" 不可視文字の表示記号指定
set listchars=tab:▸\ ,eol:↲,extends:❯,precedes:❮

set backspace=indent,eol,start " Backspaceキーの影響範囲に制限を設けない
set whichwrap=b,s,h,l,<,>,[,]  " 行頭行末の左右移動で行をまたぐ
set scrolloff=8                " 上下8行の視界を確保
set sidescrolloff=16           " 左右スクロール時の視界を確保
set sidescroll=1               " 左右スクロールは一文字づつ行う

" ファイル処理関連の設定

set confirm    " 保存されていないファイルがあるときは終了前に保存確認
set hidden     " 保存されていないファイルがあるときでも別のファイルを開くことが出来る
set autoread   "外部でファイルに変更がされた場合は読みなおす
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
set tabstop=4     " 画面上でタブ文字が占める幅
set shiftwidth=4  " 自動インデントでずれる幅
set softtabstop=4 " 連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅
set autoindent    " 改行時に前の行のインデントを継続する
set smartindent   " 改行時に入力された行の末尾に合わせて次の行のインデントを増

" OSのクリップボードをレジスタ指定無しで Yank, Put 出来るようにする
set clipboard=unnamed,unnamedplus
" マウスの入力を受け付ける
set mouse=a

" キーマッピング
nmap <silent> <Esc><Esc> :nohlsearch<CR> " ESCを二回押して検索のハイライトを消す
nnoremap H <C-w>h   " ウィンドウ分割時の移動を[H,J,K,L]で可能に
nnoremap J <C-w>j
nnoremap K <C-w>k
nnoremap L <C-w>l

" End Vim Base Setting Scripts------------------



" ROS Setting Scripts------------------
autocmd BufRead,BufNewFile *.launch set filetype=xml
" End ROS Setting Scripts------------------<Paste>
