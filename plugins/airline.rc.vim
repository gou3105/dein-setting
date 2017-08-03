let g:airline_theme = 'jellybeans'
set laststatus=2

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
" let g:airline_powerline_fonts = 1
let g:airline_symbols.space = "\ua0"

let g:airline#extensions#tabline#enabled = 1

let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

let g:airline_exclude_preview=1
