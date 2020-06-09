" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
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
NeoBundleLazy 'Shougo/neosnippet-snippets'
NeoBundle 'https://github.com/kaichen/vim-snipmate-ruby-snippets.git',
        \ {'name' : 'vim-snippets-ruby-snippets'}
NeoBundle 'https://github.com/garbas/vim-snipmate.git',
        \ {'name' : 'snipmate-snippets'}
NeoBundle 'kucaahbe/vim-snippets'

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
NeoBundle 'https://github.com/tpope/vim-surround.git',
        \ {'name' : 'vim-surround'}
NeoBundle 'mattn/zencoding-vim'
NeoBundle 'https://github.com/thinca/vim-quickrun.git',
        \ {'name' : 'vim-quickrun'}
NeoBundle 'https://github.com/vim-scripts/grep.vim.git',
        \ {'name' : 'grep'}
NeoBundle 'https://github.com/vim-scripts/Vim-R-plugin'
NeoBundle 'https://github.com/ervandew/screen',
        \ {'name' : 'screen'}
NeoBundle 'https://github.com/kana/vim-altr.git',
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
NeoBundle 'godlygeek/tabular'
NeoBundle "plasticboy/vim-markdown"
NeoBundle 'derekwyatt/vim-scala'
NeoBundle 'tommorris/scala-vim-snippets'
NeoBundle 'megaannum/vimside'
NeoBundle 'tpope/vim-rails'
NeoBundle 'tyru/open-browser.vim'
NeoBundle 'vim-scripts/vim-addon-mw-utils'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'hynek/vim-python-pep8-indent'
NeoBundle "nvie/vim-flake8"
NeoBundle "davidhalter/jedi-vim"
NeoBundle 'kannokanno/previm'
NeoBundle 'antoyo/vim-licenses'
NeoBundle 'vim-airline/vim-airline'
NeoBundle 'vim-airline/vim-airline-themes'
NeoBundle 'mattn/vim-maketable'
NeoBundle 'ujihisa/unite-colorscheme'
NeoBundle 'hashivim/vim-terraform'
NeoBundle 'tpope/vim-rhubarb.git'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
