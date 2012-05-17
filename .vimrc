syntax on
set smartindent
set autoindent
set number
set nowrap
set ts=4
set showmatch           " show matching brackets (),{},[]

"backup
set backup              " keep a backup file

" plug-in settings
filetype plugin on
filetype indent on
autocmd Filetype tex,latex :set grepprg=grep\ -nH\ $*
autocmd Filetype tex,latex :set dictionary=~/.vim/dict/latex.dict
