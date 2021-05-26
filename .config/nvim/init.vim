" This line makes pacman-installed global Arch Linux vim packages work.
source /usr/share/nvim/archlinux.vim

" Vim-Plug"
source $HOME/.config/nvim/vim-plug/plugins.vim

" Indentation
set expandtab
set shiftwidth=4
set softtabstop=4
" Shows line numbers
se nu

noremap s l
noremap n k
noremap t j

map  <C-l> :tabn<CR>
map  <C-h> :tabp<CR>
map  <C-n> :tabnew<CR>

autocmd VimEnter * NERDTree | wincmd p
let NERDTreeShowHidden=1
