set commentstring=//\ %s
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set shiftwidth=4    " number of spaces to use for autoindent
set noexpandtab       " expand tab to spaces so that tabs are spaces

" clangd
map <leader>ci :CocCommand clangd.symbolInfo<cr>
map <leader>ch :CocCommand clangd.switchSourceHeader<cr>
map gd :call CocActionAsync('jumpDefinition')<cr>
map gD :call CocActionAsync('jumpDeclaration')<cr>
map gr :call CocActionAsync('jumpReference')<cr>
