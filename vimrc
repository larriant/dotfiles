set nocompatible
filetype plugin on
syntax on

" Set standard file encoding
set encoding=utf8

" No special per file vim override configs
set nomodeline

" Don't show the normal vim status line
set noshowmode

" Stop word wrapping
set nowrap

" Except... on Markdown. That's good stuff.
autocmd FileType markdown setlocal wrap

" Adjust system undo levels
set undolevels=100

" Use system clipboard
set clipboard=unnamed

" Set tab width and convert tabs to spaces
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

" Don't let Vim hide characters or make loud dings
set conceallevel=1
set noerrorbells

" Number gutter
set number

" Use search highlighting
set hlsearch

" Space above/beside cursor from screen edges
set scrolloff=1
set sidescrolloff=5


" Remapping [Leader] to space
let mapleader="\<SPACE>"

" Disable mouse support
set mouse=r
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

" Setting arrow keys to resize panes
nnoremap <Left> :vertical resize -1<CR>
nnoremap <Right> :vertical resize +1<CR>
nnoremap <Up> :resize -1<CR>
nnoremap <Down> :resize +1<CR>

" Disable arrow keys completely in Insert Mode
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>


" Return to the last file opened.
nmap <Leader><Leader> <c-^>

" Tab to switch to next buffer. Shift Tab for last.
nnoremap <Tab> :bnext!<CR>
nnoremap <S-Tab> :bprev!<CR><Paste>


call plug#begin('~/.local/share/nvim/plugged')
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'shougo/unite.vim'
  Plug 'dracula/vim' 
  Plug 'airblade/vim-gitgutter'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'ctrlpvim/ctrlp.vim', { 'on': 'CtrlP' }
  Plug 'mhinz/vim-grepper'
  Plug 'Shougo/vimfiler.vim', { 'on': 'VimFiler' }
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'w0rp/ale'
  Plug 'vimwiki/vimwiki'
  Plug 'plasticboy/vim-markdown'
  Plug 'pangloss/vim-javascript'
  Plug 'mxw/vim-jsx'
  Plug 'jiangmiao/auto-pairs'
  Plug 'tpope/vim-commentary'
  Plug 'junegunn/goyo.vim'
call plug#end()

"" Plugin Settings
" Dracula Settings
color Dracula

" Ale Settings
let g:ale_sign_column_always = 1
let g:ale_sign_error = '⤫'
let g:ale_sign_warning = '⚠'
" Enable integration with airline.
let g:ale_fixers = { 'javascript': ['eslint'], 'scss': ['stylelint'] }
let g:ale_linters = { 'javascript': ['eslint'] }
nmap <leader>d <Plug>(ale_fix)


" indentLine Settings
let g:indentLine_enabled = 1
let g:indentLine_char = "⟩"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#ale#enabled = 1
let g:airline_powerline_fonts = 1
set laststatus=2

" Fuzzy Finder Settings
nnoremap <Leader>p :CtrlP<CR>
nnoremap <Leader>t :CtrlP<CR>

"" Ignore files in .gitginore
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" How ctrlp decides on the directory
let g:ctrlp_working_path_mode = 'ra'

" Grepper Settings
nnoremap <Leader>fp :Grepper<Space>-query<Space>
nnoremap <Leader>fb :Grepper<Space>-buffers<Space>-query<Space>-<Space>

" VimFiler Settings
map ` :VimFiler -explorer<CR>
map ~ :VimFilerCurrentDir -explorer -find<CR>

" Deoplete Settings
let g:deoplete#enable_at_startup = 1
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" Vim Wiki Settings
let g:vimwiki_list = [{'path':'~/Dropbox/VimWiki', 'syntax': 'markdown', 'ext': '.md' }]

" Vim Jsx Settings
let g:jsx_ext_required = 0

" VIm Wiki Settings
let g:vim_markdown_autowrite = 1
let g:vim_markdown_frontmatter = 1
set conceallevel=2

" PROSE MODE
function! ProseMode()
  call goyo#execute(0, [])
endfunction

command! ProseMode call ProseMode()
nmap \p :ProseMode<CR>
