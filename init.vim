set nocompatible		" be VI Improved, required
filetype off			" required

call plug#begin('~/.config/nvim/plugged')
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'morhetz/gruvbox'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'sonph/onehalf', { 'rtp': 'vim' }

"Navigate between windows
Plug 'christoomey/vim-tmux-navigator'

" GIT
Plug 'tpope/vim-fugitive' 			"DOCUMENTATION: https://github.com/tpope/vim-fugitive

"File navigation
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

"Comment lines
Plug 'tpope/vim-commentary'

"nerd fonts required for the icons
Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin' |
            \ Plug 'ryanoasis/vim-devicons' 
"C#
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
" colorscheme onehalfdark
" colorscheme dracula
colorscheme gruvbox
" hi Normal guibg=NONE ctermbg=NONE
set encoding=UTF-8

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
autocmd BufEnter * lcd %:p:h

" How tab behaves while picking auto complete.
let g:SuperTabMappingForward = '<S-Tab>'
let g:SuperTabMappingBackward = '<Tab>'

:set tabstop=4
:set shiftwidth=4
:set expandtab


" Color Settings
" you can add these colors to your .vimrc to help customizing
let s:brown = "905532"
let s:aqua =  "3AFFDB"
let s:blue = "689FB6"
let s:darkBlue = "44788E"
let s:purple = "834F79"
let s:lightPurple = "834F79"
let s:red = "AE403F"
let s:beige = "F5C06F"
let s:yellow = "F09F17"
let s:orange = "D4843E"
let s:darkOrange = "F16529"
let s:pink = "CB6F6F"
let s:salmon = "EE6E73"
let s:green = "8FAA54"
let s:lightGreen = "31B53E"
let s:white = "FFFFFF"
let s:rspec_red = 'FE405F'
let s:git_orange = 'F54D27'

let g:NERDTreeExtensionHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExtensionHighlightColor['css'] = s:blue " sets the color of css files to blue

let g:NERDTreeExactMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExactMatchHighlightColor['.gitignore'] = s:git_orange " sets the color for .gitignore files

let g:NERDTreePatternMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreePatternMatchHighlightColor['.*_spec\.rb$'] = s:rspec_red " sets the color for files ending with _spec.rb

let g:WebDevIconsDefaultFolderSymbolColor = s:beige " sets the color for folders that did not match any rule
let g:WebDevIconsDefaultFileSymbolColor = s:blue " sets the color for files that did not match any rule

"Omnisharp config
augroup my_omnisharp
    autocmd!
    au FileType cs nmap <buffer> <silent> ga :OmniSharpGetCodeActions<CR>
    au FileType cs nmap <buffer> <silent> gd :OmniSharpGotoDefinition<CR>
    au FileType cs nmap <buffer> <silent> gq :OmniSharpCodeFormat<CR>
    au FileType cs nmap <buffer> <silent> gu :OmniSharpFixUsings<CR>
    au FileType cs nmap <buffer> <silent> gr :OmniSharpFindUsages<CR>
    au FileType cs nmap <buffer> <silent> gK :OmniSharpDocumentation<CR>
    au FileType cs nmap <buffer> <silent> <F2> :OmniSharpRename<CR>
augroup END

" Appy html syntax highlighting to .cshtml
autocmd BufNewFile,BufRead *.cshtml set syntax=html

" coc config
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint', 
  \ 'coc-prettier',
  \ 'coc-html',
  \ 'coc-omnisharp',
  \ 'coc-json', 
  \ ]

"https://www.youtube.com/watch?v=zi2pReTFRG8  --- Instalation for full stack
"on windows


