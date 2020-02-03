let mapleader=' '
inoremap <leader>w <Esc>:w<cr>
nnoremap <leader>wh <C-w>h
nnoremap <leader>wj <C-w>j
nnoremap <leader>wk <C-w>k
nnoremap <leader>wl <C-w>l
nnoremap <leader>ws <C-w>s
nnoremap <leader>wv <C-w>v
nnoremap <leader>wq <C-w>q


" vim plug
call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'mhinz/vim-startify'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'brooth/far.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'majutsushi/tagbar'
Plug 'lfv89/vim-interestingwords'
call plug#end()

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
