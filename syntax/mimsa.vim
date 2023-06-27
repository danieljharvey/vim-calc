" Keywords
syntax keyword mimsaKeyword type alias
syntax keyword mimsaKeyword def
syntax keyword mimsaKeyword if then else
syntax keyword mimsaKeyword case of
syntax keyword mimsaKeyword let in

" Literals
syntax match mimsaNumber "\v<\d[0-9_]*(\.\d[0-9_]*)?>"
syntax keyword mimsaBool True False
syntax keyword mimsaUnit unit
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
syntax match mimsaComment "\v--.*$" contains=mimsaTodo,@Spell

" (see NAMING CONVENTIONS in :help syn-files)
highlight default link mimsaTodo Todo
highlight default link mimsaComment Comment
highlight default link mimsaConditional Conditional
highlight default link mimsaKeyword Keyword
highlight default link mimsaDelimiter Delimiter
highlight default link mimsaProperName Type
highlight default link mimsaUnusedName Comment
highlight default link mimsaHole Debug
highlight default link mimsaNumber Number
highlight default link mimsaBool Boolean
highlight default link mimsaUnit Identifier
highlight default link mimsaString String
highlight default link mimsaOperator Operator
