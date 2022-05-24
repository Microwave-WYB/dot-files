let mapleader="\<space>"				" map leader key to space
set commentstring=//\ %s

" clangd
map <leader>ci :CocCommand clangd.symbolInfo<cr>
map <leader>ch :CocCommand clangd.switchSourceHeader<cr>
map gd :call CocActionAsync('jumpDefinition')<cr>
map gD :call CocActionAsync('jumpDeclaration')<cr>
map gr :call CocActionAsync('jumpReference')<cr>
