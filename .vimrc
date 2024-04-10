syntax on
filetype plugin indent on
set tabstop=4
set expandtab
set softtabstop=2
set shiftwidth=2
set autoindent
set smartindent
set laststatus=2

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
Plug 'https://github.com/cdelledonne/vim-cmake'
Plug 'neoclide/coc.nvim'
Plug 'gruvbox-community/gruvbox'
Plug 'https://github.com/jiangmiao/auto-pairs'
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/github/copilot.vim'
Plug 'https://github.com/airblade/vim-gitgutter'
Plug 'https://github.com/tpope/vim-commentary'
Plug 'junegunn/fzf'
call plug#end()

inoremap <c-b> <Esc>:NERDTreeToggle<cr>
nnoremap <c-b> <Esc>:NERDTreeToggle<cr>
inoremap <F9> <Esc>:CMakeBuild<cr>
nnoremap <F9> <Esc>:CMakeBuild<cr>
inoremap <F8> <Esc>:CMakeGenerate <cr> :!rm ./compile_commands.json <cr> :!ln -s ./Debug/compile_commands.json ./compile_commands.json <cr>
nnoremap <F8> <Esc>:CMakeGenerate <cr> :!rm ./compile_commands.json <cr> :!ln -s ./Debug/compile_commands.json ./compile_commands.json <cr>
set termguicolors
colo gruvbox
set bg=dark
