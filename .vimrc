" Loads pathogen plugins from ~/.vim/bundle
execute pathogen#infect()
call pathogen#helptags()

set nu

set t_ut=
colorscheme torte

syntax on
filetype plugin indent on

" spacing settings
set textwidth=79  " lines longer than 79 columns will be broken
set shiftwidth=4  " operation >> indents 4 columns; << unindents 4 columns
set tabstop=4     " an hard TAB displays as 4 columns
set expandtab     " insert spaces when hitting TABs
set softtabstop=4 " insert/delete 4 spaces when hitting a TAB/BACKSPACE
set shiftround    " round indent to multiple of 'shiftwidth'
set autoindent    " align the new line indent with the previous line

" Display white spaces
set list listchars=tab:>-,eol:¶,trail:·
hi NonText ctermfg=238 guifg=gray
hi SpecialKey ctermfg=239 guifg=gray

" Search settings
set hlsearch
set incsearch

" Custom highlighting
" TODO: Make check case insensitive
highlight ascholtz ctermbg=white ctermfg=black
match ascholtz /ascholtz/

" Nerdtree
map <leader>n :NERDTreeToggle<CR>

" Control-p changes to handle large number of files
let g:ctrlp_max_files=0
let g:ctrlp_max_depth=40
let g:ctrlp_regexp = 1

" Python specific config
" ----------------------

" Disable line too long pylint message
let g:syntastic_python_pylint_args='--disable=C0301'

" super tab
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"

" json specific config
" ----------------------
" TODO: json pretty print/layout

" TODO: Toggle tagbar
