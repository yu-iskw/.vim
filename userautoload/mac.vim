" Mac デフォルトの vim は clipboard がサポートされていないのでその対応
" SEE ALSO http://www.smart-hacks.com/2012/04/macvim.html
map <C-c> y:call system("pbcopy", getreg("\""))<CR>
nmap <Space><C-v> :call setreg("\"",system("pbpaste"))<CR>p


if has('mac')
  if system('which gxargs')
    let Grep_Xargs_Path = 'gxargs'
  else
    let Grep_Find_Use_Xargs = 0
  endif
endif
