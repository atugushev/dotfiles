" VimPlug
call plug#begin()
Plug 'raimon49/requirements.txt.vim', {'for': 'requirements'}
Plug 'bling/vim-airline'
Plug 'majutsushi/tagbar'
Plug 'vim-airline/vim-airline-themes'
Plug 'sainnhe/vim-color-forest-night'
Plug 'cocopon/iceberg.vim'
Plug 'isobit/vim-darcula-colors'
call plug#end()

" Encodings
set fileencodings=utf-8,cp1251,koi8-r,cp866
set encoding=utf-8
set termencoding=utf-8

" General settings
set number
set tabstop=4
set shiftwidth=4
set viminfo='10,\"100,:20,%,n~/.viminfo
set expandtab
set noeol
set rtp+=$GOROOT/misc/vim
filetype on
filetype plugin on
filetype indent on
syntax enable
set scrolloff=2 " Keep two lines visible above/below the cursor when scrolling.

" Search options
set incsearch " show where the pattern while typing
set hlsearch " highlight all its matches

" Format options:
"  * [t] - Auto-wrap text using textwidth
"  * [c] - Auto-wrap comments using textwidth, inserting the current comment
set formatoptions=tc

" Switch to dark or light theme
if system("defaults read -g AppleInterfaceStyle") =~ '^Dark'
    set background=dark
    colorscheme iceberg
    let g:airline_theme='distinguished'
else
    colorscheme tango
    set background=light
    let g:airline_theme='silver'
endif

" Mark as red unneeded whitespaces
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif
        let c_space_errors=1
        highlight WhitespaceEOL ctermbg=red guibg=red
        match WhitespaceEOL /\s\+$/
set ruler

" Custom file type settings
autocmd FileType yaml setlocal ts=2 sts=2 sw=2

" Map Ctrl + - to 'insert em-dash'
inoremap <c-_> —

" Indicate switching to different modes
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let g:airline#extensions#tagbar#flags = 'f'  " show full tag hierarchy
nmap <F8> :TagbarToggle<CR>

" show a visual line under the cursor's current line
set cursorline

" backspace over everything in insert mode
set backspace=indent,eol,start
