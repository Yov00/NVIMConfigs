set nocompatible		" be VI Improved, required
filetype off			" required

call plug#begin('~/.config/nvim/plugged')
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'tpope/vim-fugitive' 			"DOCUMENTATION: https://github.com/tpope/vim-fugitive
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
"dotnet
Plug 'OmniSharp/omnisharp-vim'
Plug 'valloric/MatchTagAlways'
Plug 'jiangmiao/auto-pairs'
Plug 'dense-analysis/ale'

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

"--------------- Key Mapping
nmap <C-b> :NERDTreeToggle<CR>
nmap <C-p> :GFiles<CR>
nmap <C-f> :FZF<CR>

" Supprot for different goto definitions for different file types.
autocmd FileType cs nmap <silent> gd :OmniSharpGotoDefinition<CR>
autocmd FileType cs nnoremap <buffer> <Leader>fu :OmniSharpFindUsages<CR>
autocmd FileType cs nnoremap <buffer> <Leader>fi :OmniSharpFindImplementations<CR>
autocmd FileType cs nnoremap <Leader><Space> :OmniSharpGetCodeActions<CR>

" Open NERDTree automatically
autocmd  VimEnter * NERDTree
