set nocompatible		" be VI Improved, required
filetype off			" required

call plug#begin('~/.config/nvim/plugged')
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'tpope/vim-fugitive' 			"DOCUMENTATION: https://github.com/tpope/vim-fugitive
Plug 'preservim/nerdtree'
call plug#end()

"------------ Basic settings
syntax on
set number
set termguicolors
"colorscheme onehalfdark
colorscheme dracula
hi Normal guibg=NONE ctermbg=NONE


" Autocompletion
set wildmode=longest,list,full

"------------_NERDTree Settings ------------
nmap <C-b> :NERDTreeToggle<CR>

" Open NERDTree automatically
autocmd  VimEnter * NERDTree
