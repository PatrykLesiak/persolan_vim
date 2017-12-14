execute pathogen#infect()
syntax enable
filetype plugin indent on
set autoread

set t_Co=256

set nu
set mouse=a
set encoding=utf-8
set noswapfile
set expandtab
set shiftwidth=4
set tabstop=4
set autoread

set wildmode=longest,full
set wildmenu

set lbr
set tw=120
set wrap

let g:airline_powerline_fonts = 1

set updatetime=250

function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    endif
    return ''
endfunction

set laststatus=2
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c

nmap <C-n> :NERDTreeToggle<CR>
nmap _ :sp<CR>
"nmap | :vsp<CR>

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

nmap <F8> :TagbarToggle<CR>
