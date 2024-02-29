" Keywords
syntax keyword calcModuleItem type
syntax keyword calcModuleItem def
syntax keyword calcModuleItem class instance
syntax keyword calcModuleItem test using
syntax keyword calcConditional if then else
syntax keyword calcConditional case of
syntax keyword calcKeyword let in
syntax keyword calcKeyword function import
syntax keyword calcKeyword memory global mut

" Literals
syntax match calcNumber "\v<\d[0-9_]*(\.\d[0-9_]*)?>"
syntax keyword calcBool True False
syntax keyword calcUnit Unit
syntax keyword calcInt Int8 Int16 Int32 Int64
syntax keyword calcFloat Float32 Float64
syntax region calcString start=+"+ end=+"+ skip=+\\"+ contains=@Spell
"      ^^^
" (see :help syn-pattern)

" Names
" NOTE: \< and \> match at word boundaries.
syntax match calcName "\v<[a-z]\w*>" contained
syntax match calcProperName "\v<[A-Z]\w*>" contained

" Delimiters
syntax match calcDelimiter "[,|.()[\]{}]"

" Comments
syntax keyword calcTodo NOTE TODO FIXME XXX contained
syntax region calcComment start="/\*" end="\*/"

" (see NAMING CONVENTIONS in :help syn-files)
highlight default link calcName Identifier
highlight default link calcProperName Type
highlight default link calcInt Type
highlight default link calcFloat Type
highlight default link calcTodo Todo
highlight default link calcComment Comment
highlight default link calcConditional Conditional
highlight default link calcKeyword Keyword
highlight default link calcModuleItem Keyword
highlight default link calcDelimiter Delimiter
highlight default link calcProperName Type
highlight default link calcUnusedName Comment
highlight default link calcHole Debug
highlight default link calcNumber Number
highlight default link calcBool Boolean
highlight default link calcUnit Identifier
highlight default link calcString String
highlight default link calcOperator Operator
