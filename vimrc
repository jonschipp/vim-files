set nocompatible 		     "Use Vim settings, rather then Vi setting, must be the first line
execute pathogen#infect()
set background=dark
set laststatus=2
set statusline=%<%f\%h%m%r%=%-20.(line=%l\ \ col=%c%V\ \ totlin=%L%)\ \ \%h%m%r%=%-40(bytval=0x%B,%n%Y%)\%P
set showmode            "Show what mode you're in
set cursorline
set number
set hlsearch
set wrap
set t_ti= t_te=
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_ " Show “invisible” characters
set noswapfile
set nowrap       		     "Don't wrap lines
set linebreak    		     "Wrap lines at convenient points
set ignorecase
set smartcase
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab
set nrformats=           " Treat all numerals as decimal if contain leading 0's (def: octal for leading 0's)
set pastetoggle=<F2>
set history=200
"set textwidth=80

filetype on
filetype plugin on
runtime macros/matchit.vim
filetype indent on
filetype on
au BufNewFile,BufRead *.bro set filetype=perl
syntax on
colorscheme solarized

" Highlight trailing whitespaces
let c_space_errors=1
highlight WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /\s\+$/


"As of Mac OS X Lion 10.7, Terminal supports “bracketed paste mode,”
"which enables the terminal emulator to tell the program connected
"to the tty when the user pastes text: http://stackoverflow.com/a/7053522/979338
"
if &term =~ "xterm.*"
    let &t_ti = &t_ti . "\e[?2004h"
    let &t_te = "\e[?2004l" . &t_te
    function XTermPasteBegin(ret)
        set pastetoggle=<Esc>[201~
        set paste
        return a:ret
    endfunction
    map <expr> <Esc>[200~ XTermPasteBegin("i")
    imap <expr> <Esc>[200~ XTermPasteBegin("")
    cmap <Esc>[200~ <nop>
    cmap <Esc>[201~ <nop>
endif

" tab navigation like firefox
nnoremap <S-tab> :tabprevious<CR>
nnoremap <tab>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>
nnoremap <C-m>     :tabmove

" http://www.catonmat.net/blog/sudo-vim/
cnoremap sudow w !sudo tee % >/dev/null

nnoremap  ;  :
nnoremap  :  ;
inoremap jj <Esc>
"GNU Screen-like bindings
map <C-a>c <C-w>s
map <C-a>x <C-w>c
map <C-a>n <C-w>l
map <C-a>p <C-w>h
map <C-a>j <C-w>j
map <C-a>k <C-w>k
