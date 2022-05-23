" Find files
map ff :call fzf#run({'source': 'find . -type f', 'sink': 'tabe', 'down': '30%'})<cr>
" Find dirs
map fd :call fzf#run({'source': 'find . -type d', 'sink': 'tabe', 'down': '30%'})<cr>
" Find lines
map fl :BLines<cr>
" Find lines in all buffers
map fL :Lines<cr>
" Find tags
map ft :BTags<cr>
" Find tag in all buffers
map fT :Tags<cr>
" Find commads
map fc :Commands<cr>
vmap fc :Commands<cr>
" Find mappings
map fm :Maps<cr>
map fa :Ag<cr>
" Open in split view
let g:fzf_layout = { 'down': '30%' }
