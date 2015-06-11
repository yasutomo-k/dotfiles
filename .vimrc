if 0 | endif

if has('vim_starting')
	if &compatible
		set nocompatible
	endif

	set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'vim-jp/vim-go-extra'

call neobundle#end()

filetype plugin indent on

NeoBundleCheck

syntax enable

set number
set title
set laststatus=2
set list
set listchars=tab:>\ ,trail:_
set cursorline
set showcmd
set showmatch
set showmode

set hidden
set nobackup
set noswapfile


colorscheme desert


nnoremap j gj
nnoremap k gk
nnoremap gj j
nnoremap gk k

noremap! <C-j> <ESC>
vnoremap <C-j> <ESC>

autocmd FileType go autocmd BufWritePre <buffer> Fmt
