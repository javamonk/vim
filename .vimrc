" Loads pathogen plugins from ~/.vim/bundle
execute pathogen#infect()
call pathogen#helptags()

set nu

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

" Search settings
set hlsearch
set incsearch

" Task list
map <leader>td <Plug>TaskList

" Nerdtree
map <leader>n :NERDTreeToggle<CR>

" Python specific config
" ----------------------

" super tab
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"

" json specific config
" ----------------------
" TODO: json pretty print/layout

" TODO: Toggle tagbar
