" Установка vim-plug и плагинов
let vimplug_installed=1
let vimplug_file=$XDG_CONFIG_HOME.'/vim/autoload/plug.vim'

if !filereadable(vimplug_file)
    echo 'Installing vim-plug ...'
    echo ''
    silent execute '!curl -fLo '.vimplug_file.' --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    let vimplug_installed=0
endif

call plug#begin($XDG_CONFIG_HOME.'/vim/plugged')

" Plug 'altercation/vim-colors-solarized'
Plug 'haishanh/night-owl.vim'
Plug 'kaicataldo/material.vim'
Plug 'bling/vim-airline' | Plug 'vim-airline/vim-airline-themes'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'majutsushi/tagbar'
Plug 'editorconfig/editorconfig-vim'
" Plug 'xolox/vim-session' | Plug 'xolox/vim-misc'
" Plug 'thaerkh/vim-workspace'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-markdown'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-git'
Plug 'gentoo/gentoo-syntax'
Plug 'scrooloose/nerdtree'

call plug#end()

" Installing bundles for the first time
if vimplug_installed == 0
    echo 'Installing Bundles, please ignore key map error messages'
    echo ''
    :PlugInstall
endif
