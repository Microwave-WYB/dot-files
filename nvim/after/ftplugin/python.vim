if exists(':AsyncRun')
  nnoremap <buffer><silent> <F5> :<C-U>AsyncRun python -u "%"<CR>
endif

set tabstop=4
set shiftwidth=4
set expandtab

map gd :call CocActionAsync('jumpDefinition')<cr>
map gD :call CocActionAsync('jumpDeclaration')<cr>
map gr :call CocActionAsync('jumpReference')<cr>
