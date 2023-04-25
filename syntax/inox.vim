if exists("b:current_syntax")
  finish
endif

syn keyword inoxKeyword           if else switch match for walk in return break continue prune go do lifetimejob assert comp testsuite testcase on received
syn keyword inoxKeyword           manifest import allow as const var assign Mapping udata concat supersys self fn 
" todo: ad drop\-perms 
syn keyword inoxConstant          true false nil

hi def link inoxKeyword           Keyword
hi def link inoxConstant          Constant

syn match   inoxNumber            /\<-\=\d\+L\=\>\|\<0x\x\+\>/
syn match   inoxFloat             /\<-\=\%(\d\+\.\d\+\|\d\+\.\|\.\d\+\)\%([eE][+-]\=\d\+\)\=\>/
syn region  inoxString            start=+"+  skip=+\\\\\|\\$"+  end=+"+
syn region  inoxRune              start=+'+  skip=+\\\\\|\\$'+  end=+'+
syn region  inoxMultilineString   start=+`+  skip=+\\\\\|\\$`+  end=+`+
syn region  inoxRegex  start=+[%]`+  skip=+\\\\\|\\$`+  end=+`+
syn region  inoxPath start='\.\{0,2}\/' end='\($\|\s\)'
syn region  inoxPathPattern start='[%]\.\{0,2}\/' end='\($\|\s\)'
syn match   inoxNamedPattern        /[%][a-zA-Z_][0-9a-zA-Z_]*/ 

syn match   inoxDollarVariable      /[$]\{1,2}[a-zA-Z_][0-9a-zA-Z_]*/ 
syn match   inoxIdentifier /[a-zA-Z_][a-zA-Z0-9_-]*\>/
syn match   inoxUnambiguousIdentifier /#[a-zA-Z_][a-zA-Z0-9_-]*\>/
syn match   inoxCallee /[a-zA-Z_][a-zA-Z0-9_-]*!\=\([(]\)\@=/

syn match   inoxFlags /--\=[a-zA-Z_-]\+\>/


hi def link inoxNumber            Number
hi def link inoxFloat             Float
hi def link inoxString            String
hi def link inoxMultilineString   String
hi def link inoxRune              String
hi def link inoxRegex             String
hi def link inoxPath              String
hi def link inoxPathPattern       Type
hi def link inoxNamedPattern      Type

hi def link inoxDollarVariable        Identifier
hi def link inoxUnambiguousIdentifier String
hi def link inoxCallee                Function


hi def link inoxFlags              String

syn region inoxLineComment start='#[ \t]' end='$'
hi def link inoxLineComment       Comment
