# NeoVimConfig

## Installation
- Run below commands

### for deoplete installation
``` zsh
$ pip2 install --upgrade neovim
$ pip3 install --upgrade neovim
```

### for deoplete-clang
```zsh
$ sudo apt install clang
```

#### for deoplete-ternjs
```zsh
$ sudo npm install -g tern
```

```zsh
$ mkdir ~/.config/nvim
$ git clone git@github.com:ShotaAk/NeoVimConfig.git ~/.config/nvim
    
$ mkdir ~/.deinPlugins


# Install submodule
$ cd ~/.config/nvim
$ git submodule init
$ git submodule update
```

- Open vim and Run below commands
```vim
" Install dein
:call dein#install()

" Init deoplete
:UpdateRemotePlugins
```
