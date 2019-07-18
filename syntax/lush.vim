if exists("b:current_syntax")
  finish
endif

syntax keyword lushKeyword for if func let nil range in continue break return true false context else go this import
highlight link lushKeyword Keyword

syntax match lushOperator "*"
syntax match lushOperator "\/"
syntax match lushOperator "+"
syntax match lushOperator "-"
syntax match lushOperator "?"
syntax match lushOperator "%"
syntax match lushOperator "*="
syntax match lushOperator "!="
syntax match lushOperator "=="
syntax match lushOperator ":="
syntax match lushOperator "\~="
syntax match lushOperator "="
syntax match lushOperator "+="
syntax match lushOperator "-="
highlight link lushOperator Operator

syntax match lushComment "//.*$"
syntax match lushComment "#!.*$"
highlight link lushComment Comment

call tcomment#type#Define('lush', '// %s')

syntax region lushString start=/\v"/ skip=/\v\\./ end=/\v"/
syntax region lushString start=/\v`/ skip=/\v\\./ end=/\v`/
highlight link lushString String

syn match    cCustomParen    "(" contains=cParen,cCppParen
syn match    cCustomFunc     "\w\+\s*(" contains=cCustomParen
syn match    cCustomScope    "::"
syn match    cCustomClass    "\w\+\s*::" contains=cCustomScope

hi def link cCustomFunc  Function
hi def link cCustomClass Function

let b:current_syntax = "lush"
