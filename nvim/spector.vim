" mnemonic 'di' = 'debug inspect' (pick your own, if you prefer!)

" for normal mode - the word under the cursor
nmap ,i <Plug>VimspectorBalloonEval
" for visual mode, the visually selected text
xmap ,i <Plug>VimspectorBalloonEval

let g:vimspector_enable_mappings = 'HUMAN'
" let g:vimspector_enable_mappings = 'VISUAL_STUDIO'
let g:vimspector_install_gadgets = [ 'debugpy', 'vscode-cpptools', 'CodeLLDB' ]

nmap ,B :VimspectorBreakpoints<cr>
nmap ,r :VimspectorReset<cr>
nmap ,n <Plug>VimspectorStepOver
nmap ,b <Plug>VimspectorToggleBreakpoint
nmap ,s <Plug>VimspectorStepInto
nmap ,o <Plug>VimspectorStepOut
nmap ,c <Plug>VimspectorContinue
