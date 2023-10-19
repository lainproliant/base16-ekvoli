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


hi Normal			guifg=#ffffff guibg=#001535#350007
hi Error			guibg=#a08800 gui=bold,italic,undercurl guisp=#ffffff#ffffff
hi ErrorMsg			guifg=#ffffff guibg=#287eff gui=bold,italic#ff2748 gui=bold,italic
hi Visual			guibg=#c01f57 guifg=#ffffff gui=bold#ffffff gui=bold
hi VisualNOS		guibg=#a06070 guifg=#ffffff gui=bold#ffffff gui=bold
hi Todo				guibg=#d0006c guifg=#ffffff gui=underline#ffffff gui=underline

hi NonText			guifg=#f0646d

hi Search 			guibg=#99666a guifg=#ffffff gui=bold#ffffff gui=bold
hi IncSearch 		guibg=#99666a guifg=#ffffff gui=bold#ffffff gui=bold

hi SpecialKey		guifg=#e00088
hi Directory		guifg=#e00088
hi Title			guifg=#e6adc9 guibg=#202060 gui=underline#603020 gui=underline
hi def link         mkdHeading       Title
hi WarningMsg		guifg=#e6adc9
hi WildMenu			guifg=#ffffff guibg=#0080c0#c0004f
hi Pmenu			guifg=#ffffff guibg=#005090#90002b
hi PmenuSel			guifg=#ffffff guibg=#3070c0#c02f4c
hi ModeMsg			guifg=#e2219b
hi MoreMsg			guifg=#e2219b gui=bold
hi Question			guifg=#e2219b gui=none

hi MatchParen		guifg=#ffffff guibg=#3070c0 gui=bold#c02f4c gui=bold

hi StatusLine		guifg=#ffffff guibg=#104075 gui=bold#750f26 gui=bold
hi StatusLineNC		guifg=#f0647d guibg=#104075 gui=none#750f26 gui=none
hi VertSplit		guifg=#852f42 guibg=#305885 gui=none#852f42 gui=none
hi Folded			guifg=#f6648b guibg=#122555 gui=italic#551114 gui=italic
hi FoldColumn		guifg=#ffffff guibg=#103366 gui=none#660f1d gui=none
hi LineNr			guifg=#b05068 gui=bold

hi DiffAdd			guibg=#a01f60 guifg=#ffffff gui=bold#ffffff gui=bold
hi DiffChange		guibg=#a01f60 guifg=#ffffff gui=bold#ffffff gui=bold
hi DiffDelete		guibg=#802f4b guifg=#ffffff gui=none#ffffff gui=none
hi DiffText			guibg=#a08c70 guifg=#ffffff gui=bold#ffffff gui=bold

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
hi TabLineSel       guifg=#ffffff guibg=#3f8fff#ff3e5e
hi TabLine          guifg=#ffffff guibg=#001535#350007

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
hi otlTodo    gui=bold,underline guifg=#ffffff guibg=#00a0d0#d0006c
hi otlTagRef  guifg=#ffffff guibg=#8070a0#a08c70
hi otlTagDef  guifg=#ffffff guibg=#005090#90002b
