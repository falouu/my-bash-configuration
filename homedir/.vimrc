filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=2
" when indenting with '>', use 4 spaces width
set shiftwidth=2
" On pressing tab, insert 4 spaces
set expandtab

" The two lines below set behaviour presented in following example:"
"   /copyright      # Case insensitive "
"   /Copyright      # Case sensitive "
"   /copyright\C    # Case sensitive "
"   /Copyright\c    # Case insensitive "
:set ignorecase
:set smartcase
