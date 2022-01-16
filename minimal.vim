set nocompatible

set encoding=utf-8
set clipboard^=unnamed,unnamedplus

set history=4096
set undolevels=2048

set splitbelow
set splitright

set mouse=a
set nu rnu
set relativenumber

set wildmenu
set path+=**

nnoremap <C-j> 10j
vnoremap <C-j> 10j
nnoremap <C-k> 10k
vnoremap <C-k> 10k

nnoremap £ ^
vnoremap £ ^

vnoremap [ <gv
vnoremap ] >gv

inoremap <C-w> <ESC><C-w>

nnoremap ,cv "+pa<ESC>
vnoremap ,cp "+y

set so=5

set noautoindent
set noexpandtab
set tabstop=4
set shiftwidth=0

function! Replace()
	call inputsave()
	let g:from_str = input('Enter replace from: ')
	if (g:from_str != "")
		let g:to_str = input('Enter replace to: ')
		let g:cmd = ":%s/" . g:from_str . "/" . g:to_str . "/g"
		redraw
		echom ("Replacing " . g:from_str . " to " . g:to_str)
		execute g:cmd
		call inputrestore()
	endif
endfunction

command! Replace :call Replace()<CR>

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
au BufWinEnter * match ExtraWhitespace /\s\+$/
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhitespace /\s\+$/
au BufWinLeave * call clearmatches()

set shell=/bin/fish

