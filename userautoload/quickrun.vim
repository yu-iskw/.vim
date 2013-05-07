" filtype
augroup QuickRunUnitTest
  autocmd!
  autocmd BufWinEnter,BufNewFile *test.php set filetype=php.unit
  autocmd BufWinEnter,BufNewFile test_*.py set filetype=python.unit
  autocmd BufWinEnter,BufNewFile *.t       set filetype=perl.unit
  autocmd BufWinEnter,BufNewFile *_spec.rb set filetype=ruby.rspec

  autocmd BufWritePost *_spec.rb :QuickRun
  autocmd BufWritePost *.t       :QuickRun
augroup END

let g:quickrun_config = {}
" php
let g:quickrun_config['php.unit'] = {'command': 'phpunitrunner'}
" python
let g:quickrun_config['python.unit'] = {'command': 'nosetests', 'cmdopt': '-s -vv'}
" perl test
let g:quickrun_config['perl.unit'] = {'command': 'prove', 'cmdopt': '-I . -I ./lib'}
" rspec (ruby)
let g:quickrun_config['ruby.rspec'] = {'command': 'rspec', 'cmdopt': '--format progress -I .', 'outputter': 'buffer:filetype=rspec-result'}
let g:quickrun_config['markdown'] = {'command': 'markdown'}
