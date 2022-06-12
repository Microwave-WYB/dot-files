" COC Explorer
map <leader>e <Cmd>CocCommand explorer --width 28 <CR>

nmap <silent> ,gd :call CocAction('jumpDefinition', 'vsplit')<CR>
" Show documentation when hover
nnoremap <silent> gh :call CocActionAsync('doHover')<cr>

" Remap for do codeAction of selected region
function! s:cocActionsOpenFromSelected(type) abort
  execute 'CocCommand actions.open ' . a:type
endfunction
xmap <silent> <leader>a :CocAction<cr>
nmap <silent> <leader>a :CocAction<cr>
" COC Plugins:
" coc-clangd
" coc-css
" coc-explorer
" coc-markdown-preview-enhanced
" coc-python
" coc-rust-analyzer
" coc-webview
