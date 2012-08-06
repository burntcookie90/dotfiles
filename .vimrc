" pathogen
call pathogen#infect()

syntax on
set smartindent
set autoindent
set nowrap

" Automatically resize vertical splits.
:au WinEnter * :set winfixheight
:au WinEnter * :wincmd =

"set tab spacing to 4
set ts=4


" show matching brackets (),{},[]
set showmatch

"set number in current split
set number
:au WinEnter * :setlocal number
:au WinLeave * :setlocal nonumber

" set colorschemes to 256 colors
set t_Co=256

"backup
set backup              " keep a backup file
set backupdir=~/.vim/backup,/tmp

" plug-in settings
filetype plugin on
filetype indent on
autocmd Filetype tex,latex :set grepprg=grep\ -nH\ $*
autocmd Filetype tex,latex :set dictionary=~/.vim/dict/latex.dict

"" solarized
"set background=dark
"let g:solarized_termtrans=1
"colorscheme solarized
"colorscheme lucius
colorscheme jellybeans
"colorscheme vydark
"colorscheme cleanroom
"

"tagbar toggler
nmap <F8> :TagbarToggle<CR>

"gundo toggler
"nnoremap <F5> :GundoToggle<CR>
