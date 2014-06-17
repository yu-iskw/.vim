nmap <C-T> <Plug>(altr-forward)
nmap <C-T> <Plug>(altr-back)

" For ruby tdd
call altr#define('lib/%.rb', 'spec/%_spec.rb', 'spec/lib/%_spec.rb')
" For rails tdd
call altr#define('app/models/%.rb', 'spec/models/%_spec.rb', 'spec/factories/%s.rb')
call altr#define('app/controllers/%.rb', 'spec/controllers/%_spec.rb')
call altr#define('app/helpers/%.rb', 'spec/helpers/%_spec.rb')
" For perl
call altr#define('lib/%.pm', 't/%.t', 't/lib/%.t')
" For Scala
call altr#define('%/main/scala/%.scala','%/test/scala/%.scala', '%/test/scala/%Suite.scala', '%/test/scala/%Test.scala')
