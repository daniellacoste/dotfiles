syntax on

" dlc: if you have issues with iTerm showing italics/the
" comments foreground is highlighted in your colorscheme,
" follow this blog post:
" https://alex.pearwin.com/2014/05/italics-in-iterm2-vim-tmux/

" EVERFOREST COLOR SCHEME START
if has('termguicolors')
  set termguicolors
endif

set background=dark
let g:everforest_background = 'medium'

" Use everforest colorscheme (ensure xterm-256color is enabled)
" install everforest from https://github.com/sainnhe/everforest 
" follow :help instructions 
colorscheme everforest 
let g:everforest_enable_italic=0

" Copy indent from current line when starting a new line (typing <CR> in
" Insert mode or when using the "o" or "O" command).  
set autoindent

set backspace=2

" Number of spaces that a <Tab> in the file counts for.
set tabstop=2

" Number of spaces to use for each step of (auto)indent and affects what
" happens when you press >>, << or ==
set shiftwidth=2

" In Insert mode: Use the appropriate number of spaces to insert a <Tab>.
set expandtab

" Precede each line with its line number
set number

" Use the following to enable language-dependent indenting
filetype plugin indent on

" Insert newline without entering insert mode
nmap <S-Enter> O<Esc>j
nmap <CR> o<Esc>k

" Highlight current line
set cursorline

" Visual autcomplete for command menu
set wildmenu

" Highlight matching [{()}]
set showmatch

" Set mapleader key
let mapleader = ","

" Search as characters are entered
set incsearch

" Highlight matches
set hlsearch

" Turn off search highlight with ',<space>'
noremap <leader><space> :nohlsearch<CR>

" Highlight last inserted text
nnoremap gV `[v`]

" http://stackoverflow.com/questions/1562633/setting-vim-whitespace-preferences-by-filetype
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2

" https://vi.stackexchange.com/questions/780/how-to-jump-between-matching-html-xml-tags
" Jump to matching HTML tag
runtime macros/matchit.vim
