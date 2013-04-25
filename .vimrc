"" pathogen
call pathogen#infect()

syntax on
set smartindent
set autoindent
set nowrap

"" Automatically resize vertical splits.
":au WinEnter * :set winfixheight
":au WinEnter * :wincmd =

""set tab spacing to 4
set ts=4
set tabstop=4
set shiftwidth=4


"" show matching brackets (),{},[]
set showmatch

""set number in current split
set number
":au WinEnter * :setlocal number
":au WinLeave * :setlocal nonumber

"more natural split behaviour
set splitbelow
set splitright

"" set colorschemes to 256 colors
set t_Co=256

""backup
set backup              " keep a backup file
set backupdir=~/.vim/backup,/tmp

""undo
set undodir=~/.vim/undodir
set undofile


"" plug-in settings
filetype plugin on
filetype indent on
autocmd Filetype tex,latex :set grepprg=grep\ -nH\ $*
autocmd Filetype tex,latex :set dictionary=~/.vim/dict/latex.dict

""coloscheme junk
""set background=dark
""let g:solarized_termtrans=1
""colorscheme solarized
""colorscheme lucius
colorscheme jellybeans
""colorscheme vydark
""colorscheme cleanroom
""

""pastmode toggle
nmap <F4> :set paste!<CR>
""tagbar toggler
nmap <F8> :TagbarToggle<CR>

""gundo
let g:gundo_width = 45
nnoremap <F3> :GundoToggle<CR>
"let g:gundo_preview_bottom = 1

""NERDTree
nmap <F2> :NERDTreeToggle<CR>
let g:NERDChristmasTree = 1
let g:NERDTreeShowHidden = 1

""system clipboard integration
""noremap <leader>y "*y
""noremap <leader>p :set paste<CR>"*p<CR>:set nopaste<CR>
""noremap <leader>P :set paste<CR>"*P<CR>:set nopaste<CR>
""vnoremap <leader>y "*ygv


""statusline
"set statusline=%{fugitive#statusline()}
set nocompatible   " Disable vi-compatibility
"set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs   "
"let g:Powerline_symbols = 'unicode'

"restore cursor position in files
if has("autocmd")
		au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif 

"highlight current column and line
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline cursorcolumn
set cursorline cursorcolumn

"LaTeX rules
"let g:Tex_CompileRule_pdf
"let g:Tex_FormatDependency_pdf = 'dvi,ps,pdf'
let g:Tex_MultipleCompileFormats='pdf'
let g:tex_flavor='latex'
autocmd FileType tex setlocal spell spelllang=en_us

set clipboard=unnamed


autocmd FileType c :nnoremap <F5> :!make<CR>
autocmd FileType cpp :nnoremap <F5> :!make<CR>

au FileType python setlocal tabstop=8 expandtab shiftwidth=4 softtabstop=4

nmap <F9> gg=G''<CR>

nmap <F10> :SSave<CR>
