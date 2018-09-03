# NeoVimConfig

## Installation
- Run below commands

# for deoplete installation
$ sudo pip2 install --upgrade neovim
$ sudo pip3 install --upgrade neovim

# for deoplete-clang
$ sudo apt install clang

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
