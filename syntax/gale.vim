" Vim syntax file
" Language: gale
" Maintainer: klardotsh <josh@klar.sh>
" Latest Revision: 26 Nov 2024

if exists("b:current_syntax")
	finish
endif

syntax match GaleComment "\S*" contained containedin=GaleCommentRegion contains=GaleTodo,GaleFixMe
syntax region GaleCommentRegion matchgroup=GaleComment start="\s--\s" end="$" fold transparent oneline
syntax region GaleCommentRegion matchgroup=GaleComment start="^--\s" end="$" fold transparent oneline
syntax region GaleCommentRegion matchgroup=GaleComment start="^--$" end="$" fold transparent oneline
syntax region GaleCommentRegion matchgroup=GaleComment start="\s--$" end="$" fold transparent oneline
syntax keyword GaleTodo contained TODO
syntax keyword GaleFixMe contained FIXME

highlight default link GaleComment Comment
highlight default link GaleTodo Todo
highlight default link GaleFixMe Todo

syntax iskeyword :,-,=,>,=,.,?,|,{,}
syntax keyword GaleKeyword :: :- := -> => .. {} \?\? \|\| \|\>
highlight default link GaleKeyword Keyword

syn region GaleString start=+"+ skip=+\\\\\|\\"\|\\$+ excludenl end=+"+ end=+$+ keepend contains=@Spell
syn region GaleString start=+"""+ skip=+\\"+ end=+"""+ keepend contains=@Spell
highlight default link GaleString String

let b:current_syntax = "gale"
