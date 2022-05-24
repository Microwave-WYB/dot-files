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
let g:gruvbox_transparent_bg=1

set t_Co=256
let g:gruvbox_termcolors=256
colorscheme gruvbox-material
"hi Normal guibg=NONE ctermbg=NONE
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
hi! EndOfBuffer guifg=bg

let g:airline_powerline_fonts = 1

set cursorline
