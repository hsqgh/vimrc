function! VimDiesel()
    set guicursor=

    set number
    set relativenumber

    set tabstop=4
    set softtabstop=4
    set shiftwidth=4
    set expandtab

    set smartindent

    set nowrap

    set noswapfile
    set nobackup
    set undodir=$HOME/.vim/undodir
    set undofile

    set nohlsearch
    set incsearch

    set termguicolors

    set scrolloff=8
    set isfname+=@-@

    set updatetime=50

    set colorcolumn=120

    " Set leader key
    let mapleader=" "

    " Key mappings
    nnoremap <leader>pv :Ex<CR>

    vnoremap J :m '>+1<CR>gv=gv
    vnoremap K :m '<-2<CR>gv=gv

    nnoremap J mzJ`z
    nnoremap <C-d> <C-d>zz
    nnoremap <C-u> <C-u>zz
    nnoremap n nzzzv
    nnoremap N Nzzzv

    " Paste without replacing yanked text
    xnoremap <leader>p "_dP

    " Copy to system clipboard
    nnoremap <leader>y "+y
    vnoremap <leader>y "+y
    nnoremap <leader>Y "+Y

    " Delete without yanking
    nnoremap <leader>d "_d
    vnoremap <leader>d "_d

    " Map <C-c> to <Esc> in insert mode
    inoremap <C-c> <Esc>

    " Disable Q
    nnoremap Q <nop>

    " Quickfix navigation
    nnoremap <C-k> :cnext<CR>zz
    nnoremap <C-j> :cprev<CR>zz
    nnoremap <leader>k :lnext<CR>zz
    nnoremap <leader>j :lprev<CR>zz

    " Replace current word
    nnoremap <leader>s :%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>

    " Make file executable
    nnoremap <leader>x :!chmod +x %<CR>

    highlight LineNr ctermfg=lightblue guifg=#5eacd3
    highlight CursorLineNr ctermfg=white guifg=#ffffff
    highlight ColorColumn ctermbg=darkgrey guibg=#2e3440
endfunction

let serverMode = 0

if serverMode == 0
    call VimDiesel()
endif


