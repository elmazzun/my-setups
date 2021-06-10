" Show matching parenthesis
set showmatch

" Tab characters appear 4-spaces-wide
set tabstop=4

" Smart case-insensitive, incremental search
set ignorecase
set smartcase
set incsearch

" An indent corresponds to a single tab
set shiftwidth=4

" Column number 80 is green
set colorcolumn=80
highlight ColorColumn ctermbg=2

" Highlight current line and column
:set cursorline cursorcolumn
nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>
hi CursorLine   cterm=NONE ctermbg=darkgray ctermfg=NONE "guibg=lightgrey guifg=white
hi CursorColumn cterm=NONE ctermbg=darkgray ctermfg=NONE "guibg=lightgrey guifg=white

" Enable mouse
set mouse=a
