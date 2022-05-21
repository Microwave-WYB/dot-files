" incsearch and easymotion
nmap <leader>f <Plug>(easymotion-bd-w)
" Merge Tool
let g:mergetool_layout = 'mr'
let g:mergetool_prefer_revision = 'local'
nmap mt <plug>(MergetoolToggle)
let g:EasyMotion_smartcase = 1
" Gif config
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
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

map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

