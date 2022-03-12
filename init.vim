set nocompatible		" be VI Improved, required
filetype off			" required

call plug#begin('~/.config/nvim/plugged')
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'tpope/vim-fugitive' 			"DOCUMENTATION: https://github.com/tpope/vim-fugitive
call plug#end()

colorscheme onehalfdark
