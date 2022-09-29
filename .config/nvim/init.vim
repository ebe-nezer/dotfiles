:set number
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set autoindent
:set smartindent
:set smarttab
:set shiftwidth=2
:set softtabstop=2
:set tabstop=2
:set expandtab 
:set guifont=Fira\ Code\ Regular\ 11
set noswapfile
set nobackup
set nowb

" Auto indent pasted text
nnoremap p p=`]<C-o>
nnoremap P P=`]<C-o>

syntax on

" ========== Persistent Undo ==================
" Keep undo history across sessions, by storing in file.
" Only works all the time.
if has('persistent_undo')
  silent !mkdir ~/.vim/backups > /dev/null 2>&1
  set undodir=~/.vim/backups
  set undofile
endif

call plug#begin()

Plug 'tpope/vim-surround' " Surrounding ysw)
Plug 'preservim/nerdtree' " NerdTree
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-commentary' " For Commenting gcc & gc
Plug 'vim-airline/vim-airline' " Status bar
Plug 'ap/vim-css-color' " CSS Color Preview
Plug 'rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'neoclide/coc.nvim'  " Auto Completion
Plug 'ryanoasis/vim-devicons' " Developer Icons
Plug 'preservim/tagbar' " Tagbar for code navigation
Plug 'terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'lambdalisue/suda.vim/' " Sudo
Plug 'tribela/vim-transparent'
Plug 'jiangmiao/auto-pairs'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install --frozen-lockfile --production',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }"Prettier
Plug 'tc50cal/vim-terminal' " Vim Terminal

" Git
Plug 'tpope/vim-fugitive'

" Javascript
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'kchmck/vim-coffee-script'

set encoding=utf8

call plug#end()

syntax enable

autocmd FocusLost * silent! wa " Automatically save file

" theme
set background=light
colorscheme onedark

" importing plugin configuration file
source ./plugin/coc.vim
source ./plugin/nerdtree.vim
source ./plugin/tagbar.vim
source ./plugin/vim-fugitive.vim
source ./plugin/vim-jsv.vim

" importing vim customization
source ./fonts.vim
source ./splits.vim
source ./tabs.vim

set completeopt-=preview " For No Previews

let g:python_host_prog="/usr/bin/python3"

