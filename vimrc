let mapleader=' '
nnoremap <leader>wh <C-w>h
nnoremap <leader>wj <C-w>j
nnoremap <leader>wk <C-w>k
nnoremap <leader>wl <C-w>l
nnoremap <leader>ws <C-w>s
nnoremap <leader>wv <C-w>v
nnoremap <leader>wq <C-w>q

" change cursor
" for vim
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
" for tmux
let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"

" vim plug
call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'mhinz/vim-startify'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'easymotion/vim-easymotion'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/gv.vim'
Plug 'airblade/vim-gitgutter'
Plug 'brooth/far.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'majutsushi/tagbar'
Plug 'lfv89/vim-interestingwords'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'edkolev/tmuxline.vim'


call plug#end()

set updatetime=100
set ttimeoutlen=0
set encoding=utf8
colorscheme gruvbox
" 显示行号
set number
" 语法检查
syntax on
" add tab space
set ts=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set backspace=2

" 高亮搜索
set hlsearch
" 高亮当前行
set cursorline
filetype on
" nertree
nmap <leader>f :NERDTreeToggle<cr>
nmap <leader>v :NERDTreeFind<cr>
autocmd VimEnter *
            \   if !argc()
            \ |   Startify
            \ |   NERDTree
            \ |   wincmd w
            \ | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" ctrlp
let g:ctrlp_map = '<leader>p'
" easymotion
nmap ss <Plug>(easymotion-s2)
" tagbar
nnoremap <leader>t :TagbarToggle<CR>
" vim-go
set autowrite 
let g:go_highlight_array_whitespace_error = 0
let g:go_highlight_chan_whitespace_error = 0
let g:go_highlight_space_tab_error = 0
let g:go_highlight_trailing_whitespace_error = 0
let g:go_highlight_extra_types = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_types = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_operators = 1
let g:go_highlight_string_spellcheck = 0
let g:go_highlight_variable_declarations = 0
let g:go_highlight_variable_assignments = 0
let g:go_auto_type_info = 1
let g:go_fmt_command = "goimports"
let g:go_def_reuse_buffer = 1
let g:go_echo_go_info = 0
