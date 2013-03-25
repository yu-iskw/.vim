set nocompatible  " be iMproved
filetype off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#rc(expand('~/.vim/bundle/'))
endif
" originalrepos on github
NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'Shougo/vimproc'
NeoBundle 'VimClojure'
NeoBundle 'Shougo/vimshell'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'jpalardy/vim-slime'
NeoBundle 'scrooloose/syntastic'
""NeoBundle 'https://bitbucket.org/kovisoft/slimv'

" 補完 {{{
NeoBundleLazy 'Shougo/neocomplcache', {
      \ 'autoload' : {
      \   'insert' : 1,
      \ }}
NeoBundleLazy 'Shougo/neosnippet', {
      \ 'autoload' : {
      \   'insert' : 1,
      \ }}
NeoBundle 'git://github.com/kaichen/vim-snipmate-ruby-snippets.git',
        \ {'name' : 'vim-snippets-ruby-snippets'}
NeoBundle 'git://github.com/honza/snipmate-snippets.git',
        \ {'name' : 'snipmate-snippets'}


NeoBundle 'Shougo/neocomplcache-rsense', {
      \ 'depends': 'Shougo/neocomplcache',
      \ 'autoload': { 'filetypes': 'ruby' }}
NeoBundleLazy 'taichouchou2/rsense-0.3', {
      \ 'build' : {
      \    'mac': 'ruby etc/config.rb > ~/.rsense',
      \    'unix': 'ruby etc/config.rb > ~/.rsense',
      \ } }

" reference環境
NeoBundleLazy 'vim-ruby/vim-ruby', {
    \ 'autoload' : { 'filetypes': ['ruby', 'eruby', 'haml'] } }
NeoBundleLazy 'taka84u9/vim-ref-ri', {
      \ 'depends': ['Shougo/unite.vim', 'thinca/vim-ref'],
      \ 'autoload': { 'filetypes': ['ruby', 'eruby', 'haml'] } }
NeoBundleLazy 'skwp/vim-rspec', {
      \ 'autoload': { 'filetypes': ['ruby', 'eruby', 'haml'] } }
NeoBundleLazy 'ruby-matchit', {
    \ 'autoload' : { 'filetypes': ['ruby', 'eruby', 'haml'] } }

" myconf
NeoBundle 'Shougo/unite-ssh'
NeoBundle 'git://github.com/sukima/xmledit.git', 
        \ {'name' : 'xmledit'}
NeoBundle 'git://github.com/h1mesuke/unite-outline.git',
        \ {'name' : 'unite-outline'}
NeoBundle 'maven-ide'
NeoBundle 'YankRing.vim'
NeoBundle 'html5.vim'
NeoBundle 'git://github.com/scrooloose/nerdtree.git',
        \ {'name' : 'nerdtree'}
NeoBundle 'git://github.com/Shougo/vimfiler.git',
        \ {'name' : 'vimfiler'}
NeoBundle 'Quich-Filter'
NeoBundle 'https://github.com/tpope/vim-fugitive',
        \ {'name' : 'vim-fugitive'}
NeoBundle 'SQLUtilities'
NeoBundle 'git://github.com/tpope/vim-surround.git',
        \ {'name' : 'vim-surround'}
NeoBundle 'mattn/zencoding-vim'
NeoBundle 'git://github.com/thinca/vim-quickrun.git',
        \ {'name' : 'vim-quickrun'}
NeoBundle 'git://github.com/vim-scripts/grep.vim.git',
        \ {'name' : 'grep'}
NeoBundle 'Vim-R-plugin'
NeoBundle 'https://github.com/ervandew/screen',
        \ {'name' : 'screen'}
NeoBundle 'git://github.com/kana/vim-altr.git',
        \ {'name' : 'vim-altr'}
NeoBundle 'petdance/vim-perl'
NeoBundle 'hotchpotch/perldoc-vim'

filetype plugin indent on     " required!
filetype indent on
syntax on
"vi上から、:NeoBundleInstallで.vimrcのNeoBundleで指定されているリポジトリのプラグインをインストールできる。
"プラグインを削除したい場合は、vimrc上からNeoBundleの記述を消して:NeoBundleCleanでできる
