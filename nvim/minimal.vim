" Basic settings
set tabstop=4			        " number of columns occupied by a tab
set shiftwidth=4                " width for indent
set autoindent                  " enable autoindent
set wrap                        " wrap lines
set expandtab!                   " convert tabs to white spaces
set smarttab                    " be smart when using tabs
set noswapfile                  " disable swapfile
set number                      " show line numbers
set cursorline                  " highlight current line
set mouse=a                     " enable mouse click
set showmatch                   " show matching brackets
set clipboard=unnamedplus       " use system clipboard
set hlsearch                    " highlight search results
set smartcase                   " be smart about case when searching
set ignorecase                  " ignore case when searching
syntax on                       " enable syntax highlighting
set guicursor+=a:blinkwait100-blinkon700-blinkoff700 " cursor blink
set noshowmode                  " diable mode indicator for lightline plugin
" Return to last edit position when opening files (You want this!)
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Custom Keybindings
let mapleader="\<space>"        " map leader key to space
imap jk <esc>
nmap <leader>J :join<cr>
nmap J 5jzz
nmap K 5kzz

" File operations
nmap <leader>w :w!<cr>
nmap <leader>wq :wq<cr>
nmap <leader><cr> :noh<cr>
map q :q<cr>
map <leader>q :q!<cr>

" Remap 0 to first non-blank character
map 0 ^
" Remap - to last character
map - $

" Delete trailing white space on save
fun! CleanExtraSpaces()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    silent! %s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
    endfun

" Move lines with Alt+j/k
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

" Surround with bracket
vmap <leader>( <esc>`>a)<esc>`<i(<esc>
vmap <leader>[ <esc>`>a]<esc>`<i[<esc>
vmap <leader>{ <esc>`>a}<esc>`<i{<esc>
vmap <leader>" <esc>`>a"<esc>`<i"<esc>
vmap <leader>' <esc>`>a'<esc>`<i'<esc>
vmap <leader>` <esc>`>a`<esc>`<i`<esc>

" Go out of bracket
inoremap <expr> JK search('\%#[]>)}''"`]', 'n') ? '<Right>' : '<Tab>'

" Windows and Tabs
nmap tt :tabnew<cr>:term<cr>i
nmap th <C-w>v<C-w><Left>:term<cr>:vertical resize -20<cr>i
nmap tl <C-w>v<C-w><Right>:term<cr>:vertical resize -20<cr>i
nmap tj <C-w>s<C-w><Down>:term<cr>:resize -10<cr>i
nmap tk <C-w>s<C-w><Up>:term<cr>:resize -10<cr>i
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
nmap <leader>h <C-w>v<C-w><Left><Esc>:Ranger<cr>
nmap <leader>l <C-w>v<C-w><Right><Esc>:Ranger<cr>
nmap <leader>k <C-w>s<C-w><Up><Esc>:Ranger<cr>
nmap <leader>j <C-w>s<C-w><Down><Esc>:Ranger<cr>
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

" Terminal mode
tmap <Esc> <C-\><C-n>
tmap <C-h> <Esc><C-w><Left>
tmap <C-l> <Esc><C-w><Right>
tmap <C-k> <Esc><C-w><Up>
tmap <C-j> <Esc><C-w><Down>
tmap <M-l> <Esc>gt
tmap <M-h> <Esc>gT

" Visual realted:
" Search for visual mode selections
vmap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vmap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

" File type specific
autocmd BufNewFile *.py setlocal ts=4 sw=4 expandtab
autocmd FileType python map <buffer> <F5> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>

" Vim Plug
"""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin()
    Plug 'francoiscabrol/ranger.vim'
    Plug 'rbgrouleff/bclose.vim'
    Plug 'junegunn/fzf.vim'
    Plug 'easymotion/vim-easymotion'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'sainnhe/gruvbox-material'
call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin Settings
"""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>r :Ranger<CR>
let g:ranger_map_keys = 0
" FZF
map <leader>ff :Files<CR>
map <leader>fbl :BLines<cr>
map <leader>fl :Lines<cr>
map <leader>ft :Tags<cr>
map <leader>fbt :BTags<cr>
" incsearch and easymotion
nmap f <Plug>(easymotion-bd-w)
map  / <Plug>(easymotion-sn)
" Remove conflict between easymotion and diagnostics
let g:easymotion#is_active = 0
function! EasyMotionCoc() abort
  if EasyMotion#is_active()
    let g:easymotion#is_active = 1
    CocDisable
  else
    if g:easymotion#is_active == 1
      let g:easymotion#is_active = 0
      CocEnable
    endif
  endif
endfunction
autocmd TextChanged,CursorMoved * call EasyMotionCoc()

" These `n` & `N` mappings are options. You do not have to map `n` & `N` to EasyMotion.
" Without these mappings, `n` & `N` works fine. (These mappings just provide
" different highlight method and have some other features )
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

"""""""""""""""""""""""""""""""""""""""""""""""""
" Customize
"""""""""""""""""""""""""""""""""""""""""""""""""
colorscheme gruvbox-material                         " set the colorscheme
let g:airline_powerline_fonts = 1


" Better tabline
set tabline=%!MyTabLine()  " custom tab pages line
function! MyTabLine()
  let s = ''
  " loop through each tab page
  for i in range(tabpagenr('$'))
    if i + 1 == tabpagenr()
      let s .= '%#TabLineSel#'
    else
      let s .= '%#TabLine#'
    endif
    if i + 1 == tabpagenr()
      let s .= '%#TabLineSel#' " WildMenu
    else
      let s .= '%#Title#'
    endif
    " set the tab page number (for mouse clicks)
    let s .= '%' . (i + 1) . 'T '
    " set page number string
    let s .= i + 1 . ''
    " get buffer names and statuses
    let n = ''  " temp str for buf names
    let m = 0   " &modified counter
    let buflist = tabpagebuflist(i + 1)
    " loop through each buffer in a tab
    for b in buflist
      if getbufvar(b, "&buftype") == 'help'
        " let n .= '[H]' . fnamemodify(bufname(b), ':t:s/.txt$//')
      elseif getbufvar(b, "&buftype") == 'quickfix'
        " let n .= '[Q]'
      elseif getbufvar(b, "&modifiable")
        let n .= fnamemodify(bufname(b), ':t') . ', ' " pathshorten(bufname(b))
      endif
      if getbufvar(b, "&modified")
        let m += 1
      endif
    endfor
    " let n .= fnamemodify(bufname(buflist[tabpagewinnr(i + 1) - 1]), ':t')
    let n = substitute(n, ', $', '', '')
    " add modified label
    if m > 0
      let s .= '*'
      " let s .= '[' . m . '+]'
    endif
    if i + 1 == tabpagenr()
      let s .= ' %#TabLineSel# '
    else
      let s .= ' %#TabLine# '
    endif
    " add buffer names
    if n == ''
      let s.= ' [New Tab] '
    else
      let s .= n
    endif
    " switch to no underlining and add final space
    let s .= ' '
  endfor
  let s .= '%#TabLineFill#%T'
  " right-aligned close button
  " if tabpagenr('$') > 1
  "   let s .= '%=%#TabLineFill#%999Xclose'
  " endif
  return s
endfunction
