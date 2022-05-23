set tabstop=4
set shiftwidth=4
set autoindent
set wrap
set noexpandtab
set smarttab
set noswapfile
set number
set mouse=a
set showmatch
set clipboard=unnamedplus
set hlsearch
set smartcase
set ignorecase
syntax on
set guicursor+=a:blinkwait100-blinkon700-blinkoff700
set noshowmode
set cmdheight=1

au BufReadPost * if line("'\'") > 1 && line("'\'") <= line("$") | exe "normal! g'\"" | endif
