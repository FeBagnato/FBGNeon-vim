" Name:         FBGNeon
" Description:  A vim Neon colorscheme
" Author:       Felipe Bagnato <febagnato@protonmail.com>
" Maintainer:   Felipe Bagnato <febagnato@protonmail.com>
" Website:      https://github.com/febagnato/FBGNeon-vim
" License:      GPL
" Last Updated: Sat 15 Feb 2025 12:10:00

" Generated by hand by Me :-)

hi clear
let g:colors_name = 'FBGNeon'

hi! link Terminal Normal
hi! link LineNrAbove LineNr
hi! link LineNrBelow LineNr
hi! link CursorLineFold CursorLine
hi! link CursorLineSign CursorLine
hi! link MessageWindow Pmenu
hi! link PopupNotification Todo

" VIM Modes highlightings
hi! Normal ctermfg=231 ctermbg=NONE cterm=NONE
hi! Visual ctermfg=6 ctermbg=56 cterm=BOLD
hi! VisualNOS ctermfg=6 ctermbg=56 cterm=BOLD
hi! ModeMsg ctermfg=56 ctermbg=42 cterm=BOLD

" Source code highlightings
hi! Comment ctermfg=3 ctermbg=NONE cterm=ITALIC
hi! MatchParen ctermfg=43 ctermbg=56 cterm=BOLD

hi! Constant ctermfg=6 ctermbg=NONE cterm=BOLD
hi! link Boolean   Constant
hi! link Number    Constant
hi! link Float     Constant

hi! String ctermfg=200 ctermbg=NONE cterm=BOLD
hi! link Character String
hi! link Special String
hi! link SpecialChar String

hi! Identifier ctermfg=255 ctermbg=NONE cterm=NONE
hi! Function ctermfg=202 ctermbg=NONE cterm=NONE
hi! link Operator Function

hi! Statement ctermfg=164 ctermbg=NONE cterm=BOLD
hi! link Conditional Statement
hi! link Repeat Statement
hi! link Label Statement
hi! link Keyword Statement
hi! link Exception Statement

hi! PreProc ctermfg=202 ctermbg=NONE cterm=NONE
hi! link Include PreProc
hi! link Define PreProc
hi! link Macro PreProc
hi! link PreCondit PreProc

hi! Type ctermfg=42 ctermbg=NONE cterm=BOLD
hi! link StorageClass Type
hi! link Structure Type
hi! link Typedef Type

hi! Underlined ctermfg=42 ctermbg=NONE cterm=underline
hi! Ignore ctermfg=NONE ctermbg=NONE cterm=NONE
hi! Error ctermfg=124 ctermbg=231 cterm=REVERSE
hi! Todo ctermfg=255 ctermbg=3 cterm=BOLD

hi! Conceal ctermfg=241 ctermbg=NONE cterm=NONE

" Editor highlightings
hi EndOfBuffer ctermfg=164 ctermbg=NONE cterm=BOLD

hi StatusLine ctermfg=111 ctermbg=56 cterm=BOLD
hi StatusLineNC ctermfg=56 ctermbg=111 cterm=BOLD
hi StatusLineTerm ctermfg=111 ctermbg=56 cterm=BOLD
hi StatusLineTermNC ctermfg=56 ctermbg=111 cterm=BOLD

hi VertSplit ctermfg=255 ctermbg=56 cterm=NONE

hi Pmenu ctermfg=111 ctermbg=NONE cterm=NONE
hi PmenuSel ctermfg=111 ctermbg=56 cterm=NONE
hi PmenuSbar ctermfg=NONE ctermbg=235 cterm=NONE
hi PmenuThumb ctermfg=NONE ctermbg=56 cterm=NONE
hi TabLineSel ctermfg=111 ctermbg=56 cterm=NONE
hi TabLine ctermfg=56 ctermbg=111 cterm=NONE
hi TabLineFill ctermfg=56 ctermbg=111 cterm=NONE

hi ToolbarLine ctermfg=NONE ctermbg=NONE cterm=NONE
hi ToolbarButton ctermfg=111 ctermbg=56 cterm=NONE
hi NonText ctermfg=68 ctermbg=NONE cterm=NONE
hi SpecialKey ctermfg=29 ctermbg=NONE cterm=NONE
hi QuickFixLine ctermfg=16 ctermbg=68 cterm=NONE
hi Folded ctermfg=241 ctermbg=16 cterm=NONE
hi FoldColumn ctermfg=68 ctermbg=16 cterm=NONE
hi CursorLine ctermfg=NONE ctermbg=56 cterm=NONE
hi CursorColumn ctermfg=NONE ctermbg=56 cterm=NONE
hi ColorColumn ctermfg=NONE ctermbg=93 cterm=NONE
hi CursorLineNr ctermfg=NONE ctermbg=56 cterm=NONE
hi LineNr ctermfg=6 ctermbg=NONE cterm=BOLD

hi ErrorMsg ctermfg=196 ctermbg=16 cterm=reverse
hi WarningMsg ctermfg=3 ctermbg=NONE cterm=NONE
hi MoreMsg ctermfg=29 ctermbg=NONE cterm=NONE
hi Question ctermfg=3 ctermbg=NONE cterm=NONE

hi Search ctermfg=56 ctermbg=111 cterm=BOLD
hi CurSearch ctermfg=111 ctermbg=56 cterm=BOLD
hi link IncSearch CurSearch

hi WildMenu ctermfg=56 ctermbg=111 cterm=BOLD
hi SpellBad ctermfg=196 ctermbg=NONE cterm=underline
hi SpellCap ctermfg=226 ctermbg=NONE cterm=underline
hi SpellLocal ctermfg=202 ctermbg=NONE cterm=underline
hi SpellRare ctermfg=200 ctermbg=NONE cterm=underline

hi Directory ctermfg=42 ctermbg=NONE cterm=bold

hi Title ctermfg=200 ctermbg=NONE cterm=bold

" Signify plugin highlightings
hi SignColumn ctermfg=NONE ctermbg=56 cterm=NONE
hi DiffAdd ctermfg=255 ctermbg=34 cterm=NONE
hi DiffChange ctermfg=255 ctermbg=24 cterm=NONE
hi DiffText ctermfg=16 ctermbg=251 cterm=NONE
hi DiffDelete ctermfg=255 ctermbg=124 cterm=NONE
