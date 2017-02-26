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


" Status Windowの文字化けをなくす
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=0

colorscheme desert
set number 
