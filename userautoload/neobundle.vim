set nocompatible  " be iMproved
filetype off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#rc(expand('~/.vim/bundle/'))
endif
" originalrepos on github
NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'Shougo/vimproc', {
      \ 'build' : {
      \     'mac' : 'make -f make_mac.mak',
      \    },
      \ }
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
NeoBundle 'https://github.com/kaichen/vim-snipmate-ruby-snippets.git',
        \ {'name' : 'vim-snippets-ruby-snippets'}
NeoBundle 'https://github.com/garbas/vim-snipmate.git',
        \ {'name' : 'snipmate-snippets'}
NeoBundle 'kucaahbe/vim-snippets'


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
NeoBundle 'https://github.com/Shougo/unite-outline.git',
        \ {'name' : 'unite-outline'}
NeoBundle 'maven-ide'
NeoBundle 'YankRing.vim'
"NeoBundle 'html5.vim'
NeoBundle 'https://github.com/scrooloose/nerdtree.git',
        \ {'name' : 'nerdtree'}
NeoBundle 'https://github.com/scrooloose/nerdtree.git',
        \ {'name' : 'vimfiler'}
NeoBundle 'Quich-Filter'
NeoBundle 'https://github.com/tpope/vim-fugitive',
        \ {'name' : 'vim-fugitive'}
NeoBundle 'SQLUtilities'
NeoBundle 'http://github.com/tpope/vim-surround.git',
        \ {'name' : 'vim-surround'}
NeoBundle 'mattn/zencoding-vim'
NeoBundle 'http://github.com/thinca/vim-quickrun.git',
        \ {'name' : 'vim-quickrun'}
NeoBundle 'http://github.com/vim-scripts/grep.vim.git',
        \ {'name' : 'grep'}
NeoBundle 'https://github.com/vim-scripts/Vim-R-plugin'
NeoBundle 'https://github.com/ervandew/screen',
        \ {'name' : 'screen'}
NeoBundle 'http://github.com/kana/vim-altr.git',
        \ {'name' : 'vim-altr'}
NeoBundle 'petdance/vim-perl'
NeoBundle 'hotchpotch/perldoc-vim'
NeoBundle 'vim-scripts/Align'
NeoBundle 'rhysd/unite-ruby-require.vim'
NeoBundle 'vim-scripts/mru.vim'
NeoBundle 'vim-scripts/L9'
NeoBundle 'vim-scripts/FuzzyFinder'
NeoBundle 'vim-scripts/MultipleSearch'
NeoBundle 'kana/vim-smartinput'
NeoBundle 'vim-scripts/taglist.vim'
NeoBundle 'vim-scripts/AutoComplPop'
NeoBundle 'https://github.com/plasticboy/vim-markdown.git'
NeoBundle 'https://github.com/derekwyatt/vim-scala.git'
NeoBundle 'https://github.com/tommorris/scala-vim-snippets.git'
NeoBundle 'https://github.com/megaannum/vimside.git'
NeoBundle 'https://github.com/tpope/vim-rails.git'
NeoBundle 'https://github.com/tyru/open-browser.vim.git'
NeoBundle 'https://github.com/vim-scripts/vim-addon-mw-utils.git'
NeoBundle 'https://github.com/mattn/emmet-vim.git'
NeoBundle 'https://github.com/hynek/vim-python-pep8-indent.git'
NeoBundle "davidhalter/jedi-vim"
NeoBundle 'https://github.com/kannokanno/previm.git'

filetype plugin indent on     " required!
filetype indent on
syntax on
"vi上から、:NeoBundleInstallで.vimrcのNeoBundleで指定されているリポジトリのプラグインをインストールできる。
"プラグインを削除したい場合は、vimrc上からNeoBundleの記述を消して:NeoBundleCleanでできる
