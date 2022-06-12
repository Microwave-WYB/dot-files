let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors

set t_Co=256

let g:gruvbox_contrast_dark="medium"
let g:gruvbox_contrast_light="soft"
let g:gruvbox_invert_selection=0
let g:gruvbox_italic=1
let g:gruvbox_bold=1
let g:gruvbox_material_enable_bold=1
let g:gruvbox_inverse=1
let g:gruvbox_underline=1
let g:gruvbox_undercurl=1
let g:gruvbox_transparent_bg=0

set t_Co=256
let g:gruvbox_termcolors=256
" colorscheme gruvbox-material
" hi Normal guibg=NONE ctermbg=NONE
" Theme change
"let hr = (strftime('%H'))

" if hr >= 20
" 		 set background=dark
" elseif hr >= 6
" 		 set background=light
" elseif hr >= 0
" 		 set background=dark
" endif

" Remove ~ in the end of buffer

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

set cursorline


set termguicolors     " enable true colors support
" let ayucolor="light"  " for light version of theme
" let ayucolor="mirage" " for mirage version of theme
let ayucolor="dark"   " for dark version of theme
"
colorscheme ayu
hi! EndOfBuffer guifg=bg
" Indent guide
set listchars=tab:\|\ 
set nolist
