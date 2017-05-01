# `.vim`

This is my Vim configuration.

`NeoBundle` allows me to manage plugins very easily.
The configurations are nested for making it easy to understand.

- `.vim/userautoload/basic.vim`: basics of vim configurations
- `.vim/userautoload/color.vim`: vim color configurations
- `.vim/userautoload/keymap.vim`: vim key map configurations
- `.vim/userautoload/neobundle.vim`: manage plugins

## Install

```
# clone .vimrc etc
git clone https://github.com/hereticreader/.vim.git ~/.vim

# install NeoBundle
# SEE ALSO: https://github.com/Shougo/neobundle.vim
git clone https://github.com/Shougo/neobundle.vim.git ~/.vim/bundle/neobundle.vim

# create .vimrc symbolic link
# if you have already ~/.vimrc file, then back up it
cd ~
ln -s ~/.vim/.vimrc
```

```
" execute vim command to install vim plugins by NeoBundle
:NeoBundleInstall
```

## Note
This configurations might not work on old Vim.
