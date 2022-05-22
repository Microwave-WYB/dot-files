" COC Explorer
map <leader>e <Cmd>CocCommand explorer --width 28 <CR>
map <f2> <Cmd>CocCommand explorer --width 28 <CR>

" Jump Definition
"map gd :call CocActionAsync('jumpDefinition')<cr>
"map gD :call CocActionAsync('jumpDeclaration')<cr>
"map gr :call CocActionAsync('jumpReference')<cr>

set rtp+=~/.vim/pack/XXX/start/LanguageClient-neovim
let g:LanguageClient_serverCommands = { 'haskell': ['haskell-language-server-wrapper', '--lsp'] }
map <leader>d :call LanguageClient#textDocument_definition()<CR>

