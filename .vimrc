imap ,e <esc>
syntax on
filetype on
filetype plugin indent on

"For autocompletion 
set wildmode=longest,list,full
set wildmenu
set expandtab
set textwidth=120
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set backspace=indent,eol,start
set ruler
set number
set splitbelow

" Setting custom tab widths
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType css setlocal shiftwidth=2 tabstop=2
highlight ColorColumn ctermbg=lightblue

" Height of the command bar
set cmdheight=2

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Makes search act like search in modern browsers
set incsearch 

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

" Automatically change current directory to that of the file in the buffer
autocmd BufEnter * cd %:p:h

" Make vsplit open buffer on right hand side
set splitright

" Switch betwen buffers without saving
set hidden

" Set to auto read when a file is changed from the outside
set autoread

" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
" Remember info about open buffers on close
set viminfo^=%

" Always show the status line
set laststatus=2

" Use j and k to scroll up and down for autocomplete
inoremap <expr> j ((pumvisible())?("\<C-n>"):("j"))
inoremap <expr> k ((pumvisible())?("\<C-p>"):("k"))

" Remap backtick to single quote
nnoremap ' `
nnoremap ` ''`
