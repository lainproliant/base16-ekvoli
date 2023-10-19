" Vim color file - ekvoli-ng and variants
" NG Maintainer: Lain Musgrove <lain.proliant@gmail.com>
" Original Author:	Preben Randhol <randhol+ekvoli@pvv.org>
" Last Change:	2023 Oct 18
" License: 		GNU Public License (GPL) v2

highlight clear Normal
set background&

" Remove all existing highlighting and set the defaults.
highlight clear

" Load the syntax highlighting defaults, if it's enabled.
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "ekvoli"

hi Cursor         	guifg=#ffffff gui=reverse,bold
hi iCursor        	guifg=#ffffff gui=reverse,bold
hi rCursor        	guifg=#ffffff gui=reverse,bold
hi vCursor        	guifg=#ffffff gui=reverse,bold
hi lCursor        	guifg=#ffffff gui=reverse,bold
hi nCursor        	guifg=#ffffff gui=reverse,bold
hi CursorLine     	guibg=#14046f gui=none
hi CursorColumn   	guibg=#14046f gui=none


hi Normal			guifg=#ffffff guibg=#120035
hi Error			guibg=#a00068 gui=bold,italic,undercurl guisp=#ffffff
hi ErrorMsg			guifg=#ffffff guibg=#7327ff gui=bold,italic
hi Visual			guibg=#381fc0 guifg=#ffffff gui=bold
hi VisualNOS		guibg=#7060a0 guifg=#ffffff gui=bold
hi Todo				guibg=#0004d0 guifg=#ffffff gui=underline

hi NonText			guifg=#a264f0

hi Search 			guibg=#7b6699 guifg=#ffffff gui=bold
hi IncSearch 		guibg=#7b6699 guifg=#ffffff gui=bold

hi SpecialKey		guifg=#0018e0
hi Directory		guifg=#0018e0
hi Title			guifg=#adade6 guibg=#502060 gui=underline
hi def link         mkdHeading       Title
hi WarningMsg		guifg=#adade6
hi WildMenu			guifg=#ffffff guibg=#1000c0
hi Pmenu			guifg=#ffffff guibg=#1c0090
hi PmenuSel			guifg=#ffffff guibg=#5b2fc0
hi ModeMsg			guifg=#213ce2
hi MoreMsg			guifg=#213ce2 gui=bold
hi Question			guifg=#213ce2 gui=none

hi MatchParen		guifg=#ffffff guibg=#5b2fc0 gui=bold

hi StatusLine		guifg=#ffffff guibg=#2b0f75 gui=bold
hi StatusLineNC		guifg=#9264f0 guibg=#2b0f75 gui=none
hi VertSplit		guifg=#472f85 guibg=#472f85 gui=none
hi Folded			guifg=#8664f6 guibg=#311155 gui=italic
hi FoldColumn		guifg=#ffffff guibg=#2d0f66 gui=none
hi LineNr			guifg=#6850b0 gui=bold

hi DiffAdd			guibg=#1f1fa0 guifg=#ffffff gui=bold
hi DiffChange		guibg=#1f1fa0 guifg=#ffffff gui=bold
hi DiffDelete		guibg=#3c2f80 guifg=#ffffff gui=none
hi DiffText			guibg=#a0709b guifg=#ffffff gui=bold

hi SpellBad 		gui=undercurl,italic guisp=#7875ff
hi SpellCap 		gui=undercurl guisp=#837bba
hi SpellRare 		gui=undercurl guisp=#d480f0
hi SpellLocal  		gui=undercurl guisp=#d8c0e0

hi Comment   		guifg=#c890d5 gui=italic

hi Constant			guifg=#9687f0 gui=italic
hi Special			guifg=#6c50e0 gui=bold
hi Identifier	 	guifg=#7f89ff
hi Statement	  	guifg=#ffffff gui=bold
hi PreProc	 		guifg=#7f3eff gui=none

hi type		 		guifg=#9190d0 gui=none
hi Ignore			guifg=bg
hi Underlined		gui=underline cterm=underline term=underline

" Tab colors
hi TabLineFill      guifg=bg
hi TabLineSel       guifg=#ffffff guibg=#7f3eff
hi TabLine          guifg=#ffffff guibg=#120035

" TVO - The Vim Outliner
hi otlTab0    gui=bold,underline guifg=#faeeff
hi otlTab1    gui=bold,underline guifg=#7b32ee
hi otlTab2    gui=bold,underline guifg=#2139e2
hi otlTab3    gui=bold,underline guifg=#ff65f2
hi otlTab5    gui=bold,underline guifg=#2921e2
hi otlTab4    gui=bold,underline guifg=#a192f2
hi otlTab7    gui=bold,underline guifg=#212ae2
hi otlTab6    gui=bold,underline guifg=#ee66ee
hi otlTab8    gui=bold,underline guifg=#6110ee
hi otlTab9    gui=bold,underline guifg=#999dee
hi otlTodo    gui=bold,underline guifg=#ffffff guibg=#0004d0
hi otlTagRef  guifg=#ffffff guibg=#a0709b
hi otlTagDef  guifg=#ffffff guibg=#1c0090
