" Keywords
syntax keyword mimsaModuleItem type
syntax keyword mimsaModuleItem def
syntax keyword mimsaModuleItem class instance
syntax keyword mimsaModuleItem test using
syntax keyword mimsaConditional if then else
syntax keyword mimsaConditional case of
syntax keyword mimsaKeyword let in

" Literals
syntax match mimsaNumber "\v<\d[0-9_]*(\.\d[0-9_]*)?>"
syntax keyword mimsaBool True False
syntax keyword mimsaUnit Unit
syntax region mimsaString start=+"+ end=+"+ skip=+\\"+ contains=@Spell
"      ^^^
" (see :help syn-pattern)

" Names
" NOTE: \< and \> match at word boundaries.
syntax match mimsaName "\v<[a-z]\w*>" contained
syntax match mimsaProperName "\v<[A-Z]\w*>" contained

" Delimiters
syntax match mimsaDelimiter "[,|.()[\]{}]"

" Comments
syntax keyword mimsaTodo NOTE TODO FIXME XXX contained
syntax region mimsaComment start="+/*+" end="+*\+" contained

" (see NAMING CONVENTIONS in :help syn-files)
highlight default link mimsaName Identifier
highlight default link mimsaProperName Type
highlight default link mimsaTodo Todo
highlight default link mimsaComment Comment
highlight default link mimsaConditional Conditional
highlight default link mimsaKeyword Keyword
highlight default link mimsaModuleItem Keyword
highlight default link mimsaDelimiter Delimiter
highlight default link mimsaProperName Type
highlight default link mimsaUnusedName Comment
highlight default link mimsaHole Debug
highlight default link mimsaNumber Number
highlight default link mimsaBool Boolean
highlight default link mimsaUnit Identifier
highlight default link mimsaString String
highlight default link mimsaOperator Operator
