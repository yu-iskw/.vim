" line length
if exists('&colorcolumn')
    set colorcolumn=+1
    autocmd FileType sh,java,scala setlocal textwidth=80
    autocmd FileType python,r setlocal textwidth=100
endif
