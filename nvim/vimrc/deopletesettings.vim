" Deoplete settings
let g:tern#command = ['tern']
let g:tern#arguments = ['--persistent']
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_ignore_case = 1
let g:deoplete#enable_smart_case = 1
let g:deoplete#enable_camel_case = 1
let g:deoplete#enable_refresh_always = 1
let g:deoplete#max_abbr_width = 0
let g:deoplete#max_menu_width = 0
let g:deoplete#max_list = 20
" close the preview window when you're not using it
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" Deoplet-ternjs settings
let g:deoplete#sources#ternjs#docs = 1
let g:deoplete#sources#ternjs#omit_object_prototype = 0
let g:deoplete#sources#ternjs#include_keywords = 1
let g:deoplete#sources#ternjs#filetypes = ['jsx', 'javascript.jsx']
let g:deoplete#sources#ternjs#docs = 1

" Deoplete omni settings
call deoplete#custom#source('omni', 'functions', {
    \ 'javascript': ['tern#Complete', 'jspc#omni'],
    \})

" Deoplete python jedi settings
let g:deoplete#sources#jedi#debug_server = 1

" Deoplete sources
set completeopt=longest,menuone,preview
