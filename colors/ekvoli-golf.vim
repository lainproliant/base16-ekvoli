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
hi CursorLine     	guibg=#046f49 gui=none
hi CursorColumn   	guibg=#046f49 gui=none


hi Normal			guifg=#ffffff guibg=#00352d
hi Error			guibg=#0018a0 gui=bold,italic,undercurl guisp=#ffffff
hi ErrorMsg			guifg=#ffffff guibg=#27ffde gui=bold,italic
hi Visual			guibg=#1fc088 guifg=#ffffff gui=bold
hi VisualNOS		guibg=#60a090 guifg=#ffffff gui=bold
hi Todo				guibg=#00d063 guifg=#ffffff gui=underline

hi NonText			guifg=#64f0e7

hi Search 			guibg=#669994 guifg=#ffffff gui=bold
hi IncSearch 		guibg=#669994 guifg=#ffffff gui=bold

hi SpecialKey		guifg=#00e057
hi Directory		guifg=#00e057
hi Title			guifg=#ade6c9 guibg=#205060 gui=underline
hi def link         mkdHeading       Title
hi WarningMsg		guifg=#ade6c9
hi WildMenu			guifg=#ffffff guibg=#00c06f
hi Pmenu			guifg=#ffffff guibg=#009064
hi PmenuSel			guifg=#ffffff guibg=#2fc0a3
hi ModeMsg			guifg=#21e267
hi MoreMsg			guifg=#21e267 gui=bold
hi Question			guifg=#21e267 gui=none

hi MatchParen		guifg=#ffffff guibg=#2fc0a3 gui=bold

hi StatusLine		guifg=#ffffff guibg=#0f755e gui=bold
hi StatusLineNC		guifg=#64f0d7 guibg=#0f755e gui=none
hi VertSplit		guifg=#2f8572 guibg=#2f8572 gui=none
hi Folded			guifg=#64f6cf guibg=#115552 gui=italic
hi FoldColumn		guifg=#ffffff guibg=#0f6658 gui=none
hi LineNr			guifg=#50b098 gui=bold

hi DiffAdd			guibg=#1fa060 guifg=#ffffff gui=bold
hi DiffChange		guibg=#1fa060 guifg=#ffffff gui=bold
hi DiffDelete		guibg=#2f8064 guifg=#ffffff gui=none
hi DiffText			guibg=#7084a0 guifg=#ffffff gui=bold

hi SpellBad 		gui=undercurl,italic guisp=#75ffbd
hi SpellCap 		gui=undercurl guisp=#7bbaa2
hi SpellRare 		gui=undercurl guisp=#80d4f0
hi SpellLocal  		gui=undercurl guisp=#c0d8e0

hi Comment   		guifg=#90bed5 gui=italic

hi Constant			guifg=#87f0cb gui=italic
hi Special			guifg=#50e0b4 gui=bold
hi Identifier	 	guifg=#7fffb5
hi Statement	  	guifg=#ffffff gui=bold
hi PreProc	 		guifg=#3effde gui=none

hi type		 		guifg=#90d0b1 gui=none
hi Ignore			guifg=bg
hi Underlined		gui=underline cterm=underline term=underline

" Tab colors
hi TabLineFill      guifg=bg
hi TabLineSel       guifg=#ffffff guibg=#3effde
hi TabLine          guifg=#ffffff guibg=#00352d

" TVO - The Vim Outliner
hi otlTab0    gui=bold,underline guifg=#eefaff
hi otlTab1    gui=bold,underline guifg=#32eed8
hi otlTab2    gui=bold,underline guifg=#21e26a
hi otlTab3    gui=bold,underline guifg=#65a5ff
hi otlTab5    gui=bold,underline guifg=#21e28a
hi otlTab4    gui=bold,underline guifg=#92f2d2
hi otlTab7    gui=bold,underline guifg=#21e279
hi otlTab6    gui=bold,underline guifg=#66aaee
hi otlTab8    gui=bold,underline guifg=#10eed0
hi otlTab9    gui=bold,underline guifg=#99eebf
hi otlTodo    gui=bold,underline guifg=#ffffff guibg=#00d063
hi otlTagRef  guifg=#ffffff guibg=#7084a0
hi otlTagDef  guifg=#ffffff guibg=#009064
