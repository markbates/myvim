if exists("b:current_syntax")
  finish
endif

syntax keyword potionKeyword for if func let nil range in continue break return
highlight link potionKeyword Keyword

syntax match potionOperator "*"
syntax match potionOperator "\/"
syntax match potionOperator "+"
syntax match potionOperator "-"
syntax match potionOperator "?"
syntax match potionOperator "%"
syntax match potionOperator "*="
syntax match potionOperator "!="
syntax match potionOperator "=="
syntax match potionOperator ":="
syntax match potionOperator "\~="
syntax match potionOperator "="
syntax match potionOperator "+="
syntax match potionOperator "-="
highlight link potionOperator Operator

syntax match potionComment "\/\/.*$"
highlight link potionComment Comment

syntax region potionString start=/\v"/ skip=/\v\\./ end=/\v"/
highlight link potionString String

syn match    cCustomParen    "(" contains=cParen,cCppParen
syn match    cCustomFunc     "\w\+\s*(" contains=cCustomParen
syn match    cCustomScope    "::"
syn match    cCustomClass    "\w\+\s*::" contains=cCustomScope

hi def link cCustomFunc  Function
hi def link cCustomClass Function

let b:current_syntax = "lush"
