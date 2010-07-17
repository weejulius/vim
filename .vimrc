" .vimrc file.
" P.C. Shyamshankar <sykora@lucentbeing.com>

" Set up some keys.
let mapleader = ' '
source ~/etc/vim/colemak.vim

" Let's find out where we are.
filetype plugin indent on
filetype plugin on
syntax enable


" Set the colorscheme.
if &t_Co == 256
    colorscheme molokai
endif

set guifont=Envy\ Code\ R\ 11


" Some general options.
set modeline " Allow vim to interpret modelines, to determine per-file options.
set mouse=a " Enable mouse on all modes.
set formatoptions=t,c,r,o,q,n,l " Various hints for automatic formatting.
set virtualedit=block " Allow choosing perfect rectangles in Visual Block mode.

" Windowing
set splitright " Open horizontally split windows to the right of the current window.
set splitbelow " Open vertically split windows to below the current window.
set laststatus=2 " Always show a status bar.

" Completion
set wildmenu " Advanced completion, showing matches above the command line.
set wildmode=full " On multiple matches, list all, complete longest, then full.

" Display

set wrap " Wrap long lines, instead of cutting them off, or making me scroll.
set linebreak " Wrap lines at words or punctuation, rather than in the middle.
set number " Show line numbers.

" Indent
set tabstop=4 " Number of spaces that a <Tab> counts for, when inserted through indent.
set softtabstop=4 " Number of spaces that a <Tab> counts for, when _you_ insert it.
set shiftwidth=4 " Number of spaces used for each indentation, <<, >>, etc.
set expandtab " Always use spaces instead of tabs.
set smarttab " Automatically detect if you want to delete a <Tab>'s worth of spaces.
set autoindent " Automatically indent the next line the same as the current line.
" Search
set ignorecase " Be case insensitive while searching.
set smartcase " Except when there are upper-case letters in the search term.
set incsearch " Highlight matches as the term is typed.
set nohlsearch " Don't highlight matches afterwards.


set tags=/work/sources/.ctags

" Corrections for common mistakes.
command! W w
command! Q q
command! Wq wq
command! X x

" Script specific settings


let g:NERDSpaceDelims = 1
let g:VCSCommandMapPrefix = '<Leader>v'
noremap <C-L> :diffupdate<CR><C-L>
imap ;; <esc>l

inoremap <TAB>O <ESC>O
inoremap <TAB>o <ESC>o
inoremap <TAB>j <DOWN>
inoremap <TAB>h <LEFT>
inoremap <TAB>k <UP>
inoremap <TAB>l <RIGHT>
inoremap <TAB>d <ESC>ddi

highlight RedundantSpaces term=standout ctermbg=red guibg=red
match RedundantSpaces /\s\+$\| \+\ze\t/

"set cscopequickfix=f+
if has("cscope")
		set csto=0
		set cst
		set nocsverb
		" add any database in current directory
		if filereadable("cscope.out")
		    cs add cscope.out
		" else add database pointed to by environment
		elseif $CSCOPE_DB != ""
		    cs add $CSCOPE_DB
		endif
		set csverb
endif

nmap cp :let @*=expand("%:p")<CR>
