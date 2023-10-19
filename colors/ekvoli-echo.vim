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
hi CursorLine     	guibg=#5f6f04 gui=none
hi CursorColumn   	guibg=#5f6f04 gui=none


hi Normal			guifg=#ffffff guibg=#223500
hi Error			guibg=#00a037 gui=bold,italic,undercurl guisp=#ffffff
hi ErrorMsg			guifg=#ffffff guibg=#b3ff27 gui=bold,italic
hi Visual			guibg=#a8c01f guifg=#ffffff gui=bold
hi VisualNOS		guibg=#90a060 guifg=#ffffff gui=bold
hi Todo				guibg=#d0cb00 guifg=#ffffff gui=underline

hi NonText			guifg=#b2f064

hi Search 			guibg=#839966 guifg=#ffffff gui=bold
hi IncSearch 		guibg=#839966 guifg=#ffffff gui=bold

hi SpecialKey		guifg=#e0c700
hi Directory		guifg=#e0c700
hi Title			guifg=#e6e5ad guibg=#306020 gui=underline
hi def link         mkdHeading       Title
hi WarningMsg		guifg=#e6e5ad
hi WildMenu			guifg=#ffffff guibg=#afc000
hi Pmenu			guifg=#ffffff guibg=#739000
hi PmenuSel			guifg=#ffffff guibg=#94c02f
hi ModeMsg			guifg=#e2c821
hi MoreMsg			guifg=#e2c821 gui=bold
hi Question			guifg=#e2c821 gui=none

hi MatchParen		guifg=#ffffff guibg=#94c02f gui=bold

hi StatusLine		guifg=#ffffff guibg=#59750f gui=bold
hi StatusLineNC		guifg=#c2f064 guibg=#59750f gui=none
hi VertSplit		guifg=#6d852f guibg=#6d852f gui=none
hi Folded			guifg=#d4f664 guibg=#355511 gui=italic
hi FoldColumn		guifg=#ffffff guibg=#48660f gui=none
hi LineNr			guifg=#98b050 gui=bold

hi DiffAdd			guibg=#a0a01f guifg=#ffffff gui=bold
hi DiffChange		guibg=#a0a01f guifg=#ffffff gui=bold
hi DiffDelete		guibg=#74802f guifg=#ffffff gui=none
hi DiffText			guibg=#70a074 guifg=#ffffff gui=bold

hi SpellBad 		gui=undercurl,italic guisp=#fcff75
hi SpellCap 		gui=undercurl guisp=#b1ba7b
hi SpellRare 		gui=undercurl guisp=#9cf080
hi SpellLocal  		gui=undercurl guisp=#c8e0c0

hi Comment   		guifg=#9cd590 gui=italic

hi Constant			guifg=#e0f087 gui=italic
hi Special			guifg=#c3e050 gui=bold
hi Identifier	 	guifg=#fff57f
hi Statement	  	guifg=#ffffff gui=bold
hi PreProc	 		guifg=#beff3e gui=none

hi type		 		guifg=#cfd090 gui=none
hi Ignore			guifg=bg
hi Underlined		gui=underline cterm=underline term=underline

" Tab colors
hi TabLineFill      guifg=bg
hi TabLineSel       guifg=#ffffff guibg=#beff3e
hi TabLine          guifg=#ffffff guibg=#223500

" TVO - The Vim Outliner
hi otlTab0    gui=bold,underline guifg=#f2ffee
hi otlTab1    gui=bold,underline guifg=#a5ee32
hi otlTab2    gui=bold,underline guifg=#e2ca21
hi otlTab3    gui=bold,underline guifg=#65ff72
hi otlTab5    gui=bold,underline guifg=#dae221
hi otlTab4    gui=bold,underline guifg=#e2f292
hi otlTab7    gui=bold,underline guifg=#e2da21
hi otlTab6    gui=bold,underline guifg=#66ee66
hi otlTab8    gui=bold,underline guifg=#9dee10
hi otlTab9    gui=bold,underline guifg=#eee999
hi otlTodo    gui=bold,underline guifg=#ffffff guibg=#d0cb00
hi otlTagRef  guifg=#ffffff guibg=#70a074
hi otlTagDef  guifg=#ffffff guibg=#739000
