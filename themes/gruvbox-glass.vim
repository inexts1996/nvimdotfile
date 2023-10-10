
" If you are distributing this theme, please replace this comment
" with the appropriate license attributing the original VS Code
" theme author.


" Gruvbox Glass - A nice dark theme

" ==========> Reset
set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = 'gruvbox-glass'

" ==========> Highlight function
function! s:h(face, guibg, guifg, ctermbg, ctermfg, gui)
  let l:cmd="highlight " . a:face
  
  if a:guibg != ""
    let l:cmd = l:cmd . " guibg=" . a:guibg
  endif

  if a:guifg != ""
    let l:cmd = l:cmd . " guifg=" . a:guifg
  endif

  if a:ctermbg != ""
    let l:cmd = l:cmd . " ctermbg=" . a:ctermbg
  endif

  if a:ctermfg != ""
    let l:cmd = l:cmd . " ctermfg=" . a:ctermfg
  endif

  if a:gui != ""
    let l:cmd = l:cmd . " gui=" . a:gui
  endif

  exec l:cmd
endfun


" ==========> Colors dictionary

" GUI colors dictionary (hex)
let s:hex = {}
" Terminal colors dictionary (256)
let s:bit = {}

let s:hex.color0="#161819"
let s:hex.color1="#ebdbb2"
let s:hex.color2="#434546"
let s:hex.color3="#202223"
let s:hex.color4="#484a4b"
let s:hex.color5="#2a2c2d"
let s:hex.color6="#5c5e5f"
let s:hex.color7="#313435"
let s:hex.color8="#ffefc6"
let s:hex.color9="#4a4d4e"
let s:hex.color10="#ffffdf"
let s:hex.color11="#616364"
let s:hex.color12="#e6a91b"
let s:hex.color13="#343637"
let s:hex.color14="#fff9d0"
let s:hex.color15="#f5e5bc"
let s:hex.color16="#393b3c"
let s:hex.color17="#928374"
let s:hex.color18="#d3869b"
let s:hex.color19="#83a598"
let s:hex.color20="#fabd2f"
let s:hex.color21="#fb4934"
let s:hex.color22="#8ec07c"
let s:hex.color23="#b8bb26"

let s:bit.color6="59"
let s:bit.color14="108"
let s:bit.color17="142"
let s:bit.color13="174"
let s:bit.color9="178"
let s:bit.color1="187"
let s:bit.color16="203"
let s:bit.color15="214"
let s:bit.color11="223"
let s:bit.color7="230"
let s:bit.color0="234"
let s:bit.color3="235"
let s:bit.color5="236"
let s:bit.color10="237"
let s:bit.color2="238"
let s:bit.color4="239"
let s:bit.color8="241"
let s:bit.color12="244"


" ==========> General highlights 
call s:h("Normal", s:hex.color0, s:hex.color1, s:bit.color0, s:bit.color1, "none")
call s:h("Cursor", s:hex.color1, "", s:bit.color1, "", "none")
call s:h("Visual", s:hex.color2, "", s:bit.color2, "", "none")
call s:h("ColorColumn", s:hex.color3, "", s:bit.color3, "", "none")
call s:h("LineNr", "", s:hex.color4, "", s:bit.color4, "none")
call s:h("CursorLine", s:hex.color5, "", s:bit.color5, "", "none")
call s:h("CursorLineNr", "", s:hex.color6, "", s:bit.color6, "none")
call s:h("CursorColumn", s:hex.color5, "", s:bit.color5, "", "none")
call s:h("StatusLineNC", s:hex.color7, s:hex.color8, s:bit.color5, s:bit.color7, "none")
call s:h("StatusLine", s:hex.color9, s:hex.color10, s:bit.color4, s:bit.color7, "none")
call s:h("VertSplit", "", s:hex.color11, "", s:bit.color8, "none")
call s:h("Folded", s:hex.color5, s:hex.color12, s:bit.color5, s:bit.color9, "none")
call s:h("Pmenu", s:hex.color13, s:hex.color14, s:bit.color10, s:bit.color7, "none")
call s:h("PmenuSel", s:hex.color3, s:hex.color15, s:bit.color3, s:bit.color11, "none")
call s:h("EndOfBuffer", s:hex.color0, s:hex.color16, s:bit.color0, s:bit.color10, "none")
call s:h("NonText", s:hex.color0, s:hex.color16, s:bit.color0, s:bit.color10, "none")


" ==========> Syntax highlights
call s:h("Comment", "", s:hex.color17, "", s:bit.color12, "none")
call s:h("Constant", "", s:hex.color18, "", s:bit.color13, "none")
call s:h("Special", "", s:hex.color18, "", s:bit.color13, "none")
call s:h("Identifier", "", s:hex.color19, "", s:bit.color14, "none")
call s:h("Function", "", s:hex.color20, "", s:bit.color15, "none")
call s:h("Statement", "", s:hex.color21, "", s:bit.color16, "none")
call s:h("Operator", "", s:hex.color22, "", s:bit.color14, "none")
call s:h("PreProc", "", s:hex.color21, "", s:bit.color16, "none")
call s:h("Type", "", s:hex.color21, "", s:bit.color16, "none")
call s:h("String", "", s:hex.color23, "", s:bit.color17, "none")

highlight link cStatement Statement
highlight link cSpecial Special


" Generated using https://github.com/nice/themeforge
" Feel free to remove the above URL and this line.
