" Vim syntax file
" Language: gale
" Maintainer: klardotsh <josh@klar.sh>
" Latest Revision: 18 Jan 2023
"
" I don't use much syntax highlighting anymore, other than what is provided by
" https://git.sr.ht/~jbauer/vim-monochrome, and as such, this defines only
" enough to make that colorscheme (or distilled, nofrils, etc.) look halfway
" reasonable. Gale itself has so little syntax that I think it might be
" relatively low-value to go much deeper anyway (other than maybe highlighting
" strings, symbols, refs, etc), unless perhaps dynamically (something like
" LSP) to provide on-the-fly highlighting, something I've certainly considered
" for a different editor some day, but not a can of worms I care to get into
" right now.

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

let b:current_syntax = "gale"
