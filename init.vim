"call Plug
call plug#begin('~/.config/nvim/plugged')

" List your plugins here
Plug 'tpope/vim-sensible'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'bfrg/vim-cpp-modern'
Plug 'marcuscf/vim-lua'
Plug 'sheerun/vim-polyglot'
" Use release branch (recommended)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Or build from source code by using npm
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'npm ci'}
Plug 'luochen1990/rainbow'
Plug 'voldikss/vim-floaterm'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'


call plug#end()


"Set number
set number 

"Set keymap
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-t> :FloatermToggle<CR>
nnoremap fff :Files<CR>

"Set up for coc keymap
" use <tab> to trigger completion and navigate to the next complete item
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
" use <c-space> for trigger completion
inoremap <silent><expr> <c-space> coc#refresh()
" Use <C-@> on vim
inoremap <silent><expr> <c-@> coc#refresh()


"Set theme
colorscheme catppuccin " catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha

"Set braket color
let g:rainbow_active = 1

 
"set vim-airline font 
let g:airline_powerline_fonts = 1


"Set vim-airline theme 
let g:airline_theme='atomic'

"Set default font
set encoding=UTF-8







