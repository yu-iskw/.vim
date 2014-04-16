" ruby
au BufNewFile,BufRead *.rb      set filetype=ruby
au BufNewFile,BufRead *_spec.rb set filetype=ruby.spec
au BufNewFile,BufRead *.pbc set filetype=ruby

" markdown
autocmd BufRead,BufNewFile *.mkd  setfiletype mkd
autocmd BufRead,BufNewFile *.md   setfiletype mkd
autocmd BufRead,BufNewFile *.Rmd  setfiletype mkd
" teached by vimtaku
"au BufRead,BufNewFile *.Rmd  setlocal filetype=md
