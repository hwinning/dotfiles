set nocompatible              " be iMproved, required
filetype off                  " required

" vim-plug is the plugin manager
call plug#begin('~/.vim/plugged')
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" golang
Plug 'zchee/deoplete-go', { 'do': 'make'}
Plug 'nsf/gocode', { 'rtp': 'nvim', 'do': '~/.config/nvim/plugged/gocode/nvim/symlink.sh' }

" python
Plug 'zchee/deoplete-jedi'
call plug#end()

" deoplete
set completeopt+=noselect
let g:deoplete#enable_at_startup = 1

" deoplete#go
let g:deoplete#sources#go#gocode_binary=$GOPATH.'/bin'
let g:deoplete#sources#go#sort_class=['package', 'func', 'type', 'var', 'const']
let g:deoplete#sources#go#pointer=1

filetype plugin indent on    " required

" Generic settings
syntax on
set number
set relativenumber
set cursorline
set spell spelllang=en_au
set hlsearch
set background=dark
set dictionary="/usr/share/dict/words"
set complete+=k
set shiftwidth=2
set autoindent
set tabstop=2
set softtabstop=2
set expandtab
set textwidth=0
set wrap	" wrap lines
set linebreak	" don't break words on wrap!
set nofoldenable  " don't fold by default
set pastetoggle=<F10>
"set backspace=eol,start " something broke backspace?
noremap <silent> <NUL> :exe "normal i".nr2char(getchar())<CR>
" expand snippet completions

" My highlighting
hi clear Cursorline
hi CursorLine cterm=none
hi clear SpellBad
hi SpellBad cterm=underline ctermfg=9
hi clear SpellCap
hi SpellCap cterm=underline ctermfg=12
hi clear SpellRare
hi SpellRare cterm=underline ctermfg=12
hi clear SpellLocal
hi SpellLocal cterm=underline ctermfg=14
hi clear MatchParen
hi MatchParen cterm=underline,bold ctermfg=48
hi clear Search
hi Search cterm=underline,bold ctermfg=11
hi clear texMath
hi texMath ctermfg=213
hi Comment ctermfg=245
hi LineNr ctermfg=208

nnoremap <F5> :w<CR>:buffers<CR>:buffer<Space>
map <F9> :w<CR>:edit 

set undofile
set undodir=$HOME/.vim/undo
set undolevels=1000
set undoreload=10000

" Disable AutoComplPop.
let g:acp_enableAtStartup = 0

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction

" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
