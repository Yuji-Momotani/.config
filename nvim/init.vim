set shell=/bin/zsh
set shiftwidth=4
set tabstop=4
set clipboard=unnamed
syntax on

call plug#begin()
Plug 'ntk148v/vim-horizon'
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
call plug#end()

"vim-horizon
set termguicolors
colorscheme horizon
let g:lightline = {}
let g:lightline.colorscheme = 'horizon'

"nerdtree
nnoremap <C-e> :NERDTreeToggle<CR>

"vim-gitgutter
let g:gitgutter_highlight_lines = 1

"coc.nvim
inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
