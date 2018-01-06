# NeoVimConfig

## Installation
- Run below commands

```zsh
$ mkdir ~/.config/nvim
$ git clone git@github.com:ShotaAk/NeoVimConfig.git ~/.config/nvim
    
$ mkdir ~/.deinPlugins

# for deoplete installation
$ sudo pip3 install neovim

# Install submodule
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
