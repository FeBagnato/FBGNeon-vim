-- Name:         FBGNeon
-- Description:  A retro-future inspired colorscheme for Neovim
-- Author:       Felipe Bagnato <febagnato@protonmail.com>
-- Maintainer:   Felipe Bagnato <febagnato@protonmail.com>
-- Website:      https://github.com/febagnato/FBGNeon-vim
-- License:      GPL
-- Last Updated: Sat 19 Abr 2026 14:20:00

local hi = function(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
end

-- Clear highlights and set background
vim.cmd("highlight clear")
if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
end
vim.g.colors_name = "FBGNeon"

--------------------------------------------------------------------------------
-- Linking and Standard Highlights
--------------------------------------------------------------------------------

-- Links
hi("Terminal", { link = "Normal" })
hi("LineNrAbove", { link = "LineNr" }) 
hi("LineNrBelow", { link = "LineNr" }) 
hi("CursorLineFold", { link = "CursorLine" }) 
hi("CursorLineSign", { link = "CursorLine" }) 
hi("MessageWindow", { link = "Pmenu" }) 
hi("PopupNotification", { link = "Todo" }) 

-- VIM Modes
hi("Normal", { fg = "#FFFFFF", bg = "NONE" })
hi("Visual", { fg = "#34e2e1", bg = "#5f00d7", bold = true })
hi("VisualNOS", { fg = "#34e2e1", bg = "#5f00d7", bold = true }) 
hi("ModeMsg", { fg = "#5f00d7", bg = "#00d787", bold = true })

-- Source Code
hi("Comment", { fg = "#c4a000", italic = true })
hi("MatchParen", { fg = "#00d7af", bg = "#5f00d7", bold = true })

hi("Constant", { fg = "#34e2e1", bold = true })
hi("Boolean", { link = "Constant" })
hi("Number", { link = "Constant" }) 
hi("Float", { link = "Constant" }) 

hi("String", { fg = "#ff00d7", bold = true })
hi("SpecialChar", { fg = "#ff5f00" })
hi("Character", { link = "String" })
hi("Special", { link = "String" })

hi("Identifier", { fg = "#eeeeee" })
hi("Function", { fg = "#ff5f00" })
hi("Operator", { link = "Function" }) 

hi("Statement", { fg = "#d700d7", bold = true })
hi("Conditional", { link = "Statement" }) 
hi("Repeat", { link = "Statement" })
hi("Label", { link = "Statement" })
hi("Keyword", { link = "Statement" })
hi("Exception", { link = "Statement" }) 

hi("PreProc", { fg = "#ff5f00" })
hi("Include", { link = "PreProc" }) 
hi("Define", { link = "PreProc" })
hi("Macro", { link = "PreProc" })
hi("PreCondit", { link = "PreProc" })

hi("Type", { fg = "#00d787", bold = true })
hi("StorageClass", { link = "Type" }) 
hi("Structure", { link = "Type" })
hi("Typedef", { link = "Type" })

hi("Underlined", { fg = "#00d787", underline = true }) 
hi("Ignore", { fg = "NONE", bg = "NONE" })
hi("Error", { fg = "#af0000", bg = "#FFFFFF", reverse = true })
hi("Todo", { fg = "#eeeeee", bg = "#c4a000", bold = true })

hi("Conceal", { fg = "#626262" })

-- Editor
hi("EndOfBuffer", { fg = "#d700d7", bold = true })

hi("StatusLine", { fg = "#87afff", bg = "#5f00d7", bold = true })
hi("StatusLineNC", { fg = "#5f00d7", bg = "#87afff", bold = true })
hi("StatusLineTerm", { link = "StatusLine" })
hi("StatusLineTermNC", { link = "StatusLineNC" })

hi("VertSplit", { fg = "#eeeeee", bg = "#5f00d7" })

hi("Pmenu", { fg = "#87afff", bg = "NONE" })
hi("PmenuSel", { fg = "#87afff", bg = "#5f00d7" })
hi("PmenuSbar", { bg = "#262626" })
hi("PmenuThumb", { bg = "#5f00d7" })
hi("TabLineSel", { fg = "#87afff", bg = "#5f00d7" })
hi("TabLine", { fg = "#5f00d7", bg = "#87afff" })
hi("TabLineFill", { fg = "#5f00d7", bg = "#87afff" })

hi("ToolbarButton", { fg = "#87afff", bg = "#5f00d7" })
hi("NonText", { fg = "#5f87d7" })
hi("SpecialKey", { fg = "#00875f" })
hi("QuickFixLine", { fg = "#000000", bg = "#5f87d7" })
hi("Folded", { fg = "#626262", bg = "#000000" })
hi("FoldColumn", { fg = "#5f87d7", bg = "#000000" })
hi("CursorLine", { bg = "#5f00d7" })
hi("CursorColumn", { bg = "#5f00d7" })
hi("ColorColumn", { bg = "#8700ff" })
hi("CursorLineNr", { bg = "#5f00d7" })
hi("LineNr", { fg = "#34e2e1", bold = true })

hi("ErrorMsg", { fg = "#ff0000", bg = "#000000", reverse = true })
hi("WarningMsg", { fg = "#c4a000" })
hi("MoreMsg", { fg = "#00875f" })
hi("Question", { fg = "#c4a000" })

hi("Search", { fg = "#5f00d7", bg = "#87afff", bold = true })
hi("CurSearch", { fg = "#87afff", bg = "#5f00d7", bold = true })
hi("IncSearch", { link = "CurSearch" })

hi("WildMenu", { fg = "#5f00d7", bg = "#87afff", bold = true })
hi("SpellBad", { fg = "#ff0000", underline = true })
hi("SpellCap", { fg = "#ffff00", underline = true })
hi("SpellLocal", { fg = "#ff5f00", underline = true })
hi("SpellRare", { fg = "#ff00d7", underline = true })

hi("Directory", { fg = "#00d787", bold = true })

hi("Title", { fg = "#ff00d7", bold = true })

-- Signify
hi("SignColumn", { bg = "#5f00d7" })
hi("DiffAdd", { fg = "#eeeeee", bg = "#00af00" })
hi("DiffChange", { fg = "#eeeeee", bg = "#005f87" })
hi("DiffText", { fg = "#000000", bg = "#c6c6c6" })
hi("DiffDelete", { fg = "#eeeeee", bg = "#af0000" })

-- Treesitter
hi("TreesitterContext", {bg = "#232526"})

-- Telescope
hi("TelescopeBorder",        { fg = "#00d787" })
hi("TelescopeTitle",         { fg = "#ff5f00" })
hi("TelescopePromptPrefix",  { fg = "#ff00d7" })
hi("TelescopePromptCounter", { fg = "#34e1e2" })
