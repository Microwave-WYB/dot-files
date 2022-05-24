" mnemonic 'di' = 'debug inspect' (pick your own, if you prefer!)

" for normal mode - the word under the cursor
nmap <leader>di <Plug>VimspectorBalloonEval
" for visual mode, the visually selected text
xmap <leader>di <Plug>VimspectorBalloonEval

let g:vimspector_enable_mappings = 'HUMAN'
" let g:vimspector_enable_mappings = 'VISUAL_STUDIO'
let g:vimspector_install_gadgets = [ 'debugpy', 'vscode-cpptools', 'CodeLLDB' ]

nmap <leader>db :VimspectorBreakpoints<cr>
nmap <leader>dr :VimspectorReset<cr>
nmap <leader>dn <Plug>VimspectorStepOver
nmap <leader>ds <Plug>VimspectorStepInto
nmap <leader>do <Plug>VimspectorStepOut
nmap <leader>dc <Plug>VimspectorContinue
