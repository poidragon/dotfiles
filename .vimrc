
"Highlighting
highlight OverLength ctermbg=grey guibg=#101010 
highlight ExtraWhite ctermbg=darkred ctermfg=blue guibg=#ff0000

au BufWinEnter *.c,*.h,*.cpp,*.vhd let w:m1=matchadd('ExtraWhite', '\S\zs\s\+$', -1)
au BufWinEnter *.c,*.h,*.cpp,*.vhd let w:m2=matchadd('OverLength', '\%81v.\+', -1)

"Mapping
map <C-j> 3j
map <C-k> 3k

"Indents
set smartindent
set tabstop=4
set shiftwidth=4

"C Syntax Options
set cinoptions=l1:0

"Folding
set fdm=indent

"Automatically save and open views to preserve folds
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview

