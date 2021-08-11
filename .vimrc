set guifont=FreeMono\ Bold\ 16
syn on
colorscheme blue
set tabstop=4
set shiftwidth=4
set smarttab
set nu!
set cin!
au BufNewFile *.cpp r ~/.vim/skeleton.cpp
cd /home/x1p234/Documents/programming/
autocmd filetype cpp nnoremap <F9> :w <bar> !touch "%:r"; clang++ -Wall -Wshadow -O2 -fsanitize=address -fsanitize=undefined -g -std=c++17 "%" -o "%:r" 2> "%:r".errlog; <CR> :let err=expand('%:r') . ".errlog" <bar> :execute ':vsp ' . err <CR>
nmap <F7> :tabp <CR>
nmap <F8> :tabn <CR>
autocmd filetype cpp nnoremap <F10> :!konsole --noclose -e ./"%:r" <CR>
