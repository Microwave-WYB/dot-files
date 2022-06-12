let g:fzf_preview_window = ['right:50%', 'ctrl-/']
" Find files
map ff :Files<cr>
" Find dirs
map fd :call fzf#run({'source': 'find . -type d', 'sink': 'tabe', 'window': { 'width': 0.9, 'height': 0.6, 'xoffset': 0.5 }})<cr>
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
" Find snippets
map fp :Snippets<cr>
let g:UltiSnipsExpandTrigger="<c-p>"
" Open in split view
" let g:fzf_layout = { 'down': '30%' }
