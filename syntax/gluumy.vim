" Vim syntax file
" Language: gluumy
" Maintainer: klardotsh <josh@klar.sh>
" Latest Revision: 09 Dec 2022
"
" I don't really use syntax highlighting anymore, other than what is provided
" by https://github.com/karoliskoncevicius/distilled-vim, and as such, this
" defines only enough to make that colorscheme work. gluumy itself has so
" little syntax that I think it might be relatively low-value to go much
" deeper anyway (other than maybe highlighting strings, symbols, refs, etc),
" unless perhaps dynamically (something like LSP) to provide on-the-fly
" highlighting, something I've certainly considered for a different editor
" some day, but not a can of worms I care to get into right now.

if exists("b:current_syntax")
	finish
endif

syntax region gluumyCommentLine start="//" end="$" contains=gluumyTodo,gluumyFixMe
syntax keyword gluumyTodo contained TODO
syntax keyword gluumyFixMe contained FIXME

highlight default link gluumyCommentLine Comment
highlight default link gluumyTodo Todo
highlight default link gluumyFixMe Todo

let b:current_syntax = "gluumy"
