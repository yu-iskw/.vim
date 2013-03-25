" NERDTree
map <C-e> :NERDTreeToggle<CR>

" grep.vim
nnoremap <silent><C-G><C-G> :Grep<CR>
nnoremap <silent><C-G><C-R> :Rgrep<CR>

" tab edit
nnoremap <S-Tab> gt
nnoremap tn :tabnew<CR>
nnoremap tc :tabclose<CR>
for i in range(1, 9)
    execute 'nnoremap t' . i . ' ' . i . 'gt'
endfor
