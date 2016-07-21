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
Plugin 'majutsushi/tagbar'
Plugin 'mileszs/ack.vim'
Plugin 'ctrlpvim/ctrlp.vim'


""" h4ck

Plugin 'scrooloose/syntastic'
Plugin 'vim-scripts/vcscommand.vim'
Plugin 'tpope/vim-fugitive'
" Plugin 'Valloric/YouCompleteMe'
Plugin 'Shougo/neocomplete.vim'
" Plugin 'Shougo/neosnippet.vim'
" Plugin 'Shougo/neosnippet-snippets'
" Plugin 'honza/vim-snippets'
Plugin 'tmux-plugins/vim-tmux'
Plugin 'ElmCast/elm-vim'

" Plugin 'Shougo/vimshell.vim'
" Plugin 'Shougo/vimproc'


""" features

Plugin 'tpope/vim-surround'
Plugin 'matchit.zip'
Plugin 'sjl/gundo.vim'          " undo-tree


""" movement

" Plugin 'vim-scripts/EasyMotion'
" Plugin 'justinmk/vim-sneak'
" Plugin 't9md/vim-smalls'

call vundle#end()
