set nocompatible
setlocal spell spelllang=en_us
set spelllang=en
set spellfile=$HOME/.vim/spell/en.utf-8.add
syntax on
filetype on
set nowrap
set expandtab
" For cutting & pasting into from X, you'll want :set nosmartindent
"set smartindent
" tabstop = 4 will need to be disabled to work on picky files like calendar.
set tabstop=2
set shiftwidth=2
set softtabstop=2
set number
" Highlighting tab characters, trailing spaces, and non-breaking chars:
"exec "set listchars=tab:\uBB\uBB,nbsp:~,trail:\uB7"
set list
"set list!
"set listchars=tab:>-
" Make 81st column stand out for wide-editing
highlight ColorColumn ctermbg=magenta
set colorcolumn=81
" Remapping keys (just as a note)
"nnoremap ; :
"nnoremap : ;
"
" Other notes:
":digraphs

" Ignore case when using / and ? to do searches:
set ic
" Don't ignore case if the search phrase has uppercase in it:
set smartcase
" make windows stay equal sizing
set equalalways
" set the color/theme - others available: blue darkblue default delek desert elflord evening koehler morning murphy pablo peachpuff ron shine slate torte zellner
"colo koehler
colorscheme apprentice
"set textwidth=80
set smartindent
" generally the only time I go to the end of a word is to append after it - so make that easier
map e ea
" turn on folding by default based on indent
set foldmethod=indent
" highlight cursor column & line
set cursorcolumn
set cursorline
" autocmd does things on events for file matches:
autocmd BufNewFile,BufRead *.sls set filetype=sls
" set the cryptmethod to use blowfish2 rather than pkzip
set cryptmethod=blowfish2
" set to highlight searches
set hlsearch
" macros
" alphabetize words in a line with space as delimiter:
:let @m=":call setline('.', join(sort(split(getline('.'), ' ')), \" \"))"
" alphabetize words in a line with comma-space as delimiter:
:let @n=":call setline('.', join(sort(split(getline('.'), ', ')), \", \"))"
" when applied, enumerate lines as a list (similar to 'nl') use ':normal @l' for this when in visual mode!
:let b:i=1
:let @l="I=b:i)		j:let b:i+=1"


