" ------ vim config (c) schloss --------------
" Last update: 2026-06-12

" -------------- Basic settings --------------
set nocompatible
filetype plugin on
syntax on
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

set background=dark 
colorscheme desert
highlight Normal ctermbg=Black guibg=#000000
highlight NonText ctermbg=Black guibg=#000000


" ---------- Lexplore settings ---------------
let g:netrw_banner = 0
let g:netrw_browse_split = 4
let g:netrw_winsize = 25
let g:netrw_liststyle = 3
nnoremap <silent> <C-f> :Lexplore<CR>

" ------- Emacs like begin and end -----------
map <C-a> <ESC>^
imap <C-a> <ESC>I
map <C-e> <ESC>$
imap <C-e> <ESC>A


" ----------- Setting leaderkey --------------
let mapleader = " "


" --------------- vim-plug -------------------
"  curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"
call plug#begin()
Plug 'vimwiki/vimwiki'
call plug#end()


" ------------- vimwiki ----------------------
let g:vimwiki_list = [{'path': '~/Documents/git/gitea/VimWiki/', 'syntax':'markdown', 'ext':'.md', 'index': 'README'}]
let g:vimwiki_conceal_pre = 1
hi VimwikiLink ctermfg=110

" Don't shorten URL's
let g:vimwiki_url_maxsave=0


