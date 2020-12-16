""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"vim general

set number
syntax on
set wildmenu
colorscheme elflord
set vb "turn off sound
set shiftwidth=4
set softtabstop=4
set expandtab
set autochdir
set hlsearch

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"vim plug and settings

"vim plug
call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'airblade/vim-gitgutter'
Plug 'dense-analysis/ale'
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-eunuch'
Plug 'neoclide/coc.nvim'
Plug 'preservim/nerdcommenter'
call plug#end()


"git gutter
highlight! link SignColumn LineNr
highlight GitGutterAdd    guifg=#009900 ctermfg=2
highlight GitGutterChange guifg=#bbbb00 ctermfg=3
highlight GitGutterDelete guifg=#ff2222 ctermfg=1

"vim indentn guides plugin
let g:indent_guides_guide_size = 1
let g:indent_guides_color_change_percent = 3
let g:indent_guides_enable_on_vim_startup = 1

"nerdtree
map <C-n> :NERDTreeToggle<CR>

"nerdcommenter
filetype plugin on

"lightline
set laststatus=2

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"things that annoy me

map q: <nop>
map Q: <nop>
map Q <nop>
map q <nop>
nmap <F1> <nop>
nmap t gt
