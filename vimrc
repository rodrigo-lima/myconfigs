" Rodrigo

" -----------------------------------------------
" Main Stuff {{{
set nocompatible
syntax on
"let g:python3_host_prog = '/usr/local/bin/python3'
" }}}

" -----------------------------------------------
" UI {{{
"colorscheme wombat
set background=dark
set term=screen-256color
"colorscheme Tomorrow-Night
colorscheme hybrid_material
let g:enable_bold_font = 1
let g:enable_italic_font = 1
if !has('gui_running')
    set t_Co=256
endif
" }}}

" -----------------------------------------------
" PLUGINS {{{
call plug#begin('~/.vim/plugged')
" status
Plug 'itchyny/lightline.vim'
" files
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"  git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'Xuyuanp/nerdtree-git-plugin'
" grep
Plug 'dkprice/vim-easygrep'
" syntax
Plug 'Shougo/deoplete.nvim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'

" Plug 'autozimu/LanguageClient-neovim'
" Plug 'roxma/vim-hug-neovim-rpc'
" Plug 'roxma/nvim-yarp'
" Plug 'Shougo/denite.nvim'
" (Optional) Completion integration with deoplete.
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" (Optional) Completion integration with nvim-completion-manager.
"Plug 'roxma/nvim-completion-manager'
" (Optional) Showing function signature and inline doc.
"Plug 'Shougo/echodoc.vim'
"Plug 'vim-syntastic/syntastic'
"Plug 'Valloric/YouCompleteMe'
"Plug 'fatih/vim-go'
"Plug 'sheerun/vim-polyglot'
"Plug 'artur-shaik/vim-javacomplete2'
" themes
"Plug 'kristijanhusak/vim-hybrid-material'
"Plug 'nightsense/vimspectr'
"Plug 'tyrannicaltoucan/vim-deep-space'

"Plug 'roxma/nvim-yarp'
"Plug 'roxma/vim-hug-neovim-rpc'
"Plug 'Shougo/deoplete.nvim'

call plug#end()
" }}}

" -----------------------------------------------
" FOLDING {{{
set foldenable          " do not fold files by default on open
set foldlevelstart=10   " start with fold level of 1
set foldmethod=indent   " fold based on indent level
set foldnestmax=10      " max 10 depth
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
set colorcolumn=90
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
set listchars=tab:▸\ ,eol:¬
set modelines=1
set more                      " use more prompt
set nobackup                    " Do not create annoying backup files
set noerrorbells              " No error bells please
set noshowmode
set noswapfile                  " Do not use swapfile
set number                    " line numbers
set ruler                     " show the line number on the bar
set scrolloff=5               " keep at least 5 lines above/below
set shell=/bin/zsh
set shiftwidth=4
set showcmd
set showmatch                 " show matching bracket
set sidescrolloff=5           " keep at least 5 lines left/right
set signcolumn=yes"
set smarttab                  " tab and backspace are smart
set splitbelow                  " Horizontal windows should split to bottom
set splitright                  " Vertical windows should be split to right
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
" NerdTree {{{
let g:NERDTreeWinSize=50
let g:Tlist_WinWidth=50
let NERDTreeMapActivateNode='<right>'
"let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.DS_Store', '\~$', '\.swp']
"autocmd VimEnter * NERDTree
"autocmd VimEnter * wincmd p
" }}}

" -----------------------------------------------
" JAVA {{{
" Automatically start language servers.
let g:deoplete#enable_at_startup = 1
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> deoplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS>  deoplete#smart_close_popup()."\<C-h>"
" <CR>: close popup and save indent
"inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
"imap <expr><Tab>=<SID>my_cr_function()<CR>
"" deoplete tab-complete
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
"function! s:my_cr_function() abort
"return deoplete#close_popup() . ""
"endfunction

"autocmd FileType java setlocal omnifunc=javacomplete#Complete
"let g:JavaComplete_LibsPath='/Users/rolima/Work/CODE/FUSIONTAP/OTHER/libs/commons-cli-1.2.jar:/Users/rolima/Work/CODE/FUSIONTAP/OTHER/libs/gcm.jar:/Users/rolima/Work/CODE/FUSIONTAP/OTHER/libs/javax.json.jar:/Users/rolima/Work/CODE/FUSIONTAP/OTHER/libs/ksoap2-j2me-core-2.1.2.jar:/Users/rolima/Work/CODE/FUSIONTAP/OTHER/libs/kxml2-2.3.0.jar:/Users/rolima/Work/CODE/FUSIONTAP/OTHER/libs/maf.embedded.amx.api.jar:/Users/rolima/Work/CODE/FUSIONTAP/OTHER/libs/maf.embedded.amx.impl.jar:/Users/rolima/Work/CODE/FUSIONTAP/OTHER/libs/maf.embedded.api.jar:/Users/rolima/Work/CODE/FUSIONTAP/OTHER/libs/maf.embedded.cdm.jar:/Users/rolima/Work/CODE/FUSIONTAP/OTHER/libs/maf.embedded.framework.jar:/Users/rolima/Work/CODE/FUSIONTAP/OTHER/libs/maf.j2me.connections.jar:/Users/rolima/Work/CODE/FUSIONTAP/OTHER/libs/maf.java.common.jar:/Users/rolima/Work/CODE/FUSIONTAP/OTHER/libs/maf.java.shared.jar:/Users/rolima/Work/CODE/FUSIONTAP/OTHER/libs/maf.juel.jar:/Users/rolima/Work/CODE/FUSIONTAP/OTHER/libs/sqlite.jar:/Users/rolima/Work/CODE/FUSIONTAP/OTHER/libs/wsm-agent-common.jar:/Users/rolima/Work/CODE/FUSIONTAP/OTHER/libs/wsm-common-platform.jar'
" }}}

" -----------------------------------------------
" GOLANG {{{
autocmd FileType go nmap <leader>b <Plug>(go-build)
autocmd FileType go nmap <Leader>c <Plug>(go-coverage-toggle)
autocmd FileType go nmap <Leader>i <Plug>(go-info)
autocmd FileType go nmap <leader>r <Plug>(go-run)
autocmd FileType go nmap <Leader>s <Plug>(go-def-split)
autocmd FileType go nmap <leader>t <Plug>(go-test)
autocmd FileType go nmap <Leader>v <Plug>(go-def-vertical)
autocmd FileType go nmap <C-g> :GoDeclsDir<cr>
autocmd FileType go imap <C-g> <esc>:<C-u>GoDeclsDir<cr>

let g:go_auto_sameids = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_generate_tags = 1
" }}}

" -----------------------------------------------
" SYNTASTIC {{{
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:gitgutter_sign_column_always=1
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
" }}}

" -----------------------------------------------
" KEY BINDINGS {{{
" files - nerdtree & fzf
nmap <leader>e :NERDTreeToggle<CR>
nmap <leader>j :NERDTreeFind<CR>
nmap <leader>p :FZF<CR>
" save/quit
nmap <leader>w :w!<cr>
nmap <leader>q :q<cr>
nmap <leader>Q :q!<cr>
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
" imap <Tab> <C-P>
nnoremap \ :noh<return>
imap <D-.> <Esc>
" }}}

" vim:foldmethod=marker:foldlevel=0
