"" Plug
call plug#begin('~/.local/share/nvim/plugged')
" Syntax Highlighting
Plug 'w0rp/ale'

" Autocompletion
Plug 'roxma/nvim-completion-manager'
Plug 'roxma/nvim-cm-tern',  {'do': 'npm install'}

" Vim Wiki
Plug 'vimwiki/vimwiki'

" NERD Tree
Plug 'scrooloose/nerdtree'

" Vim Surround
Plug 'tpope/vim-surround'

" Vim Javascript
Plug 'pangloss/vim-javascript'

" Git Gutter
Plug 'airblade/vim-gitgutter'

" Vim-Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" TmuxLine
Plug 'edkolev/tmuxline.vim'

" Solarized Theme
Plug 'altercation/vim-colors-solarized'

" React JSX
Plug 'mxw/vim-jsx'

" Vim-Commentary
Plug 'tpope/vim-commentary'

"FZF
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

call plug#end()

" Enables True Colors
set termguicolors

" don't bother with vi compatibility
set nocompatible

" enable syntax highlighting
syntax enable

set autoindent
set autoread                                                 " reload files when changed on disk, i.e. via `git checkout`
set backspace=2                                              " Fix broken backspace in some setups
set backupcopy=yes                                           " see :help crontab
set clipboard=unnamed                                        " yank and paste with the system clipboard
set directory-=.                                             " don't store swapfiles in the current directory
set encoding=utf-8
set expandtab                                                " expand tabs to spaces
set ignorecase                                               " case-insensitive search
set incsearch                                                " search as you type
set laststatus=2                                             " always show statusline
set list                                                     " show trailing whitespace
set listchars=tab:▸\ ,trail:▫
set number                                                   " show line numbers
set ruler                                                    " show where you are
set scrolloff=3                                              " show context above/below cursorline
set shiftwidth=2                                             " normal mode indentation commands use 2 spaces
set showcmd
set smartcase                                                " case-sensitive search if any caps
set softtabstop=2                                            " insert mode tab and backspace use 2 spaces
set tabstop=8                                                " actual tabs occupy 8 characters
set wildignore=log/**,node_modules/**,target/**,tmp/**,*.rbc
set wildmenu                                                 " show a navigable menu for tab completion
set wildmode=longest,list,full

" keyboard shortcuts
let mapleader = ','
inoremap jj <ESC>
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap <leader>l :Align
nnoremap <leader>a :Ag<space>
nnoremap <leader>b :CtrlPBuffer<CR>
nnoremap <leader>d :NERDTreeToggle<CR>
nnoremap <leader>f :NERDTreeFind<CR>
nnoremap <leader>t :Files<CR>
nnoremap <leader>T :CtrlPClearCache<CR>:CtrlP<CR>
nnoremap <leader>] :TagbarToggle<CR>
nnoremap <leader><space> :call whitespace#strip_trailing()<CR>
nnoremap <leader>g :GitGutterToggle<CR>
noremap <silent> <leader>V :source ~/.vimrc<CR>:filetype detect<CR>:exe ":echo 'vimrc reloaded'"<CR>

"" ADDON SETTINGS

" Vim Wiki
let g:vimwiki_list = [{'path':'~/Dropbox/VimWiki', 'syntax': 'markdown', 'ext': '.md'}]

" Nvim Completion Manager
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Javascript-Vim
let g:javascript_plugin_jsdoc = 1

" Airline-Vim
let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'
let g:airline_powerline_fonts = 1

" Solarized Vim
set background=dark
colorscheme solarized

" JSX-VIM
let g:jsx_ext_required = 0

" Ale
let g:ale_lint_on_text_changed = 'never'
