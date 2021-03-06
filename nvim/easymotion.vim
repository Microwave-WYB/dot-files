" incsearch and easymotion
nmap <leader>f <Plug>(easymotion-bd-w)
nmap <leader><leader>h <leader><leader>b
nmap <leader><leader>l <leader><leader>w

let g:EasyMotion_smartcase = 1
" Remove conflict between easymotion and diagnostics
let g:easymotion#is_active = 0
function! EasyMotionCoc() abort
	if EasyMotion#is_active()
		let g:easymotion#is_active = 1
		CocDisable
	else
		if g:easymotion#is_active == 1
			let g:easymotion#is_active = 0
			CocEnable
		endif
	endif
endfunction
autocmd TextChanged,CursorMoved * call EasyMotionCoc()

