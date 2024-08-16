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
Plug 'nvim-lua/plenary.nvim'
Plug 'mfussenegger/nvim-dap'
Plug 'nvim-neotest/nvim-nio'
Plug 'rcarriga/nvim-dap-ui'

call plug#end()


"Set number
set number 


"Set keymap
"NERDTree
nnoremap <C-n> :NERDTreeToggle<CR>
"Floaterm
nnoremap ft :FloatermNew! cd %:p:h<CR>
nnoremap tt :FloatermToggle<CR>
"Escape terminal mode
tnoremap <Esc> <C-\><C-n>
"fzf
nnoremap ff :Files<CR>
nnoremap bf :Buffers<CR>
nnoremap bn :bnext<CR>
nnoremap bv :bprevious<CR>
nnoremap bd :bd<CR>
nnoremap bq :bd!<CR>

"Set up for coc keymap
" use <tab> to trigger completion and navigate to the next complete item
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

"use J to move down
inoremap <silent><expr> j
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\j" :
      \ coc#refresh()
"use k to move up
inoremap <expr>k coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

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

"Turn on tabline
let g:airline#extensions#tabline#enabled = 1

"Custom statusline -fzf
function! s:fzf_statusline()
  " Override statusline as you like
  highlight fzf1 ctermfg=161 ctermbg=251
  highlight fzf2 ctermfg=23 ctermbg=251
  highlight fzf3 ctermfg=237 ctermbg=251
  setlocal statusline=%#fzf1#\ >\ %#fzf2#fz%#fzf3#f
endfunction

autocmd! User FzfStatusLine call <SID>fzf_statusline()

"Set floaterminal posistion 
let g:floaterm_position = 'topright'
let g:floaterm_height = 20 
let g:floaterm_width = 80


"coc use Crtl + n and Crtl + p to select in default

