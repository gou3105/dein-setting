set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%{exists('g:loaded_syntastic_plugin')?SyntasticStatuslineFlag():''}<Paste>
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_blade_checkers = []
let g:syntastic_vue_checkers = ['eslint']
let g:syntastic_mode_map = { 'mode': 'passive',
    \ 'active_filetypes': ['go'] }
let g:syntastic_go_checkers = ['golint']


let local_eslint = finddir('node_modules', '.;') . '/.bin/eslint'
if matchstr(local_eslint, "^\/\\w") == ''
	let local_eslint = getcwd() . "/" . local_eslint
endif
if executable(local_eslint)
	let g:syntastic_javascript_eslint_exec = local_eslint
	let g:syntastic_vue_eslint_exec = local_eslint
endif
