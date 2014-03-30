"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins info
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" mkdir -p ~/.vim/colors && cd ~/.vim/colors
" wget -O wombat256mod.vim http://www.vim.org/scripts/download_script.php?src_id=13400

" Settings for vim-powerline
" cd ~/.vim/bundle
" git clone git://github.com/Lokaltog/vim-powerline.git

" Settings for ctrlp
" cd ~/.vim/bundle
" git clone https://github.com/kien/ctrlp.vim.git

" Settings for jedi-vim
" cd ~/.vim/bundle
" git clone git://github.com/davidhalter/jedi-vim.git

" Python folding
" mkdir -p ~/.vim/ftplugin
" wget -O ~/.vim/ftplugin/python_editing.vim
" http://www.vim.org/scripts/download_script.php?src_id=5492

" Setup Pathogen to manage your plugins
" mkdir -p ~/.vim/autoload ~/.vim/bundle
" curl -so ~/.vim/autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/HEAD/autoload/pathogen.vim
" Now you can install any plugin into a .vim/bundle/plugin-name/ folder
call pathogen#infect()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Enable syntax highlighting
filetype off
filetype plugin indent on
syntax on

" Set leader key for new combos
let mapleader = ","

" Mouse
set mouse=a

" Better copy and paste
set pastetoggle=<F2>
set clipboard=unnamedplus

" Show line numbers
set number 

" Show cursor line
set cursorline


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Disable the stupid beeps vim does
set vb

" Python folding - using plugin
set nofoldenable
set foldmethod=indent


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

set ai "Auto indent
set si "Smart indent

" easier moving of code blocks
vnoremap < <gv  " better indentation
vnoremap > >gv  " better indentation


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors, fonts and appearence
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Color scheme -- see plugins section for info on how to install
set t_Co=256
color wombat256mod

" Showing line numbers and length
set tw=79   " width of document (used by gd)
set colorcolumn=80
highlight ColorColumn ctermbg=233


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" Remove function from arrow keys: trying to educate myself
noremap <Right> <Nop>
noremap <Left> <Nop>
noremap <Up> <Nop>
noremap <Down> <Nop>
inoremap <Right> <Nop>
inoremap <Left> <Nop>
inoremap <Up> <Nop>
inoremap <Down> <Nop>

" bind Ctrl+<movement> keys to move around the windows
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" easier moving between tabs
map <c-n> <esc>:tabprevious<CR>
map <c-m> <esc>:tabnext<CR>

" resizing more easily
"noremap + <C-w>>
"noremap - <C-w><
map <kPlus> <C-W>+
map <kMinus> <C-W>-
map <kDivide> <c-w><
map <kMultiply> <c-w>>

" open horizontal ipython
map <Leader>vp <esc>:ConqueTermVSplit ipython<CR>

" open new tab
map <leader>t <Esc>:tabnew<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Always show the status line
set laststatus=2


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" remap the esc key
inoremap jj <esc>

" remap VIM 0 to first non-blank character
map 0 ^

" map sort function to a key
vnoremap <Leader>s :sort<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Spell checker
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" selects the language of the spellchecker
set spell spelllang=en_us

" starts vim with spell checking turned off
set nospell

" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

" Shortcuts using <leader>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=


