source $HOME/.config/nvim/plugins
source $HOME/.config/nvim/project

"""
""" CONFIG
"""

set encoding=utf-8
scriptencoding utf-8

" various plugins need this
set nocompatible

syntax enable

set hidden
set autoindent
set smartindent
set cindent
set expandtab
set tabstop=4
set softtabstop=4

" set filetype=on # turned on be next ones
filetype plugin on
filetype indent on

""" searching
set incsearch
set ignorecase
set smartcase
set hls
noremap <Space> :set hlsearch! hlsearch?<CR>  " turn highlight of search on/off

""" UI
set showcmd
set wildmenu
set wildmode=longest,list,full
set shiftwidth=4
set showmatch   " jump to previous { when inserting }
set ruler       " position in file
set number
set laststatus=2

""" show tabs
set listchars=tab:>-
set list

"""
""" KEY BINDINGS
"""

nmap <silent> <C-J> :wincmd j <CR>
nmap <silent> <C-K> :wincmd k <CR>
nmap <silent> <C-H> :wincmd h <CR>
nmap <silent> <C-L> :wincmd l <CR>

nmap <silent> <C-Space> :CtrlSpace <CR>

""" nvim-completion-manger
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

map <F1> <Esc>
imap <F1> <Esc>


"""
""" COLORS
"""

" solarized colour schema
" $ git clone https://github.com/altercation/vim-colors-solarized
" $ cp vim-colors-solarized/colors/solarized.vim ~/.nvim/colors/
"colorscheme solarized
colorscheme desert
" http://vim.wikia.com/wiki/Switch_color_schemes<Paste>

set background=dark
"let g:solarized_termcolors=256

"""
""" AUTO MOVEMENT
"""

""" scrolling (while searching)
set scrolloff=5 " keep n lines visible

" " If cursor is in first or last line of window, scroll to middle line.
" function s:MaybeMiddle()
"   if winline() == 1 || winline() == winheight(0)
"     normal! zz
"   endif
" endfunction

nnoremap <silent> n n:call <SID>MaybeMiddle()<CR>
nnoremap <silent> N N:call <SID>MaybeMiddle()<CR>

" goto last position when opening
autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

"""
""" HIGHLIGHT STUFF
"""

" parentesis
highlight MatchParen cterm=none ctermbg=none ctermfg=white
" trailing whitespace
highlight TrailingWhitespace ctermbg=DarkMagenta guibg=DarkMagenta
match TrailingWhitespace /\s\+$/
" protect from colour schema
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red

" highlight same concept (1)
autocmd CursorMoved * exe exists("HlUnderCursor")?HlUnderCursor?printf('match IncSearch /\V\<%s\>/', escape(expand('<cword>'), '/\')):'match none':""


"""
""" LEADERS
"""

let mapleader = ","

noremap <silent><Leader>s :Startify <CR>
noremap <silent><Leader>p :Welcome <CR>
noremap <silent><Leader>cd :colorscheme desert<CR>
noremap <silent><Leader>cl :colorscheme morning<CR>

" highlight same word
noremap <Leader>h :exe "let HlUnderCursor=exists(\"HlUnderCursor\")?HlUnderCursor*-1+1:1"<CR>

noremap <Leader>a :Ack
noremap <Leader>g :GundoToggle <CR>

" word processer
" justify text (needs `par`)
noremap <Leader>aj vip :!par -w80 -j <CR>
" center
noremap <Leader>ac vip :center 80 <CR>
" right align
noremap <Leader>ar vip :right 80 <CR>
" spellchecking
noremap <Leader>sp :setlocal spell spelllang=de <CR>
noremap <Leader>spe :setlocal spell spelllang=en <CR>
noremap <Leader>sn :set nospell  <CR>

" coding
noremap <Leader>n :NERDTreeToggle <CR>
noremap <Leader>t :TagbarToggle <CR>

" remove trailing whitespace
noremap <Leader>tw :%s/ *$//g <CR>
" remove leading whitespace
noremap <Leader>tl :%s/^ *//g <CR>

" tabs
noremap <Leader>tn :tabnew<CR>
noremap <Leader>1 1gt<CR>
noremap <Leader>2 2gt<CR>
noremap <Leader>3 3gt<CR>
noremap <Leader>4 4gt<CR>
noremap <Leader>5 5gt<CR>
noremap <Leader>6 6gt<CR>
noremap <Leader>7 7gt<CR>
noremap <Leader>7 8gt<CR>
noremap <Leader>9 9gt<CR>

" buffers
noremap <Leader>bl :buffers<CR>
noremap <Leader>bn :bnext<CR>
noremap <Leader>bp :bprevious<CR>
noremap <Leader>b1 :buffer 1<CR>
noremap <Leader>b2 :buffer 2<CR>
noremap <Leader>b3 :buffer 3<CR>
noremap <Leader>b4 :buffer 4<CR>
noremap <Leader>b5 :buffer 5<CR>
noremap <Leader>b6 :buffer 6<CR>
noremap <Leader>b7 :buffer 7<CR>
noremap <Leader>b8 :buffer 8<CR>
noremap <Leader>b9 :buffer 9<CR>

" pretty print XML
noremap <Leader>x :%s/></>\r</g<CR> gg=G<CR>

" quit quick
noremap <Leader>. :quit<CR>

""" move between windows

nmap <silent> <C-J> :wincmd j <CR>
nmap <silent> <C-K> :wincmd k <CR>
nmap <silent> <C-H> :wincmd h <CR>
nmap <silent> <C-L> :wincmd l <CR>

""" numbers
noremap <silent> <Leader>nt :NumbersToggle<CR>

"""
nnoremap <silent> <Leader>f za

"set cursorline
"set cursorcolumn

augroup XML
    autocmd!
    autocmd FileType xml setlocal foldmethod=indent foldlevelstart=999 foldminlines=0
augroup END


"""
""" PLUGIN CONFIG
"""

""" tagbar

let g:tagbar_left = 1

""" nerdtree

let g:NERDTreeWinPos = 'right'

""" NERDcommenter

let g:NERDSpaceDelims = 1
let g:NERDCommentEmptyLines = 1
" let g:NERDTrimTrailingWhitespace = 1
let g:NERDDefaultAlign = 'left'

""" delimitMate

let delimitMate_expand_cr = 1

""" numbers
let g:numbers_exclude = ['help', 'nerdtree', 'unite', 'tagbar', 'startify', 'gundo', 'vimshell', 'w3m', 'vundle']


""" CtrlP
let g:ctrlp_working_path_mode = 'ra'

""" CtrlP extension for ag
nnoremap <c-f> :CtrlPag<cr>
vnoremap <c-f> :CtrlPagVisual<cr>
nnoremap <leader>a/ :CtrlPagLocate
nnoremap <leader>ap :CtrlPagPrevious<cr>

" python
set foldmethod=indent
set foldlevel=99
let g:SimpylFold_docstring_preview=1
let g:SimpylFold_fold_docstring=0
