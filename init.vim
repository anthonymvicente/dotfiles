call plug#begin('~/.local/share/nvim/plugged')

" destraction free writing
Plug 'junegunn/goyo.vim'

" paragraph highlighting, used with goyo
Plug 'junegunn/limelight.vim'

" code completion
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" easily surround in brackets
Plug 'tpope/vim-surround'

" autoclose quotes, brackets, braces, etc
Plug 'jiangmiao/auto-pairs'

Plug 'ajgrf/parchment'

call plug#end()

set number " turn on line numbers
set relativenumber
set numberwidth=5 " displays line numbers better
" filetype plugin indent on " load indent settings
syntax on " synax highlighting
set expandtab " no real tabs, uses spaces instead
set softtabstop=4 "auto-indent ammount when using cindent
set tabstop=8 " real tabs use 8 spaces
set shiftround
set shiftwidth=4
set wildignore+=*.o,*.obj,*.a,*.lib,*.elf,*.dll,*.exe
set cindent " smart indenting
set incsearch " highlight search results as typed
set ignorecase " case insensitive search
set pastetoggle=<F2>
set list " enable highlighting of whitespace
set lcs=tab:⇒\ ,trail:◊ " how to highlight particular whitespace characters
set scrolloff=5 " forces page scrolling 5 lines from the bottom of the page
set laststatus=2 " always display vim status line

set nowrap " disable word wrap
set listchars+=extends:❯ " display characters when line continues off page
set listchars+=precedes:❮
" set cursorline
if exists('$TMUX')
    set term=screen-256color
endif

" Use deoplete.
" let g:deoplete#enable_at_startup = 1

" \ + space to activate Goyo
:nnoremap <leader><Space> :Goyo<CR>
let g:limelight_conceal_ctermfg = 'gray'

function! s:goyo_enter()
    " call deoplete#disable()
    set wrap
    set noshowmode
    set noshowcmd
    set nolist
    set nocursorline
    colorscheme parchment
    Limelight
endfunction

function! s:goyo_leave()
    " call deoplete#enable()
    set nowrap
    set showmode
    set showcmd
    set list
    set cursorline
    colorscheme default
    Limelight!
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()
