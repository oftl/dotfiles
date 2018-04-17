call plug#begin(expand('~/.config/nvim/plugged'))

"*****************************************************************************
"" Plug install packages
"*****************************************************************************
" Plug 'justinmk/vim-sneak'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'itchyny/lightline.vim'
" Plug 'vim-airline/vim-airline'          " pacman -S community/powerline-fonts
Plug 'ntpeters/vim-better-whitespace'
Plug 'Raimondi/delimitMate'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/syntastic'
Plug 'Yggdroot/indentLine'
Plug 'avelino/vim-bootstrap-updater'    " vim-bootstrap.com
Plug 'sheerun/vim-polyglot'             " hmm ..?
Plug 'junegunn/fzf.vim'                 " pacman -S community/fzf

"" Vim-Session
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'

" TODO see if i want or need snippets
" Plug 'SirVer/ultisnips'
" Plug 'Shougo/deoplete.nvim'
" Plug 'honza/vim-snippets'

"" Color
Plug 'tomasr/molokai'

"*****************************************************************************
"" Custom bundles
"*****************************************************************************

" elm
"" Elm Bundle
Plug 'elmcast/elm-vim'


" haskell
"" Haskell Bundle
Plug 'eagletmt/neco-ghc'
Plug 'dag/vim2hs'
Plug 'pbrisbin/vim-syntax-shakespeare'


" javascript
"" Javascript Bundle
Plug 'jelera/vim-javascript-syntax'


" python
"" Python Bundle
Plug 'davidhalter/jedi-vim'
Plug 'raimon49/requirements.txt.vim', {'for': 'requirements'}


"*****************************************************************************
"*****************************************************************************

Plug 'ludovicchabant/vim-gutentags'
Plug 'vim-scripts/YankRing.vim'

Plug 'amiorin/vim-project'
Plug 'mhinz/vim-startify'
Plug 'vim-ctrlspace/vim-ctrlspace'

" pacman -Ss fzf
Plug 'wincent/ferret'

" completion
Plug 'roxma/nvim-completion-manager'

"" php
Plug 'phpactor/phpactor', {'do': 'composer install'} " completion
Plug 'roxma/ncm-phpactor'  " completion

" Plug 'roxma/LanguageServer-php-neovim',  {'do': 'composer install && composer run-script parse-stubs'}
" Plug 'autozimu/LanguageClient-neovim'
" requires jetbrains/phpstorm-stubs
" composer require felixfbecker/language-server

" php
Plug 'StanAngeloff/php.vim'         "syntax
Plug 'stephpy/vim-php-cs-fixer'
Plug 'arnaud-lb/vim-php-namespace'
Plug 'joonty/vdebug'
" php-doc generation
" Plug 'tobyS/pdv'
" Plug 'tobyS/vmustache'

Plug 'neomake/neomake'
" PHP Mess Detector         yaourt phpmd
" PHP Static Analysis Tool
" PHP Code Sniffer          yaourt aur/php-codesniffer

" VCS
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'           " assist fugitive
Plug 'vim-scripts/vcscommand.vim'  " CVS, SVN, SVK, git, bzr, and hg
Plug 'mhinz/vim-signify'
" Plug 'airblade/vim-gitgutter'     " if git only

" :set paste automatically
Plug 'ConradIrwin/vim-bracketed-paste'

""" syntaxe
Plug 'ekalinin/Dockerfile.vim'
Plug 'tmux-plugins/vim-tmux'

Plug 'tpope/vim-surround'
Plug 'vim-scripts/matchit.zip'
Plug 'sjl/gundo.vim'
Plug 'myusuf3/numbers.vim'

Plug 'altercation/vim-colors-solarized'

call plug#end()

" Required:
filetype plugin indent on


"*****************************************************************************
"" Basic Setup
"*****************************************************************************"
"" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8

" XXX WTF ?
"" Fix backspace indent
set backspace=indent,eol,start

"" Map leader to ,
let mapleader=','

"" Directories for swp files
set nobackup
set noswapfile

" various plugins need this
set nocompatible

"" Enable hidden buffers
set hidden
set autoindent
set smartindent
set cindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" set filetype=on # turned on be next ones
filetype plugin on
filetype indent on

""" searching
set incsearch
set smartcase  " ignore case for only-lowercase words
set hlsearch
noremap <Space> :set hlsearch! hlsearch?<CR>  " turn highlight of search on/off

""" UI
set showcmd
set wildmenu
set wildmode=longest,list
set shiftwidth=4
set showmatch   " jump to previous { when inserting }

""" show tabs
set listchars=tab:>-
set list

set fileformat=unix
set fileformats=unix,dos,mac

if exists('$SHELL')
    set shell=$SHELL
else
    set shell=/bin/sh
endif

set background=dark
colorscheme solarized

" session management
let g:session_directory = "~/.config/nvim/session"
let g:session_autoload = "no"
let g:session_autosave = "no"
let g:session_command_aliases = 1

"*****************************************************************************
"" Visual Settings
"*****************************************************************************
syntax on
set ruler
set number

let no_buffers_menu=1

"" Disable the blinking cursor.
set gcr=a:blinkon0
set scrolloff=3

"" Status bar
set laststatus=2

" XXX WTF ?
"" Use modeline overrides
set modeline
set modelines=10

" set title
set titleold="Prosole"
set titlestring=%F

" long line
set wrap
set wrapmargin=2
set linebreak
set breakindent
set showbreak="b> "
set textwidth=79

" ignored ?!
set statusline=%F%m%r%h%w%=[%p%%]\ [%l/%c]\ [%b/0x%B]\ [%f/%{&ff}/%Y]

" Search mappings: These will make it so that going to the next one in a
" search will center on the line it's found in.
nnoremap n nzzzv
nnoremap N Nzzzv

if exists("*fugitive#statusline")
  set statusline+=%{fugitive#statusline()}
endif


"*****************************************************************************
"" Abbreviations
"*****************************************************************************
"" no one is really happy until you have this shortcuts
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall

"" NERDTree configuration
let g:NERDTreeChDirMode=2
let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__']
let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let g:NERDTreeShowBookmarks=1
let g:nerdtree_tabs_focus_on_files=1
let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
let g:NERDTreeWinSize = 50
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite
nnoremap <silent> <F2> :NERDTreeFind<CR>
nnoremap <silent> <F3> :NERDTreeToggle<CR>

" terminal emulation
nnoremap <silent> <leader>sh :terminal<CR>


"*****************************************************************************
"" Autocmd Rules
"*****************************************************************************
"" The PC is fast enough, do syntax highlight syncing from start unless 200 lines
augroup vimrc-sync-fromstart
  autocmd!
  autocmd BufEnter * :syntax sync maxlines=200
augroup END

"" Remember cursor position
augroup vimrc-remember-cursor-position
  autocmd!
  autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
augroup END

"" make/cmake
augroup vimrc-make-cmake
  autocmd!
  autocmd FileType make setlocal noexpandtab
  autocmd BufNewFile,BufRead CMakeLists.txt setlocal filetype=cmake
augroup END

augroup xml
    autocmd!
    autocmd FileType xml setlocal foldmethod=indent foldlevelstart=999 foldminlines=0
augroup END

set autoread

"*****************************************************************************
"" Mappings
"*****************************************************************************
noremap <silent><Leader>, :blast<CR>

noremap <Leader>a :Ack

" tabs
noremap <silent><Leader>tn :tabnew<CR>
noremap <silent><Leader>1 1gt<CR>
noremap <silent><Leader>2 2gt<CR>
noremap <silent><Leader>3 3gt<CR>
noremap <silent><Leader>4 4gt<CR>
noremap <silent><Leader>5 5gt<CR>
noremap <silent><Leader>6 6gt<CR>
noremap <silent><Leader>7 7gt<CR>
noremap <silent><Leader>7 8gt<CR>
noremap <silent><Leader>9 9gt<CR>

" buffers
noremap <silent><Leader>bl :buffers<CR>
noremap <silent><Leader>bn :bnext<CR>
noremap <silent><Leader>bp :bprevious<CR>
noremap <silent><Leader>b1 :buffer 1<CR>
noremap <silent><Leader>b2 :buffer 2<CR>
noremap <silent><Leader>b3 :buffer 3<CR>
noremap <silent><Leader>b4 :buffer 4<CR>
noremap <silent><Leader>b5 :buffer 5<CR>
noremap <silent><Leader>b6 :buffer 6<CR>
noremap <silent><Leader>b7 :buffer 7<CR>
noremap <silent><Leader>b8 :buffer 8<CR>
noremap <silent><Leader>b9 :buffer 9<CR>

noremap <silent><Leader>s :Startify <CR>
noremap <silent><Leader>p :Welcome <CR>
noremap <silent><Leader>cd :colorscheme desert<CR>
noremap <silent><Leader>cl :colorscheme morning<CR>

" highlight same word
noremap <Leader>h :exe "let HlUnderCursor=exists(\"HlUnderCursor\")?HlUnderCursor*-1+1:1"<CR>

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

" remove trailing whitespace
noremap <Leader>tw :%s/ *$//g <CR>
" remove leading whitespace
noremap <Leader>tl :%s/^ *//g <CR>
" pretty print XML
noremap <Leader>x :%s/></>\r</g<CR> gg=G<CR>

"" Split
noremap <Leader>h :<C-u>split<CR>
noremap <Leader>v :<C-u>vsplit<CR>

"" Git
noremap <Leader>ga :Gwrite<CR>
noremap <Leader>gc :Gcommit<CR>
noremap <Leader>gsh :Gpush<CR>
noremap <Leader>gll :Gpull<CR>
noremap <Leader>gs :Gstatus<CR>
noremap <Leader>gb :Gblame<CR>
noremap <Leader>gd :Gvdiff<CR>
noremap <Leader>gr :Gremove<CR>

" session management
nnoremap <leader>so :OpenSession<Space>
nnoremap <leader>ss :SaveSession<Space>
nnoremap <leader>sd :DeleteSession<CR>
nnoremap <leader>sc :CloseSession<CR>

"" Set working directory
nnoremap <leader>. :lcd %:p:h<CR>

"" Opens an edit command with the path of the currently edited file filled in
noremap <Leader>ee :e <C-R>=expand("%:p:h") . "/" <CR>

"" Opens a tab edit command with the path of the currently edited file filled
noremap <Leader>te :tabe <C-R>=expand("%:p:h") . "/" <CR>

"" fzf.vim
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.pyc,__pycache__
let $FZF_DEFAULT_COMMAND =  "find * -path '*/\.*' -prune -o -path 'node_modules/**' -prune -o -path 'target/**' -prune -o -path 'dist/**' -prune -o  -type f -print -o -type l -print 2> /dev/null"

" The Silver Searcher
if executable('ag')
  let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'
  set grepprg=ag\ --nogroup\ --nocolor
endif

" ripgrep
if executable('rg')
  let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --follow --glob "!.git/*"'
  set grepprg=rg\ --vimgrep
  command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>).'| tr -d "\017"', 1, <bang>0)
endif

cnoremap <C-P> <C-R>=expand("%:p:h") . "/" <CR>
nnoremap <silent> <leader>b :Buffers<CR>
nnoremap <silent> <leader>e :FZF -m<CR>

" snippets
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"
let g:UltiSnipsEditSplit="vertical"

" syntastic
let g:syntastic_always_populate_loc_list=1
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_style_error_symbol = '✗'
let g:syntastic_style_warning_symbol = '⚠'
let g:syntastic_auto_loc_list=1
let g:syntastic_aggregate_errors = 1

" Tagbar
nmap <silent> <F4> :TagbarToggle<CR>
let g:tagbar_autofocus = 1

" Disable visualbell
set noerrorbells visualbell t_vb=
if has('autocmd')
  autocmd GUIEnter * set visualbell t_vb=
endif

"" Copy/Paste/Cut
if has('unnamedplus')
  set clipboard=unnamed,unnamedplus
endif

noremap YY "+y<CR>
noremap <leader>p "+gP<CR>
noremap XX "+x<CR>

if has('macunix')
  " pbcopy for OSX copy/paste
  vmap <C-x> :!pbcopy<CR>
  vmap <C-c> :w !pbcopy<CR><CR>
endif

"" Buffer nav
noremap <leader>z :bp<CR>
noremap <leader>q :bp<CR>
noremap <leader>x :bn<CR>
noremap <leader>w :bn<CR>

"" Close buffer
noremap <leader>c :bd<CR>

"" Clean search (highlight)
nnoremap <silent> <leader><space> :noh<cr>

"" Switching windows
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h

"" Vmap for maintain Visual Mode after shifting > and <
vmap < <gv
vmap > >gv

"" Move visual block
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

"" Open current line on GitHub
nnoremap <Leader>o :.Gbrowse<CR>

"*****************************************************************************
"" Custom configs
"*****************************************************************************

" elm
" elm-vim
let g:elm_setup_keybindings = 0
let g:elm_format_autosave = 1

" vim-polyglot
let g:polyglot_disabled = ['elm']

" syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:elm_syntastic_show_warnings = 1


" haskell
let g:haskell_conceal_wide = 1
let g:haskell_multiline_strings = 1
let g:necoghc_enable_detailed_browse = 1
autocmd Filetype haskell setlocal omnifunc=necoghc#omnifunc


" javascript
let g:javascript_enable_domhtmlcss = 1

" vim-javascript
augroup vimrc-javascript
  autocmd!
  autocmd FileType javascript set tabstop=4|set shiftwidth=4|set expandtab softtabstop=4
augroup END


" php


" python
" vim-python
augroup vimrc-python
  autocmd!
  autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=8 colorcolumn=79
      \ formatoptions+=croq softtabstop=4
      \ cinwords=if,elif,else,for,while,try,except,finally,def,class,with
augroup END

" jedi-vim
let g:jedi#popup_on_dot = 0
let g:jedi#goto_assignments_command = "<leader>g"
let g:jedi#goto_definitions_command = "<leader>d"
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>n"
let g:jedi#rename_command = "<leader>r"
let g:jedi#show_call_signatures = "0"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#smart_auto_mappings = 0

" syntastic
let g:syntastic_python_checkers=['python', 'flake8']

" vim-airline
let g:airline#extensions#virtualenv#enabled = 1

" Syntax highlight
" Default highlight is better than polyglot
let g:polyglot_disabled = ['python']
let python_highlight_all = 1


"*****************************************************************************
"" Convenience variables
"*****************************************************************************

" vim-airline
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" let g:airline_powerline_fonts = 1
if !exists('g:airline_powerline_fonts')
  let g:airline#extensions#tabline#left_sep = ' '
  let g:airline#extensions#tabline#left_alt_sep = '|'
  let g:airline_left_sep          = '▶'
  let g:airline_left_alt_sep      = '»'
  let g:airline_right_sep         = '◀'
  let g:airline_right_alt_sep     = '«'
  let g:airline#extensions#branch#prefix     = '⤴' "➔, ➥, ⎇
  let g:airline#extensions#readonly#symbol   = '⊘'
  let g:airline#extensions#linecolumn#prefix = '¶'
  let g:airline#extensions#paste#symbol      = 'ρ'
  let g:airline_symbols.linenr    = '␊'
  let g:airline_symbols.branch    = '⎇'
  let g:airline_symbols.paste     = 'ρ'
  let g:airline_symbols.paste     = 'Þ'
  let g:airline_symbols.paste     = '∥'
  let g:airline_symbols.whitespace = 'Ξ'
else
  let g:airline#extensions#tabline#left_sep = ''
  let g:airline#extensions#tabline#left_alt_sep = ''

  " powerline symbols
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
  let g:airline_symbols.branch = ''
  let g:airline_symbols.readonly = ''
  let g:airline_symbols.linenr = ''
endif
