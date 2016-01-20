"██████╗ ██████╗ ███████╗██╗  ██╗██████╗ 
"██╔══██╗██╔══██╗██╔════╝██║  ██║╚════██╗
"██████╔╝██║  ██║███████╗███████║ █████╔╝
"██╔═══╝ ██║  ██║╚════██║╚════██║██╔═══╝ 
"██║     ██████╔╝███████║     ██║███████╗
"╚═╝     ╚═════╝ ╚══════╝     ╚═╝╚══════╝

" ==========VUNDLE==========
"

colorscheme badwolf

set nocompatible									" be iMproved, required
filetype off										" required

" " set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
" " ==========PLUGINS==========
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'kien/rainbow_parentheses.vim'
"Plugin 'Shougo/neocomplcache.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'Raimondi/delimitMate'

call vundle#end()									" required
filetype plugin indent on							" required

" " ==========PLUGIN SETTINGS==========

" CtrlP settings
:let g:ctrlp_match_window = 'bottom,order:ttb'
:let g:ctrlp_switch_buffer = 0
:let g:ctrlp_working_path_mode = 0
" switch to previous tab
:nnoremap <F5> :bp<CR>
" switch to next tab
:nnoremap <F6> :bn<CR>
" close the current tab
:nnoremap <F7> :bd<CR>

" vim-airline settings
:let g:airline#extensions#tabline#enabled = 1		" enable tab extension

" NerdTree settings
" Open NerdTree
:nnoremap <F2> :NERDTree<CR>
" Close NerdTree
:nnoremap <F3> :NERDTreeClose<CR>

" Neocomplcache settings
let g:neocomplcache_enable_at_startup = 1

" ==========COLORS==========

:syntax enable										" enable syntax processing

" ==========SPACES & TABS==========

:set tabstop=4										" number of visual spaces per TAB
:set softtabstop=4									" number of spaces in tab when editing
:imap {<cr> {<cr>}<c-o>O

" ==========UI CONFIG==========

:set number											" show line numbers
:set cc=80
:set cursorline										" highlight current line
:set wildmenu										" visual auto complete for command menu
:set mouse=a
:set showmatch										" highlight matching [({})]
":inoremap ( ()<left>
":inoremap { {}<left>
":inoremap [ []<left>
":inoremap " ""<left>
":inoremap ' ''<left>

" ==========SEARCHING==========

:set incsearch										" search as characters are entered
:set hlsearch										" highlight matches
"turn of search highlight
:nnoremap <leader><space> :nohlsearch<CR>

" ==========FOLDING==========

:set foldenable										" enable folding
:set foldlevelstart=10								" open most folds by default
"space open/close folds
:nnoremap <space> za
:set foldmethod=indent								" fold based on indent level

" ==========LEADER SHORTCUTS==========

:let mapleader=","									" leader is coma
