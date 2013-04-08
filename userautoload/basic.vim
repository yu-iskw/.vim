set nocompatible
syntax enable
filetype on
filetype plugin on
filetype indent on

set foldmethod=syntax
let perl_fold=1
let g:xml_syntax_folding = 1
set foldlevel=100 "Don't autofold anything


" ファイルが更新されたら自動的にリロード
set autoread 
" 更新頻度を上げる
augroup vimrc-checktime
  autocmd!
  autocmd WinEnter * checktime
augroup END

"「他のアプリでコピーした文字をVimで貼付けたい。またはその逆も」
set clipboard=unnamed,autoselect
"  長い行の折り返しをしない 
:set wrap
" 勝手に自動改行されるのを防ぐ
set textwidth=0
" インサートモード時にバックスペースを使う
set backspace=indent,eol,start

 " Enable use of the mouse for all modes
set mouse=a

"新しい行のインデントを現在行と同じにする
set autoindent
"タブの代わりに空白文字を挿入する
set expandtab
" 検索で大文字と小文字の区別
set ignorecase
" 'ignorecase' オプションが on の時、検索文字列に大文字が含まれている場合のみ、大文字と小文字を区別 
set smartcase
"インクリメンタルサーチを行う
set incsearch
" 検索時にファイルの最後まで行ったら最初に戻る (nowrapscan:戻らない)
set wrapscan
" 検索結果のハイライト
set hlsearch
"タブ文字、行末など不可視文字を表示する
"set list
"行番号を表示する
set number
"カーソルが何行目の何列目に置かれているかを表示する。（有効:ruler/無効:noruler）
set ruler
"シフト移動幅
set shiftwidth=4
"閉じ括弧が入力されたとき、対応する括弧を表示する
set showmatch
"新しい行を作ったときに高度な自動インデントを行う
set smartindent
"行頭の余白内で Tab を打ち込むと、'shiftwidth' の数だけインデントする。
set smarttab
"ファイル内の <Tab> が対応する空白の数
set tabstop=4

" Vimの外部で変更されたことが判明したとき、自動的に読み直す
set autoread
" 保存しないで他のファイルを表示することが出来るようにする
set hidden
" バックスペースでインデントや改行を削除できるようにする
"set backspace=indent,eol,start
" 自動整形の実行方法
set formatoptions=lmoq
" コマンド (の一部) を画面の最下行に表示する
set showcmd
" カーソルが何行目の何列目に置かれているかを表示する
set ruler
" ステータス行を常に表示する
set laststatus=2
" コマンドラインに使われる画面上の行数
set cmdheight=2
" Insertモード、ReplaceモードまたはVisualモードで最終行にメッセージを表示する
set showmode
"モードラインの無効化
set nomodeline
" すべてのモードでマウスが有効
set mouse=a
"編集中のファイル名を表示する
set title

"カーソルを行頭、行末で止まらないようにする
set whichwrap=b,s,h,l,<,>,[,]
