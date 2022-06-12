" ---- auto pairs ----
imap {<enter> {<enter>}<esc>O
imap [<enter> [<enter>]<esc>O
imap (<enter> (<enter>)<esc>O

" ---- binary mode ----
nmap <leader>vb :%!xxd -b<cr>

map q :bd<cr>
map <M-h> :bp<cr>
map <M-l> :bn<cr>
map <M-,> :bp<cr>
map <M-.> :bn<cr>

" ---- switch buffer ----
autocmd TabEnter * if tabpagenr("$") > 1 |map <M-h> :tabprev<cr>|map <M-l> :tabnext<cr>| endif
autocmd TabLeave * if tabpagenr("$") == 1 |map <M-h> :bp<cr>|map <M-l> :bn<cr>| endif
autocmd TabClosed * if tabpagenr("$") == 1 |map <M-h> :bp<cr>|map <M-l> :bn<cr>| endif
autocmd BufDelete * if tabpagenr("$") == 1 |map <M-h> :bp<cr>|map <M-l> :bn<cr>| endif

nnoremap <F2> :20Lex<CR>
