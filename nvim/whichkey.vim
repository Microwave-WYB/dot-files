let g:which_key_map_space =  {
			\ '<F5>' : 'Launch Debugger',
			\ '<F8>' : 'Run To Cursor',
			\ '<F9>' : 'Conditional Breakpoint',
			\ '<CR>' : "No Highlight",
			\ '-' : "Fold All",
			\ '=' : "Expand All",
			\ 'e' : "Explorer",
			\ }

autocmd! User vim-which-key call which_key#register('<Space>', 'g:which_key_map_space')
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> f :WhichKey 'f'<cr>

set timeoutlen=500

let g:which_key_map_space.d = {
			\ 'name' : '+Debugger',
			\ 'r' : 'Reset',
			\ 'b' : 'Break Points',
			\ 's' : 'Step Into',
			\ 'c' : 'Continue',
			\ 'n' : 'Next Line',
			\ 'i' : 'Balloon Eval',
			\ 'o' : 'Step Out'
			\ }

let g:which_key_map_space.v = {
			\ 'name' : '+View',
			\ 't' : 'Tagbar',
			\ 'e' : 'Explorer',
			\ 'd' : 'Diff View',
			\ }

let g:which_key_map_space.g = {
			\ 'name' : '+Git',
			\ }

let g:which_key_map_space.r = {'name' : '+Ranger'}
