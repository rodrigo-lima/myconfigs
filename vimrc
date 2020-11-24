" VIM.rc
"
" -----------------------------------------------
" Main Stuff {{{
set nocompatible
syntax on
set encoding=UTF-8
" }}}

" -----------------------------------------------
" UI {{{
" color extra spaces
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
"
set background=dark
"set term=screen-256color
"colorscheme Tomorrow-Night
"colorscheme hybrid_material
"colorscheme wombat
let g:seoul256_background = 236
colorscheme seoul256
let g:enable_bold_font = 1
let g:enable_italic_font = 1
let g:seoul256_srgb = 1
if !has('gui_running')
    set t_Co=256
endif

hi Normal ctermbg=none
" }}}

" -----------------------------------------------
" FOLDING {{{
set foldenable          " do not fold files by default on open
set foldlevelstart=10   " start with fold level of 1
set foldmethod=indent   " fold based on indent level
set foldnestmax=10      " max 10 depth
" }}}

" -----------------------------------------------
" PERSISTENT UNDO {{{
if !isdirectory($HOME."/.vim/undodir")
    call mkdir($HOME."/.vim/undodir", "p")
endif
set undodir=~/.vim/undodir
set undofile
set undolevels=1000 "maximum number of changes that can be undone
set undoreload=10000 "maximum number lines to save for undo on a buffer reload
" }}}

" -----------------------------------------------
" MISC {{{
filetype indent on            " Enable filetype-specific indenting
filetype on                   " Enable filetype detection
filetype plugin on            " Enable filetype-specific plugins
let mapleader = ","
let maplocalleader=","        " all my macros start with ,

set autoindent smartindent    " auto/smart indent
set autoread                  " watch for file changes
set autowrite
set backspace=indent,eol,start
set cmdheight=2               " command line two lines high
set clipboard=unnamed
set colorcolumn=120
set complete=.,w,b,u,U,t,i,d  " do lots of scanning on tab completion
set cursorline
set diffopt=filler,iwhite     " ignore all whitespace and sync
set expandtab                 " use spaces instead of tabs
set ff=unix
set fileformats=unix
set hidden
set history=200
set hlsearch                  " highlight the search
set ignorecase                " search ignoring case
set incsearch                 " incremental search
set laststatus=2
set lazyredraw                " do not redraw when do not have to
set linebreak
set list
set listchars=tab:▸\ ,eol:¬,trail:·
set modelines=1
set more                      " use more prompt
set mousefocus
set nobackup                  " Do not create annoying backup files
set noerrorbells              " No error bells please
set noshowmode
set noswapfile                " Do not use swapfile
set number                    " line numbers
set ruler                     " show the line number on the bar
set scrolloff=5               " keep at least 5 lines above/below
set shell=/bin/zsh
set shiftwidth=4
set showcmd
set showmatch                 " show matching bracket
set showtabline=2             " show tabbar
set sidescrolloff=5           " keep at least 5 lines left/right
set signcolumn=yes"
set smarttab                  " tab and backspace are smart
set splitbelow                " Horizontal windows should split to bottom
set splitright                " Vertical windows should be split to right
set tabstop=4                 " 6 spaces
set textwidth=120
set ttyfast                   " we have a fast terminal
set undolevels=1000           " 1000 undos
set updatecount=100           " switch every 100 chars
set updatetime=100            " update time
set wildmenu                  " menu has tab completion
set wildmode=longest,list:full
" }}}

" -----------------------------------------------
" LIGHTLINE {{{

"colorscheme material
let g:material_theme_style = 'default'
"| 'palenight' | 'dark'
let g:lightline = { 'colorscheme': 'material_vim' }

let g:netrw_list_hide = netrw_gitignore#Hide()

"let g:lightline = {
"      \ 'colorscheme': 'wombat',
"      \ }
" }}}

" -----------------------------------------------
" NERD_TREE {{{
" let g:NERDTreeWinSize=50
" let g:Tlist_WinWidth=50
" let NERDTreeMapActivateNode='<right>'
"let NERDTreeShowHidden=1
" let NERDTreeIgnore=['\.DS_Store', '\~$', '\.swp']
"autocmd VimEnter * NERDTree
"autocmd VimEnter * wincmd p
" }}}

" -----------------------------------------------
" NETRW {{{
let g:netrw_banner=0
let g:netrw_winsize=20
let g:netrw_liststyle=3
" let g:netrw_localrmdir='rm -r'
"toggle netrw on the left side of the editor
" }}}

" -----------------------------------------------
" DEOPLETE {{{
"" Automatically start language servers.
" let g:deoplete#enable_at_startup = 1
" "" <C-h>, <BS>: close popup and delete backword char.
" inoremap <expr><C-h> deoplete#smart_close_popup()."\<C-h>"
" inoremap <expr><BS>  deoplete#smart_close_popup()."\<C-h>"
" "" deoplete tab-complete
" inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
" " autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
" autocmd InsertLeave * if pumvisible() == 0|pclose|endif
" }}}

" -----------------------------------------------
" EASYTAGS {{{
" let g:easytags_syntax_keyword = 'always'
" }}}

" -----------------------------------------------
" COMMENTER {{{
" see https://github.com/scrooloose/nerdcommenter
" }}}

" -----------------------------------------------
" JAVA {{{
" autocmd FileType java setlocal omnifunc=javacomplete#Complete
" let g:JavaComplete_LibsPath='/Users/rolima/Work/CODE/FUSIONTAP/OTHER/libs/commons-cli-1.2.jar:/Users/rolima/Work/CODE/FUSIONTAP/OTHER/libs/gcm.jar:/Users/rolima/Work/CODE/FUSIONTAP/OTHER/libs/javax.json.jar:/Users/rolima/Work/CODE/FUSIONTAP/OTHER/libs/ksoap2-j2me-core-2.1.2.jar:/Users/rolima/Work/CODE/FUSIONTAP/OTHER/libs/kxml2-2.3.0.jar:/Users/rolima/Work/CODE/FUSIONTAP/OTHER/libs/maf.embedded.amx.api.jar:/Users/rolima/Work/CODE/FUSIONTAP/OTHER/libs/maf.embedded.amx.impl.jar:/Users/rolima/Work/CODE/FUSIONTAP/OTHER/libs/maf.embedded.api.jar:/Users/rolima/Work/CODE/FUSIONTAP/OTHER/libs/maf.embedded.cdm.jar:/Users/rolima/Work/CODE/FUSIONTAP/OTHER/libs/maf.embedded.framework.jar:/Users/rolima/Work/CODE/FUSIONTAP/OTHER/libs/maf.j2me.connections.jar:/Users/rolima/Work/CODE/FUSIONTAP/OTHER/libs/maf.java.common.jar:/Users/rolima/Work/CODE/FUSIONTAP/OTHER/libs/maf.java.shared.jar:/Users/rolima/Work/CODE/FUSIONTAP/OTHER/libs/maf.juel.jar:/Users/rolima/Work/CODE/FUSIONTAP/OTHER/libs/sqlite.jar:/Users/rolima/Work/CODE/FUSIONTAP/OTHER/libs/wsm-agent-common.jar:/Users/rolima/Work/CODE/FUSIONTAP/OTHER/libs/wsm-common-platform.jar'
" " let g:JavaComplete_JavaviLogfileDirectory = '/tmp'
" " let g:JavaComplete_JavaviDebug = 1
" }}}

" -----------------------------------------------
" JSON {{{
augroup filetype_json
    autocmd!
    nmap <leader>f :%!python -m json.tool<CR>
augroup END
" }}}

" -----------------------------------------------
" KOTLIN {{{
augroup filetype_kotlin
    autocmd!
    autocmd VimEnter * nested :TagbarOpen
 augroup END
let g:tagbar_type_kotlin = {
  \ 'ctagstype': 'kotlin',
  \ 'kinds' : [
    \ 'c:Classes',
    \ 'dc:DataClasses',
    \ 'co:Constants',
    \ 'i:Interfaces',
    \ 'm:Methods',
    \ 'o:Objects',
    \ 'p:Imports:1',
    \ 'T:Types',
    \ 'va:Variables:1'
  \ ],
  \ 'sort' : 0
\ }
" }}}

" -----------------------------------------------
" SWIFT {{{
augroup filetype_swift
    autocmd!
    autocmd VimEnter * nested :TagbarOpen
 augroup END
let g:tagbar_type_swift = {
  \ 'ctagstype': 'swift',
  \ 'kinds' : [
    \ 'n:Enums',
    \ 't:Typealiases',
    \ 'p:Protocols',
    \ 's:Structs',
    \ 'c:Classes',
    \ 'f:Functions',
    \ 'v:Variables:1',
    \ 'e:Extensions'
  \ ],
  \ 'sort' : 0
\ }
" }}}

" -----------------------------------------------
" GOLANG {{{
augroup filetype_go
    autocmd!
    autocmd VimEnter * nested :TagbarOpen
    autocmd FileType go nmap <leader>b <Plug>(go-build)
    " autocmd FileType go nmap <Leader>c <Plug>(go-coverage-toggle)
    autocmd FileType go nmap <Leader>i <Plug>(go-info)
    autocmd FileType go nmap <leader>r <Plug>(go-run)
    " autocmd FileType go nmap <Leader>s <Plug>(go-def-split)
    " autocmd FileType go nmap <leader>t <Plug>(go-test)
    " autocmd FileType go nmap <Leader>v <Plug>(go-def-vertical)
    autocmd FileType go nmap <C-g> :GoDeclsDir<cr>
    autocmd FileType go nmap <C-b> :GoDef<cr>
    autocmd FileType go imap <C-g> <esc>:<C-u>GoDeclsDir<cr>
augroup END
let g:go_auto_sameids = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_generate_tags = 1

let g:tagbar_type_go = {
	\ 'ctagstype' : 'go',
	\ 'kinds'     : [
		\ 'p:package',
		\ 'i:imports:1',
		\ 'c:constants',
		\ 'v:variables',
		\ 't:types',
		\ 'n:interfaces',
		\ 'w:fields',
		\ 'e:embedded',
		\ 'm:methods',
		\ 'r:constructor',
		\ 'f:functions'
	\ ],
	\ 'sro' : '.',
	\ 'kind2scope' : {
		\ 't' : 'ctype',
		\ 'n' : 'ntype'
	\ },
	\ 'scope2kind' : {
		\ 'ctype' : 't',
		\ 'ntype' : 'n'
	\ },
	\ 'ctagsbin'  : 'gotags',
	\ 'ctagsargs' : '-sort -silent'
\ }

" }}}

" -----------------------------------------------
" KEY BINDINGS {{{
" files - nerdtree & fzf
" nmap <leader>e :NERDTreeToggle<CR>
" nmap <leader>j :NERDTreeFind<CR>
nnoremap <leader>n :Lexplore<CR>
nmap <leader>p :FZF<CR>
nmap <leader>T :Tagbar<CR>
" save/quit
nmap <leader>c :close<cr>
nmap <leader>W :w!<cr>
nmap <leader>w :wa!<cr>
nmap <leader>q :q<cr>
nmap <leader>Q :qa!<cr>
nmap <leader><Esc> :wqa<cr>
nmap <leader>s :source ~/.vimrc<CR>
" window navigation
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
" text navigation
nnoremap <space> <C-d>
nnoremap <leader><space> <C-u>
" text completion
nnoremap \ :noh<return>

" }}}

" -----------------------------------------------
" SESSIONS {{{
let g:session_autosave = 'no'
" let g:session_autoload = 'yes'
" let g:session_autoload = 'no'
set viminfo='100,n$HOME/.vim/files/info/viminfo
" }}}

" -----------------------------------------------
" vim:foldmethod=marker:foldlevel=0
