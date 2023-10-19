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
hi CursorLine     	guibg=#64046f gui=none
hi CursorColumn   	guibg=#64046f gui=none


hi Normal			guifg=#ffffff guibg=#35002f
hi Error			guibg=#a01000 gui=bold,italic,undercurl guisp=#ffffff
hi ErrorMsg			guifg=#ffffff guibg=#ff27e9 gui=bold,italic
hi Visual			guibg=#b01fc0 guifg=#ffffff gui=bold
hi VisualNOS		guibg=#a060a0 guifg=#ffffff gui=bold
hi Todo				guibg=#9700d0 guifg=#ffffff gui=underline

hi NonText			guifg=#f064d5

hi Search 			guibg=#996690 guifg=#ffffff gui=bold
hi IncSearch 		guibg=#996690 guifg=#ffffff gui=bold

hi SpecialKey		guifg=#8f00e0
hi Directory		guifg=#8f00e0
hi Title			guifg=#d7ade6 guibg=#602040 gui=underline
hi def link         mkdHeading       Title
hi WarningMsg		guifg=#d7ade6
hi WildMenu			guifg=#ffffff guibg=#a000c0
hi Pmenu			guifg=#ffffff guibg=#880090
hi PmenuSel			guifg=#ffffff guibg=#c02fb8
hi ModeMsg			guifg=#9821e2
hi MoreMsg			guifg=#9821e2 gui=bold
hi Question			guifg=#9821e2 gui=none

hi MatchParen		guifg=#ffffff guibg=#c02fb8 gui=bold

hi StatusLine		guifg=#ffffff guibg=#750f72 gui=bold
hi StatusLineNC		guifg=#f064e5 guibg=#750f72 gui=none
hi VertSplit		guifg=#852f82 guibg=#852f82 gui=none
hi Folded			guifg=#f364f6 guibg=#551146 gui=italic
hi FoldColumn		guifg=#ffffff guibg=#660f5d gui=none
hi LineNr			guifg=#b050b0 gui=bold

hi DiffAdd			guibg=#801fa0 guifg=#ffffff gui=bold
hi DiffChange		guibg=#801fa0 guifg=#ffffff gui=bold
hi DiffDelete		guibg=#782f80 guifg=#ffffff gui=none
hi DiffText			guibg=#a07077 guifg=#ffffff gui=bold

hi SpellBad 		gui=undercurl,italic guisp=#df75ff
hi SpellCap 		gui=undercurl guisp=#b27bba
hi SpellRare 		gui=undercurl guisp=#f080b8
hi SpellLocal  		gui=undercurl guisp=#e0c0d0

hi Comment   		guifg=#d590ad gui=italic

hi Constant			guifg=#e587f0 gui=italic
hi Special			guifg=#d850e0 gui=bold
hi Identifier	 	guifg=#d57fff
hi Statement	  	guifg=#ffffff gui=bold
hi PreProc	 		guifg=#ff3eee gui=none

hi type		 		guifg=#c190d0 gui=none
hi Ignore			guifg=bg
hi Underlined		gui=underline cterm=underline term=underline

" Tab colors
hi TabLineFill      guifg=bg
hi TabLineSel       guifg=#ffffff guibg=#ff3eee
hi TabLine          guifg=#ffffff guibg=#35002f

" TVO - The Vim Outliner
hi otlTab0    gui=bold,underline guifg=#ffeef6
hi otlTab1    gui=bold,underline guifg=#ee32d4
hi otlTab2    gui=bold,underline guifg=#9921e2
hi otlTab3    gui=bold,underline guifg=#ff657f
hi otlTab5    gui=bold,underline guifg=#b921e2
hi otlTab4    gui=bold,underline guifg=#e992f2
hi otlTab7    gui=bold,underline guifg=#aa21e2
hi otlTab6    gui=bold,underline guifg=#ee6688
hi otlTab8    gui=bold,underline guifg=#ee10d4
hi otlTab9    gui=bold,underline guifg=#d499ee
hi otlTodo    gui=bold,underline guifg=#ffffff guibg=#9700d0
hi otlTagRef  guifg=#ffffff guibg=#a07077
hi otlTagDef  guifg=#ffffff guibg=#880090
