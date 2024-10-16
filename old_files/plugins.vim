set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Editor
Plugin 'easymotion/vim-easymotion'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'yorickpeterse/happy_hacking.vim'
Plugin 'AlessandroYorba/Alduin'
Plugin 'morhetz/gruvbox'
Plugin 'arcticicestudio/nord-vim'
Plugin 'Mofiqul/dracula.nvim'
Plugin 'preservim/nerdtree'
" Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'Xuyuanp/nerdtree-git-plugin'

" Code
Plugin 'lervag/vimtex'
Plugin 'rdnetto/YCM-Generator'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'bfrg/vim-cpp-modern'
Plugin 'godlygeek/tabular'
Plugin 'mhinz/vim-startify'
" Plugin 'sheerun/vim-polyglot'
" Plugin 'andrewmacp/llvm.vim'
" Plugin 'beyondmarc/glsl.vim'
" Plugin 'vim-scripts/asmM6502.vim'
" Plugin 'wlangstroth/vim-racket'
" Plugin 'jpalardy/vim-slime'
" Plugin 'vim-syntastic/syntastic'

call vundle#end()
filetype plugin on

packadd termdebug
let g:termdebug_wide = 100

let v:warningmsg=""

let g:slime_target = "neovim"

let g:ycm_show_diagnostics_ui = 0
let g:ycm_confirm_extra_conf = 0
let g:ycm_clangd_args=['--header-insertion=never']

let g:cpp_attributes_highlight = 1
let g:cpp_member_highlight = 0
let g:cpp_simple_highlight = 0

let g:ycm_semantic_triggers = {
\ 'c,cpp,objc': [ 're!\w{3}', '_' ],
\ }

let g:ycm_show_diagnostics_ui = 0
let g:ycm_confirm_extra_conf = 0
" let g:cpp_attributes_highlight = 1
" let g:cpp_member_highlight = 0
" let g:cpp_simple_highlight = 0
set completeopt-=preview

let g:ctrlp_user_command = ['.git', 'git ls-files -co --exclude-standard']

" map <S-w> <Plug>(easymotion-bd-w)
" nmap <S-w> <Plug>(easymotion-overwin-w)

map <S-w> <Plug>(easymotion-bd-w)
nmap <S-w> <Plug>(easymotion-overwin-w)

map  <S-f> <Plug>(easymotion-bd-f)
nmap <S-f> <Plug>(easymotion-overwin-f)

nnoremap ,def :YcmCompleter GoToDefinition<CR>
nnoremap ,decl :YcmCompleter GoToDeclaration<CR>
nnoremap ,incl :YcmCompleter GoToInclude<CR>
nnoremap ,ren :YcmCompleter RefactorRename

" For termdebug
" nnoremap <C-Y> :Step<CR>
" nnoremap <C-U> :Over<CR>

inoremap <Tab> <C-v><Tab>

tnoremap ,,clear :set scrolloff=0<CR>c<CR>
tnoremap <ESC> <C-\><C-n>

function! RefreshFiles()
	execute ":ClearAllCtrlPCaches"
	execute ":NERDTreeRefreshRoot"
endfunction

command! RefreshFiles :call RefreshFiles()

command! -nargs=1 Ren :YcmCompleter RefactorRename <args>

let g:startify_bookmarks = [ {'c': '~/.config'}, '~/.config/nvim', {'r': '~/Repos'}, '~/Repos/NEAWorldGenerator', '~/Repos/eawm', '~/Repos/slisp' ]
let g:startify_change_to_dir = 0
let g:startify_change_to_vcs_root = 1
let g:startify_fortune_use_unicode = 1
let g:startify_padding_left = 8

let g:startify_custom_header_quotes = [
			\ [ 'no' ],
			\ [ 'yes' ],
			\ ]

set shell=/bin/fish

colorscheme dracula

