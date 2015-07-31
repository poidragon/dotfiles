
"Highlighting
highlight OverLength ctermbg=darkblue ctermfg=white guibg=#592929 
highlight ExtraWhite ctermbg=darkred ctermfg=blue guibg=#ff0000

autocmd BufWinEnter * match OverLength /\%81v.\+/
autocmd BufWinEnter * match ExtraWhite /\S\zs\s\+$/

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

