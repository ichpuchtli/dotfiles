" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.  set nocompatible

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" =============== Pathogen Initialization ===============
" This loads all the plugins in ~/.vim/bundle
" Use tpope's pathogen plugin to manage all other plugins

filetype off
runtime ~/.vim/autoload/pathogen.vim
call pathogen#infect()
call pathogen#helptags()

filetype on
filetype plugin on
filetype indent on

" ================ Colorscheme Config ====================

syntax enable
set background=dark

if has('gui_running')
    colorscheme solarized
    " Hide everything but memu ba
    set guioptions=m

endif

" ================ Mappings ==========================
"
" System default for mappings is now the "," character
let mapleader = ","

" Next Buffer
nnoremap <silent> <Leader>f :bn<CR>

" Previous Buffer
nnoremap <silent> <Leader>b :bp<CR>

" Delete Buffer
nnoremap <silent> <Leader>x :bd<CR>

" Launch zsh in a new tab!
nmap <silent> <Leader>z :tabe<CR>:set nonumber<CR>:ConqueTerm zsh<CR>

" Toggle paste mode
nmap <silent> <Leader>p :set invpaste<CR>:set paste?<CR>

" cd to the directory containing the file in the buffer
nmap <silent> <Leader>cd :lcs %:h<CR>
nmap <silent> <Leader>md :!mkdir -p %:p:h<CR>

" Search the current file for the word under the cursor and diplay matches
nmap <silent> <Leader>gw :vimgrep /<C-r><C-w>/ %<CR>:ccl<CR>:cwin<CR><C-W>J:nohls<CR>

nmap <silent> <C-o> :NERDTreeToggle<CR>



" ================ General Config ====================

" Show (partial) command in status line.
set showcmd		

" Show matching brackets.
set showmatch

" Do smart case matching
set smartcase

" Incremental search
set incsearch

" Automatically save before commands like :next and :make
set autowrite

" Enable mouse usage (all modes)
"set mouse=a

" Hide the mouse pointer while typing
set mousehide

"Line numbers are good
set number              

"Allow backspace in insert mode
set backspace=indent,eol,start

"Store lots of :cmdline history
set history=1000 

"Show current mode down the bottom
set showmode

"Disable cursor blink
set gcr=a:blinkon0

"No sounds
set visualbell

"Reload files changed outside vim
set autoread 

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
set hidden

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
syntax on



let loaded_matchparen = 1

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Nerd Tree Stuff
" <C-WW> switches between split windows
let NERDTreeIgnore = ['\.obj$']

"Find the next match as we type the search
set incsearch

"Hilight searches by default
"set hlsearch

"Save up to 100 marks, enable capital marks
"set viminfo='100,f1

" Do case insensitive matching
set ignorecase

" Turn Off Swap Files
set noswapfile
set nobackup
set nowb

" Persistent Undo
" Keep undo history across sessions, by storing in file.
" Only works all the time.

"silent !mkdir ~/.vim/backups > /dev/null 2>&1
"set undodir=~/.vim/backups
"set undofile

" Indentation

set autoindent
"set smartindent
"set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=8
set expandtab
"set textwidth=79

" Display tabs and trailing spaces visually
"set list listchars=tab:\ \ ,trail:·

" ================ Folds ============================

" Manual fold operation
set foldmethod=manual 

" Save and restore folds
"au BufWinLeave * mkview
"au BufWinEnter * silent loadview

" ================ Completion =======================


"stuff to ignore when tab completing
set wildignore=*.o,*.obj,*~ 

set wildmenu 

set completeopt=longest,menuone
set wildmode=list:longest

" ================ Scrolling ========================

"Start scrolling when we're 8 lines away from margins
set scrolloff=8


