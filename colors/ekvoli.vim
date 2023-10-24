" Vim color file - ekvoli-ng and variants
" NG Maintainer: Lain Musgrove <lain.proliant@gmail.com>
" Original Author:   Preben Randhol <randhol+ekvoli@pvv.org>
" Last Change:   2023 Oct 18
" License:       GNU Public License (GPL) v2

highlight clear Normal
set background&

" Remove all existing highlighting and set the defaults.
highlight clear

" Load the syntax highlighting defaults, if it's enabled.
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "ekvoli"

hi Cursor           guifg=#ffffff gui=reverse,bold
hi iCursor          guifg=#ffffff gui=reverse,bold
hi rCursor          guifg=#ffffff gui=reverse,bold
hi vCursor          guifg=#ffffff gui=reverse,bold
hi lCursor          guifg=#ffffff gui=reverse,bold
hi nCursor          guifg=#ffffff gui=reverse,bold
hi CursorLine       guibg=#05456f gui=none
hi CursorColumn     guibg=#05456f gui=none


hi Normal           guifg=#ffffff guibg=#001535
hi Error            guibg=#6000a0 gui=bold,italic,undercurl guisp=#ffffff
hi ErrorMsg         guifg=#ffffff guibg=#287eff gui=bold,italic
hi Visual           guibg=#2080c0 guifg=#ffffff gui=bold
hi VisualNOS        guibg=#6080a0 guifg=#ffffff gui=bold
hi Todo             guibg=#00a0d0 guifg=#ffffff gui=underline

hi NonText          guifg=#6590f0

hi Search           guibg=#667799 guifg=#ffffff gui=bold
hi IncSearch        guibg=#667799 guifg=#ffffff gui=bold

hi SpecialKey       guifg=#00c0e0
hi Directory        guifg=#00c0e0
hi Title            guifg=#add8e6 guibg=#202060 gui=underline
hi def link mkdHeading Title
hi WarningMsg       guifg=#add8e6
hi WildMenu         guifg=#ffffff guibg=#0080c0
hi Pmenu            guifg=#ffffff guibg=#005090
hi PmenuSel         guifg=#ffffff guibg=#3070c0
hi CocFloating      guibg=#ffffff guifg=#005090
hi CocErrorFloat    guibg=#ffffff guifg=#6000a0
hi CocMenueSel      guibg=#ffffff guifg=#3070c0
hi ModeMsg          guifg=#22cce2
hi MoreMsg          guifg=#22cce2 gui=bold
hi Question         guifg=#22cce2 gui=none

hi MatchParen       guifg=#ffffff guibg=#3070c0 gui=bold

hi StatusLine       guifg=#ffffff guibg=#104075 gui=bold
hi StatusLineNC     guifg=#65a0f0 guibg=#104075 gui=none
hi VertSplit        guifg=#305885 guibg=#305885 gui=none
hi Folded           guifg=#65b0f6 guibg=#122555 gui=italic
hi FoldColumn       guifg=#ffffff guibg=#103366 gui=none
hi LineNr           guifg=#5080b0 gui=bold

hi DiffAdd          guibg=#2080a0 guifg=#ffffff gui=bold
hi DiffChange       guibg=#2080a0 guifg=#ffffff gui=bold
hi DiffDelete       guibg=#306080 guifg=#ffffff gui=none
hi DiffText         guibg=#8070a0 guifg=#ffffff gui=bold

hi SpellBad         gui=undercurl,italic guisp=#76daff
hi SpellCap         gui=undercurl guisp=#7ba2ba
hi SpellRare        gui=undercurl guisp=#8080f0
hi SpellLocal       gui=undercurl guisp=#c0c0e0

hi Comment          guifg=#9590d5 gui=italic

hi Constant         guifg=#87c6f0 gui=italic
hi Special          guifg=#50a0e0 gui=bold
hi Identifier       guifg=#7fe9ff
hi Statement        guifg=#ffffff gui=bold
hi PreProc          guifg=#3f8fff gui=none

hi type             guifg=#90bfd0 gui=none
hi Ignore           guifg=bg
hi Underlined       gui=underline cterm=underline term=underline

" Tab colors
hi TabLineFill      guifg=bg
hi TabLineSel       guifg=#ffffff guibg=#3f8fff
hi TabLine          guifg=#ffffff guibg=#001535

" TVO - The Vim Outliner
hi otlTab0          gui=bold,underline guifg=#eeeeff
hi otlTab1          gui=bold,underline guifg=#3377ee
hi otlTab2          gui=bold,underline guifg=#22cae2
hi otlTab3          gui=bold,underline guifg=#9966ff
hi otlTab5          gui=bold,underline guifg=#22aae2
hi otlTab4          gui=bold,underline guifg=#92caf2
hi otlTab7          gui=bold,underline guifg=#22bae2
hi otlTab6          gui=bold,underline guifg=#8866ee
hi otlTab8          gui=bold,underline guifg=#1166ee
hi otlTab9          gui=bold,underline guifg=#99ddee
hi otlTodo          gui=bold,underline guifg=#ffffff guibg=#00a0d0
hi otlTagRef        guifg=#ffffff guibg=#8070a0
hi otlTagDef        guifg=#ffffff guibg=#005090
