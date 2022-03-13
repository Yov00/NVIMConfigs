set nocompatible		" be VI Improved, required
filetype off			" required

call plug#begin('~/.config/nvim/plugged')
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'sonph/onehalf', { 'rtp': 'vim' }

" GIT
Plug 'tpope/vim-fugitive' 			"DOCUMENTATION: https://github.com/tpope/vim-fugitive

"File navigation
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" C#
Plug 'OmniSharp/omnisharp-vim'
Plug 'dense-analysis/ale'
Plug 'neoclide/coc.nvim', {'branch': 'release'}    "CocInstall coc-omnisharp

Plug 'valloric/MatchTagAlways'
Plug 'jiangmiao/auto-pairs'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'ervandew/supertab'

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


let g:omnicomplete_fetch_full_documentation = 1
let g:ale_linters = {
\ 'cs': ['OmniSharp']
\}

" Open NERDTree automatically
autocmd  VimEnter * NERDTree

" How tab behaves while picking auto complete.
let g:SuperTabMappingForward = '<S-Tab>'
let g:SuperTabMappingBackward = '<Tab>'

:set tabstop=4
:set shiftwidth=4
:set expandtab
