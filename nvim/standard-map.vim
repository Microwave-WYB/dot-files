let mapleader="\<space>"				" map leader key to space
nmap ; :
vmap ; :

" ---- cursor movements ----
imap jk <esc>
map 0 ^
map - g_
imap <c-l> <right>
map <c-h> <left>
imap <c-j> <down>
imap <c-k> <up>

" ---- File/buffer operations ----
nmap <leader>w :w!<cr>
nmap <leader>wq :wq<cr>
nmap <leader><cr> :noh<cr>
map q <c-w>q<cr>
map <leader>q :q!<cr>
map <leader>cd :cd %:p:h<CR>:pwd<CR>

" ---- Code formatting ----
" Alt key to move lines around
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

" Delete trailing white space on save
" autocmd BufWritePre * :%s/\s\+$//e

" Tab indent
nnoremap <tab> >>_
nnoremap <s-tab> <<_
inoremap <s-tab> <c-d>
vnoremap <tab> >gv
vnoremap <s-tab> <gv

" Surround with bracket
vmap <leader>( <esc>`>a)<esc>`<i(<esc>
vmap <leader>[ <esc>`>a]<esc>`<i[<esc>
vmap <leader>{ <esc>`>a}<esc>`<i{<esc>
vmap <leader>" <esc>`>a"<esc>`<i"<esc>
vmap <leader>' <esc>`>a'<esc>`<i'<esc>
vmap <leader>` <esc>`>a`<esc>`<i`<esc>

" ---- UI settings ----
" UI components toggle
nmap <leader>ve :CocCommand explorer --width 28 <cr>
nmap <leader>vt :TagbarToggle<cr>

" Terminal
nmap tt :FloatermToggle<cr>
nmap tj <C-w>s<C-w><Down>:term<cr><c-w>J:resize -12<cr>i
tmap <Esc> <C-\><C-n>
tmap <C-h> <Esc><C-w><Left>
tmap <C-l> <Esc><C-w><Right>
tmap <C-k> <Esc><C-w><Up>
tmap <C-j> <Esc><C-w><Down>
tmap <M-l> <Esc>gt
tmap <M-h> <Esc>gT

" Tabs and windows
nmap <leader>t :tabnew<cr>
nmap <M-l> gt
nmap <M-h> gT
nmap <C-h> <C-w><Left>
nmap <C-l> <C-w><Right>
nmap <C-k> <C-w><Up>
nmap <C-j> <C-w><Down>
nmap <C-down> <C-w>+
nmap <C-up> <C-w>-
nmap <C-left> <C-w><
nmap <C-right> <C-w>>
nmap <leader>h <C-w>v<C-w><Left><Esc>:RangerEdit<cr>
nmap <leader>l <C-w>v<C-w><Right><Esc>:RangerEdit<cr>
nmap <leader>k <C-w>s<C-w><Up><Esc>:RangerEdit<cr>
nmap <leader>j <C-w>s<C-w><Down><Esc>:RangerEdit<cr>
nmap <leader>1 1gt<cr>
nmap <leader>2 2gt<cr>
nmap <leader>3 3gt<cr>
nmap <leader>4 4gt<cr>
nmap <leader>5 5gt<cr>
nmap <leader>6 6gt<cr>
nmap <leader>7 7gt<cr>
nmap <leader>8 8gt<cr>
nmap <leader>9 9gt<cr>
nmap <leader>0 10gt<cr>

" Folding
nmap \ zA
nmap <leader>- zM
nmap <leader>= zR
