" hightlight設定
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_bin_path = expand("~/go/bin")

" importされていないpackageも補完されるように
let g:go_gocode_unimported_packages = 1

"補完が効く
exe "set rtp+=".globpath($GOPATH, "src/github.com/nsf/gocode/vim")

let g:go_list_type = "quickfix"

let g:go_fmt_command = "goimports"

" set completeopt=menu,preview

au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <Leader>gb <Plug>(go-doc-browser)
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
