" add namespaced bundle paths in ~/.vim/bundles to the load path
call pathogen#runtime_append_all_bundles()

" some general options
set nocompatible
set ignorecase
set hidden          " let buffers go unsaved in background
syn on              " syntax highlighting
set backspace=indent,eol,start "delete indiscriminately
set incsearch       " highlight 1st match while searching
set hlsearch        " highlight all search matches
set shiftwidth=2
set tabstop=2       " tab width is 2 chars
set expandtab       " use spaces instead of tabs
set autoindent
set showcmd         " show incomplete commands
set wildmenu        " autocomplete menu for command-line options
set noerrorbells
set laststatus=2
set shortmess=at
"set number          " display line numbers
"set numberwidth=2
set spell           " spellcheck on
set viminfo=%,'50,\"100,:100,n~/.viminfo
set statusline=%f\ %m%r%y\ %l/%L

if !exists("&gui_running")
  if $TERM == 'xterm-256color'
    set t_Co=256
    colorscheme inkpot
  else
    set nospell
    colorscheme satori
  end
endif

" set swapfile directory to tmp
set directory=/tmp

" Enable filetype-specific indenting and plugins
filetype off
filetype plugin indent on

" ack stuff
set grepprg=ack
set grepformat=%f:%l:%m

" NERD tree bindings
map <leader>d :execute 'NERDTreeToggle ' . getcwd()<CR>

" remap autocomplete
inoremap <C-Space> <C-p>
inoremap <Nul> <C-p>

" command return inserts a new line after the current one
imap <D-CR> <C-o>o

" xml.vim
let xml_use_xhtml = 1
" jump string functionality tries to be too smart. do this instead
inoremap <LocalLeader><Space> <Esc>/><CR>:noh<CR>a

" Load matchit (% to bounce from do to end, etc.)
runtime! macros/matchit.vim

" hilight trailing whitespace
highlight ExtraWhitespace ctermbg=gray guibg=gray
match ExtraWhitespace /\s\+$/

" custom file modes
augroup myfiletypes
  " Clear old autocmds in group
  autocmd!
  autocmd FileType thor set syntax=ruby ai sw=2 sts=2 et
  autocmd FileType ruby,eruby,yaml set ai sw=2 sts=2 et
  autocmd FileType xml,html,xhtml set ai sw=2 sts=2 et
  autocmd ColorScheme * highlight ExtraWhitespace ctermbg=gray guibg=gray
augroup END

