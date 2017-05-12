set nocompatible
filetype off

set rtp+=$HOME/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

""" UI

Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'


""" org

Plugin 'vim-ctrlspace/vim-ctrlspace'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs.git'
Plugin 'majutsushi/tagbar'
Plugin 'ConradIrwin/vim-bracketed-paste'


""" h4ck

Plugin 'vim-syntastic/syntastic'
Plugin 'vim-scripts/vcscommand.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Shougo/neocomplete.vim'
Plugin 'Shougo/neosnippet.vim'
Plugin 'Shougo/neosnippet-snippets'
Plugin 'wellle/tmux-complete.vim'
Plugin 'tmux-plugins/vim-tmux'
Plugin 'ElmCast/elm-vim'
Plugin 'yegappan/mru'


""" syntaxe

Plugin 'ekalinin/Dockerfile.vim'

""" features

Plugin 'tpope/vim-surround'
Plugin 'matchit.zip'
Plugin 'sjl/gundo.vim'          " undo-tree
Plugin 'Raimondi/delimitMate'

""" NEW """

" searching
Plugin 'vim-scripts/EasyMotion'

" misc
Plugin 'wincent/command-t'
Plugin 'scrooloose/nerdcommenter'
Plugin 'godlygeek/tabular'
Plugin 'tpope/vim-dispatch'
Plugin 'myusuf3/numbers.vim.git'

" mail
Plugin 'vim-scripts/lbdbq'

call vundle#end()
