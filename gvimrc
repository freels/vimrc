set bg=light
colorscheme wombat
set guioptions=egm
set lines=60
set columns=100

"for Droid Sans do:
"   defaults write org.vim.MacVim MMCellWidthMultiplier -float 0.85

"set guifont=Droid\ Sans\ Mono\ Custom:h13
"set linespace=-1

set guifont=Menlo:h12

command -bar -nargs=1 OpenURL :!sensible-browser <args>
