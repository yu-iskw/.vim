"http://qiita.com/items/0ce8ace5ced8ba2d2b1c
let g:neosnippet#enable_snipmate_compatibility = 1

" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)

" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
inoremap <silent><C-U>            <ESC>:<C-U>Unite snippet<CR>
nnoremap <silent><Space>e         :<C-U>NeoSnippetEdit -split<CR>
smap <silent><C-F>                <Plug>(neosnippet_expand_or_jump)

" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif

" load other snippets
let s:my_snippet = '~/.vim/userautoload/neosnippet/snippets/'
let g:neosnippet#snippets_directory = s:my_snippet
let s:vim_snippets_ruby_snippets = '~/.vim/bundle/vim-snippets-ruby-snippets/'
let g:neosnippet#snippets_directory = s:vim_snippets_ruby_snippets
let s:snipmate_snippets = '~/.vim/bundle/snipmate-snippets/snippets/'
let g:neosnippet#snippets_directory = s:snipmate_snippets
