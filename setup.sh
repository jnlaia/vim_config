# Install pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -so ~/.vim/autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/HEAD/autoload/pathogen.vim

# Set up colours
mkdir -p ~/.vim/colors && cd ~/.vim/colors
wget -O wombat256mod.vim http://www.vim.org/scripts/download_script.php?src_id=13400

# Installs vim addons
cd ~/.vim/bundle
git clone git://github.com/Lokaltog/vim-powerline.git
git clone git://github.com/davidhalter/jedi-vim.git
git clone https://github.com/kien/ctrlp.vim.git
cd ~
wget https://conque.googlecode.com/files/conque_2.3.vmb
vim conque_2.3.vmb
mkdir -p ~/.vim/ftplugin
wget -O ~/.vim/ftplugin/python_editing.vim http://www.vim.org/scripts/download_script.php?src_id=5492
