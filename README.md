# README

vim の設定ファイル

vim plugin の管理は、NeoBundle を利用している。

各プラグインの設定ファイルは `.vim/userautoload` 以下に個別に配置してある。

## INSTALL

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
# execute vim command to install vim plugins by NeoBundle
:NeoBundleInstall
```

## Note

- バージョンが古い vim だと動作しない可能性がある
