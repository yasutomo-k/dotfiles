if 0 | endif

if has('vim_starting')
	set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'fatih/vim-go'

call neobundle#end()

filetype plugin indent on

NeoBundleCheck
exe "set rtp+=".globpath($GOPATH,"src/github.com/nsf/gocode/vim")

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
