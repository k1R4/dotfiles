call plug#begin('~/.config/nvim/autoload/plugged')
    "File Explorer
    Plug 'jlanzarotta/bufexplorer'
    "Auto Complete
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    "File Explorer
    Plug 'vifm/vifm.vim'
    "Basic Functionality
    Plug 'tpope/vim-sensible'
    "Indent
    Plug 'Yggdroot/indentLine'
    "Dev Icons
    Plug 'ryanoasis/vim-devicons'
    "Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Statusbar
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
call plug#end()
