
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo - wow this looks cool so I'm keeping it
Plugin 'tpope/vim-fugitive'

" Auto Completion
" Plugin 'Valloric/YouCompleteMe' - requires newer VIM

" All of your Plugins must be added before the following line
call vundle#end()            " required
set nocp
filetype plugin indent on    " required

" Plugin Config
" set nocp
" filetype plugin on

" Basics
syntax on
set bs=2

"Highlighting
highlight OverLength ctermbg=green guibg=#101010 
highlight ExtraWhite ctermbg=darkred ctermfg=blue guibg=#ff0000

au BufWinEnter *.c,*.h,*.cpp,*.vhd let w:m1=matchadd('ExtraWhite', '\S\zs\s\+$', -1)
"au BufWinEnter *.c,*.h,*.cpp let w:m2=matchadd('OverLength', '\%81v.\+', -1)

"Mapping
map <C-j> 5j
map <C-k> 5k

"Indents
set smartindent
set tabstop=4
set shiftwidth=4

"C Syntax Options
set cinoptions=l1:0

"Folding
set fdm=indent

"Tab Completion
set wildmode=longest,list,full

"Automatically save and open views to preserve folds
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview

"Ctags
set tags=./tags;/
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>

"Debug insert macro for c files
map <F8> oprintf("%s %i %s\n", __FILE__, __LINE__, __func__);<ESC>

