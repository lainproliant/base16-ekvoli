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
hi CursorLine     	guibg=#0f6f04 gui=none
hi CursorColumn   	guibg=#0f6f04 gui=none


hi Normal			guifg=#ffffff guibg=#003505
hi Error			guibg=#0090a0 gui=bold,italic,undercurl guisp=#ffffff
hi ErrorMsg			guifg=#ffffff guibg=#27ff3d gui=bold,italic
hi Visual			guibg=#30c01f guifg=#ffffff gui=bold
hi VisualNOS		guibg=#60a060 guifg=#ffffff gui=bold
hi Todo				guibg=#38d000 guifg=#ffffff gui=underline

hi NonText			guifg=#64f07f

hi Search 			guibg=#66996e guifg=#ffffff gui=bold
hi IncSearch 		guibg=#66996e guifg=#ffffff gui=bold

hi SpecialKey		guifg=#50e000
hi Directory		guifg=#50e000
hi Title			guifg=#bbe6ad guibg=#206040 gui=underline
hi def link         mkdHeading       Title
hi WarningMsg		guifg=#bbe6ad
hi WildMenu			guifg=#ffffff guibg=#1fc000
hi Pmenu			guifg=#ffffff guibg=#079000
hi PmenuSel			guifg=#ffffff guibg=#2fc037
hi ModeMsg			guifg=#6be221
hi MoreMsg			guifg=#6be221 gui=bold
hi Question			guifg=#6be221 gui=none

hi MatchParen		guifg=#ffffff guibg=#2fc037 gui=bold

hi StatusLine		guifg=#ffffff guibg=#0f7512 gui=bold
hi StatusLineNC		guifg=#64f06f guibg=#0f7512 gui=none
hi VertSplit		guifg=#2f8532 guibg=#2f8532 gui=none
hi Folded			guifg=#67f664 guibg=#115520 gui=italic
hi FoldColumn		guifg=#ffffff guibg=#0f6617 gui=none
hi LineNr			guifg=#50b050 gui=bold

hi DiffAdd			guibg=#3fa01f guifg=#ffffff gui=bold
hi DiffChange		guibg=#3fa01f guifg=#ffffff gui=bold
hi DiffDelete		guibg=#38802f guifg=#ffffff gui=none
hi DiffText			guibg=#70a098 guifg=#ffffff gui=bold

hi SpellBad 		gui=undercurl,italic guisp=#95ff75
hi SpellCap 		gui=undercurl guisp=#82ba7b
hi SpellRare 		gui=undercurl guisp=#80f0b8
hi SpellLocal  		gui=undercurl guisp=#c0e0d0

hi Comment   		guifg=#90d5b7 gui=italic

hi Constant			guifg=#91f087 gui=italic
hi Special			guifg=#57e050 gui=bold
hi Identifier	 	guifg=#a9ff7f
hi Statement	  	guifg=#ffffff gui=bold
hi PreProc	 		guifg=#3eff4e gui=none

hi type		 		guifg=#9fd090 gui=none
hi Ignore			guifg=bg
hi Underlined		gui=underline cterm=underline term=underline

" Tab colors
hi TabLineFill      guifg=bg
hi TabLineSel       guifg=#ffffff guibg=#3eff4e
hi TabLine          guifg=#ffffff guibg=#003505

" TVO - The Vim Outliner
hi otlTab0    gui=bold,underline guifg=#eefff6
hi otlTab1    gui=bold,underline guifg=#32ee4c
hi otlTab2    gui=bold,underline guifg=#6ae221
hi otlTab3    gui=bold,underline guifg=#65ffe5
hi otlTab5    gui=bold,underline guifg=#4ae221
hi otlTab4    gui=bold,underline guifg=#9af292
hi otlTab7    gui=bold,underline guifg=#59e221
hi otlTab6    gui=bold,underline guifg=#66eecc
hi otlTab8    gui=bold,underline guifg=#10ee2a
hi otlTab9    gui=bold,underline guifg=#b2ee99
hi otlTodo    gui=bold,underline guifg=#ffffff guibg=#38d000
hi otlTagRef  guifg=#ffffff guibg=#70a098
hi otlTagDef  guifg=#ffffff guibg=#079000
