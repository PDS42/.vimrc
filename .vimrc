"██████╗ ██████╗ ███████╗██╗  ██╗██████╗ 
"██╔══██╗██╔══██╗██╔════╝██║  ██║╚════██╗
"██████╔╝██║  ██║███████╗███████║ █████╔╝
"██╔═══╝ ██║  ██║╚════██║╚════██║██╔═══╝ 
"██║     ██████╔╝███████║     ██║███████╗
"╚═╝     ╚═════╝ ╚══════╝     ╚═╝╚══════╝


colorscheme badwolf

syntax enable "enable synthax processing

set tabstop=4 "number of visual spaces per \t
set softtabstop=4 "number of spaces in tab when editing

set number
set  mouse=a
set showcmd " show last command used in bottom bar
set cursorline " highlight current line
filetype indent on "language-related indentation

set wildmenu "autocomplete
set lazyredraw "redraw only when needed

set showmatch "highlight matching {}[]()
set incsearch "search as characters are entered
set hlsearch "highlight matches

" move vertically by visual line
nnoremap j gj
nnoremap k gk

" move to beginning/end of line
nnoremap B ^
nnoremap E $

" $/^ doesn't do anything
nnoremap $ <nop>
nnoremap ^ <nop>

" highlight last inserted text
nnoremap gV `[v`]

let mapleader="," " leader is comma

"open ag.vim
nnoremap <leader>a :Ag

"sends backup files to /tmp
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

" strips trailing whitespace at the end of files. this
" " is called on buffer write in the autogroup above.
function! <SID>StripTrailingWhitespaces()
	"save last search & cursor position
	let _s=@/
	let l = line(".")
	let c = col(".")
	%s/\s\+$//e
	let @/=_s
	call cursor(l, c)
endfunction


