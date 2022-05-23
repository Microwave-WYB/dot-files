" ---- basic settings ----
source ~/.config/nvim/basic.vim
source ~/.config/nvim/alias.vim
source ~/.config/nvim/standard-map.vim

if !exists('g:vscode')
	source ~/.config/nvim/special-map.vim
	" ---- plugins ----
	source ~/.config/nvim/plug.vim
	source ~/.config/nvim/coc.vim
	source ~/.config/nvim/fzf.vim
	source ~/.config/nvim/tagbar.vim
	source ~/.config/nvim/ranger.vim
	source ~/.config/nvim/easymotion.vim
	source ~/.config/nvim/rainbow.vim

	" ---- customize ----
	source ~/.config/nvim/themes.vim
endif
