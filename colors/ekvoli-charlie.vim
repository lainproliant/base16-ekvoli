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
hi CursorLine     	guibg=#6f042a gui=none
hi CursorColumn   	guibg=#6f042a gui=none


hi Normal			guifg=#ffffffhi Normal			guifg=#ffffff guibg=#350007
hi Error			guibg=#a08800hi Error			guibg=#6000a0 gui=bold,italic,undercurl guisp=#ffffff
hi ErrorMsg			guifg=#ffffffhi ErrorMsg			guifg=#ffffff guibg=#ff2748 gui=bold,italic
hi Visual			guibg=#c01f57hi Visual			guibg=#2080c0 guifg=#ffffff gui=bold
hi VisualNOS		guibg=#a06070hi VisualNOS		guibg=#6080a0 guifg=#ffffff gui=bold
hi Todo				guibg=#d0006chi Todo				guibg=#00a0d0 guifg=#ffffff gui=underline

hi NonText			guifg=#f0646d

hi Search 			guibg=#99666ahi Search 			guibg=#667799 guifg=#ffffff gui=bold
hi IncSearch 		guibg=#99666ahi IncSearch 		guibg=#667799 guifg=#ffffff gui=bold

hi SpecialKey		guifg=#e00088
hi Directory		guifg=#e00088
hi Title			guifg=#e6adc9hi Title			guifg=#add8e6 guibg=#603020 gui=underline
hi def link         mkdHeading       Title
hi WarningMsg		guifg=#e6adc9
hi WildMenu			guifg=#ffffffhi WildMenu			guifg=#ffffff guibg=#c0004f
hi Pmenu			guifg=#ffffffhi Pmenu			guifg=#ffffff guibg=#90002b
hi PmenuSel			guifg=#ffffffhi PmenuSel			guifg=#ffffff guibg=#c02f4c
hi ModeMsg			guifg=#e2219b
hi MoreMsg			guifg=#e2219b gui=bold
hi Question			guifg=#e2219b gui=none

hi MatchParen		guifg=#ffffffhi MatchParen		guifg=#ffffff guibg=#c02f4c gui=bold

hi StatusLine		guifg=#ffffffhi StatusLine		guifg=#ffffff guibg=#750f26 gui=bold
hi StatusLineNC		guifg=#f0647dhi StatusLineNC		guifg=#65a0f0 guibg=#750f26 gui=none
hi VertSplit		guifg=#852f42hi VertSplit		guifg=#305885 guibg=#852f42 gui=none
hi Folded			guifg=#f6648bhi Folded			guifg=#65b0f6 guibg=#551114 gui=italic
hi FoldColumn		guifg=#ffffffhi FoldColumn		guifg=#ffffff guibg=#660f1d gui=none
hi LineNr			guifg=#b05068 gui=bold

hi DiffAdd			guibg=#a01f60hi DiffAdd			guibg=#2080a0 guifg=#ffffff gui=bold
hi DiffChange		guibg=#a01f60hi DiffChange		guibg=#2080a0 guifg=#ffffff gui=bold
hi DiffDelete		guibg=#802f4bhi DiffDelete		guibg=#306080 guifg=#ffffff gui=none
hi DiffText			guibg=#a08c70hi DiffText			guibg=#8070a0 guifg=#ffffff gui=bold

hi SpellBad 		gui=undercurl,italic guisp=#ff75b7
hi SpellCap 		gui=undercurl guisp=#ba7b92
hi SpellRare 		gui=undercurl guisp=#f09c80
hi SpellLocal  		gui=undercurl guisp=#e0c8c0

hi Comment   		guifg=#d5a690 gui=italic

hi Constant			guifg=#f087ab gui=italic
hi Special			guifg=#e0507b gui=bold
hi Identifier	 	guifg=#ff7fc9
hi Statement	  	guifg=#ffffff gui=bold
hi PreProc	 		guifg=#ff3e5e gui=none

hi type		 		guifg=#d090af gui=none
hi Ignore			guifg=bg
hi Underlined		gui=underline cterm=underline term=underline

" Tab colors
hi TabLineFill      guifg=bg
hi TabLineSel       guifg=#ffffffhi TabLineSel       guifg=#ffffff guibg=#ff3e5e
hi TabLine          guifg=#ffffffhi TabLine          guifg=#ffffff guibg=#350007

" TVO - The Vim Outliner
hi otlTab0    gui=bold,underline guifg=#fff2ee
hi otlTab1    gui=bold,underline guifg=#ee3248
hi otlTab2    gui=bold,underline guifg=#e22199
hi otlTab3    gui=bold,underline guifg=#ffbf65
hi otlTab5    gui=bold,underline guifg=#e2217a
hi otlTab4    gui=bold,underline guifg=#f292b2
hi otlTab7    gui=bold,underline guifg=#e22189
hi otlTab6    gui=bold,underline guifg=#eeaa66
hi otlTab8    gui=bold,underline guifg=#ee102e
hi otlTab9    gui=bold,underline guifg=#ee99c7
hi otlTodo    gui=bold,underline guifg=#ffffffhi otlTodo    gui=bold,underline guifg=#ffffff guibg=#d0006c
hi otlTagRef  guifg=#ffffffhi otlTagRef  guifg=#ffffff guibg=#a08c70
hi otlTagDef  guifg=#ffffffhi otlTagDef  guifg=#ffffff guibg=#90002b
