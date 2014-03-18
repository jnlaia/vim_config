set tabstop=4
set expandtab
set shiftwidth=4
set nosmartindent
inoremap jj <esc>

" Remove function from arrow keys: trying to educate myself
noremap <Right> <Nop>
noremap <Left> <Nop>
noremap <Up> <Nop>
noremap <Down> <Nop>
inoremap <Right> <Nop>
inoremap <Left> <Nop>
inoremap <Up> <Nop>
inoremap <Down> <Nop>

" Better copy and paste
set pastetoggle=<F2>
set clipboard=unnamedplus

" Mouse
set mouse=a

" Rebind <Leader> key
let mapleader = " "

" bind Ctrl+<movement> keys to move around the windows, instead of using 
" Ctrl+w+ <movement>
map <leader>j <c-w>j
map <leader>k <c-w>k
map <leader>l <c-w>l
map <leader>h <c-w>h

" easier moving between tabs
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

" open horizontal ipython
map <Leader>vp <esc>:vsplit<CR><leader>l<esc>:ConqueTerm python<CR>

" resizing more easily
noremap + <C-w>>
noremap - <C-w><

map <leader>t <Esc>:tabnew<CR>

" map sort function to a key
vnoremap <Leader>s :sort<CR>

" easier moving of code blocks
vnoremap < <gv  " better indentation
vnoremap > >gv  " better indentation

" Showing line numbers and length
set number  " show line numbers
set tw=79   " width of document (used by gd)
set nowrap  " don't automatically wrap on load
set fo-=t   " don't automatically wrap text when typing
set colorcolumn=80
highlight ColorColumn ctermbg=233

" Make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase

" Color scheme
" mkdir -p ~/.vim/colors && cd ~/.vim/colors
" wget -O wombat256mod.vim http://www.vim.org/scripts/download_script.php?src_id=13400
set t_Co=256
color wombat256mod

" Enable syntax highlighting
" You need to reload this file for the change to apply
filetype off
filetype plugin indent on
syntax on

" Disable the stupid beeps vim does
set vb

" Setup Pathogen to manage your plugins
" mkdir -p ~/.vim/autoload ~/.vim/bundle
" curl -so ~/.vim/autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/HEAD/autoload/pathogen.vim
" Now you can install any plugin into a .vim/bundle/plugin-name/ folder
call pathogen#infect()

" Settings for vim-powerline
" cd ~/.vim/bundle
" git clone git://github.com/Lokaltog/vim-powerline.git
set laststatus=2

" Settings for ctrlp
" cd ~/.vim/bundle
" git clone https://github.com/kien/ctrlp.vim.git

" Settings for jedi-vim
" cd ~/.vim/bundle
" git clone git://github.com/davidhalter/jedi-vim.git
