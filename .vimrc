""""""""""""""""""
" General settings
set ruler        " show current location
set number       " show line numbers
set autoread     " watch for file changes
set shortmess+=I " no welcome message
set nocompatible " disable compatibility mode with vi
set showmode     " show modes

" Syntax
syntax on                   " enable syntax highlighting
set autoindent smartindent  " auto/smart indent
set smarttab                " better backspace and tab functionality
filetype on                 " filetype must by on before setting off
filetype off
set list listchars=tab:\ \ ,trail:· " highlight space on the end of the line

set nomodeline   " do not use modeline (security)

" backups settings
set nobackup        " don't create pointless backup files; Use VCS instead
set nowritebackup
set noswapfile

" Search options {{{
set incsearch    " search as characters are entered
set hlsearch     " highlight matches
set smartcase
set showmatch    " show matched brackets
set gdefault     " regexp global by default
set magic        " enable extended regexes
" turn off search highlighting with <CR> (carriage-return)
nnoremap <CR> :nohlsearch<CR><CR>
" }}}
