let g:unite_split_rule = 'botright'
noremap ,m <ESC>:Unite -vertical -winwidth=40 -no-quit outline<Return>
noremap ,n <ESC>:Unite -winwidth=100 -no-quit outline<Return>

" SEE ALSO: http://d.hatena.ne.jp/h1mesuke/20110907/p1
let g:unite_source_outline_filetype_options = {
      \ '*': {
      \   'auto_update': 1,
      \   'auto_update_event': 'hold',
      \},
      \}
