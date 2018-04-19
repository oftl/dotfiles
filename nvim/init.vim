"TODO
"<C-Ctrl> hjkl move window
"<C-Shift> hjkl resize window

"hide NERDTree/tagbar on :Gblame (and possibly others)

"read NERDTree docs
"fix vue stuffs

source $HOME/.nvim/conf.d/plug.vim

let vimplug_exists=expand('~/.config/nvim/autoload/plug.vim')

if !filereadable(vimplug_exists)
  if !executable("curl")
    echoerr "You have to install curl or first install vim-plug yourself!"
    execute "q!"
  endif
  echo "Installing Vim-Plug..."
  echo ""
  silent !\curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  let g:not_finish_vimplug = "yes"

  autocmd VimEnter * PlugInstall
endif

let mapleader=','

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
Plug 'Raimondi/delimitMate'             " <S-Tab> jump over
P lug 'majutsushi/tagbar'
" Plug 'scrooloose/syntastic'
Plug 'Yggdroot/indentLine'
Plug 'sheerun/vim-polyglot'             " hmm ..?

" find things
Plug 'junegunn/fzf'                 " pacman -S community/fzf ... b0rken?
Plug 'junegunn/fzf.vim'                 " pacman -S community/fzf ... b0rken?
Plug 'wincent/ferret'   " pacman -Ss ripgrep
Plug 'wincent/loupe'    " enhance search

"" Vim-Session
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'

" TODO see if i want or need snippets
" Plug 'SirVer/ultisnips'
" Plug 'Shougo/deoplete.nvim'
" Plug 'honza/vim-snippets'

" :set paste automatically
Plug 'ConradIrwin/vim-bracketed-paste'

"*****************************************************************************
"" LANG
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

" JavaScript bundle for vim, this bundle provides syntax highlighting and improved indentation.
" Plug 'pangloss/vim-javascript'

" python
"" Python Bundle
" Plug 'davidhalter/jedi-vim'
Plug 'raimon49/requirements.txt.vim', {'for': 'requirements'}

"*****************************************************************************
"*****************************************************************************

Plug 'ludovicchabant/vim-gutentags'
" Plug 'vim-scripts/YankRing.vim'   " access yank registers

Plug 'amiorin/vim-project'
Plug 'mhinz/vim-startify'
Plug 'vim-ctrlspace/vim-ctrlspace'

" completion
" arch: community/python-mistune community/python-jediw community/python-setproctitle extra/psutils
Plug 'roxma/nvim-completion-manager'

" Plug 'roxma/LanguageServer-php-neovim',  {'do': 'composer install && composer run-script parse-stubs'}
" Plug 'autozimu/LanguageClient-neovim'
" requires jetbrains/phpstorm-stubs
" composer require felixfbecker/language-server

"" php
Plug 'phpactor/phpactor', {'do': 'composer install'}
Plug 'roxma/ncm-phpactor'
Plug 'StanAngeloff/php.vim'         "syntax
Plug 'stephpy/vim-php-cs-fixer'
Plug 'arnaud-lb/vim-php-namespace'
" php-doc generation
" Plug 'tobyS/pdv'
" Plug 'tobyS/vmustache'

" xdebug integration
Plug 'joonty/vdebug'

"" typescript
" Plug 'mhartington/nvim-typescript'

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

Plug 'myusuf3/numbers.vim'

Plug 'altercation/vim-colors-solarized'

" close <tags> when </ is encounterd or C-_
Plug 'docunext/closetag.vim'

" meh
" Plug 'corntrace/bufexplorer'

" let plugins do .!
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-jdaddy'
Plug 'tpope/vim-speeddating'  " better <c-a> <c-z>

Plug 'sjl/gundo.vim'

Plug 'iCyMind/NeoSolarized'

Plug 'vim-scripts/EasyMotion'
Plug 'kshenoy/vim-signature'

""" legacy """
" Plug 'tpope/vim-abolish'

call plug#end()


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
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.pyc,__pycache__,*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite
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

" Required:
filetype plugin indent on

" set statusline=%F%m%r%h%w%=[%p%%]\ [%l/%c]\ [%b/0x%B]\ [%f/%{&ff}/%Y]
"
" airline/lightline show --INSERT-- nice too
set noshowmode

let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'filename', 'modified'],
      \             [ 'charvalue', 'position' ],
      \           ],
      \   'right': [
      \              [ 'lineinfo' ],
      \              [ 'percent' ],
      \              [ 'git', 'fileformat', 'fileencoding', 'filetype' ],
      \            ]
      \ },
      \ 'component': {
      \   'charvalue': '%b 0x%B',
      \   'position': '%o 0x%O',
      \ },
      \ 'component_function': {
      \   'git': 'fugitive#statusline'
      \ },
      \ }

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

" " If cursor is in first or last line of window, scroll to middle line.
" function s:MaybeMiddle()
"   if winline() == 1 || winline() == winheight(0)
"     normal! zz
"   endif
" endfunction
"
" nnoremap <silent> n n:call <SID>MaybeMiddle()<CR>
" nnoremap <silent> N N:call <SID>MaybeMiddle()<CR>

" " highlight stuff (moved to plugins... :/)
" " parentesis
" highlight MatchParen cterm=none ctermbg=none ctermfg=white
" " trailing whitespace
" highlight TrailingWhitespace ctermbg=DarkMagenta guibg=DarkMagenta
" match TrailingWhitespace /\s\+$/
" " protect from colour schema
" autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red

" " highlight same concept (1)
" autocmd CursorMoved * exe exists("HlUnderCursor")?HlUnderCursor?printf('match IncSearch /\V\<%s\>/', escape(expand('<cword>'), '/\')):'match none':""

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
let g:nerdtree_tabs_focus_on_files=0
let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
let g:NERDTreeWinSize = 50
let g:NERDTreeWinPos = 'left'
" nnoremap <silent> <F2> :NERDTreeFind<CR>

" terminal emulation
nnoremap <silent> <Leader>sh :terminal<CR>

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

" pretty print
"" XML
"" old" noremap <Leader>px :%s/></>\r</g<CR>:0<CR>=:$<CR>
noremap <Leader>px :%s/></>\r</g<CR> gg=G<CR>

" hm ?
" augroup XML
"     autocmd!
"     autocmd FileType xml setlocal foldmethod=indent foldlevelstart=999 foldminlines=0
" augroup END

" visual settings
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

" remove trailing whitespace
noremap <Leader>tw :%s/ *$//g <CR>
" remove leading whitespace
noremap <Leader>tl :%s/^ *//g <CR>

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
" Goto Buffer!
nnoremap <Leader>b :ls<CR>:b<Space>

"" Close buffer
noremap <Leader>c :bd<CR>

" quit quick
noremap <Leader>. :quit<CR>
noremap <Leader><Leader> <c-^>
noremap <Leader>el 0D

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
"" Open current line on GitHub
nnoremap <Leader>go :.Gbrowse<CR>

" session management
nnoremap <Leader>so :OpenSession<Space>
nnoremap <Leader>ss :SaveSession<Space>
nnoremap <Leader>sd :DeleteSession<CR>
nnoremap <Leader>sc :CloseSession<CR>

" delete/yank paragraph
nnoremap <Leader>dp vip d
nnoremap <Leader>dy vip y

" panels and the like
nnoremap <Leader>nt :NERDTreeToggle <CR> :TagbarToggle <CR>
noremap <Leader>n :NERDTreeTabsToggle <CR>
noremap <Leader>t :TagbarToggle <CR>

" numbers
noremap <Leader>nn :NumbersToggle<CR>
" signify

"" Set working directory
nnoremap <Leader>. :lcd %:p:h<CR>

"" Opens an edit command with the path of the currently edited file filled in
noremap <Leader>ee :e <C-R>=expand("%:p:h") . "/" <CR>

"" Opens a tab edit command with the path of the currently edited file filled
noremap <Leader>te :tabe <C-R>=expand("%:p:h") . "/" <CR>

"" fzf.vim
let $FZF_DEFAULT_COMMAND =  "find * -path '*/\.*' -prune -o -path 'node_modules/**' -prune -o -path 'target/**' -prune -o -path 'dist/**' -prune -o  -type f -print -o -type l -print 2> /dev/null"

" ripgrep
if executable('rg')
  let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --follow --glob "!.git/*"'
  set grepprg=rg\ --vimgrep
  command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>).'| tr -d "\017"', 1, <bang>0)
endif

cnoremap <C-P> <C-R>=expand("%:p:h") . "/" <CR>
nnoremap <silent> <Leader>b :Buffers<CR>
nnoremap <silent> <Leader>e :FZF -m<CR>

" snippets
" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<tab>"
" let g:UltiSnipsJumpBackwardTrigger="<c-b>"
" let g:UltiSnipsEditSplit="vertical"

" syntastic
" let g:syntastic_always_populate_loc_list=1
" let g:syntastic_error_symbol='✗'
" let g:syntastic_warning_symbol='⚠'
" let g:syntastic_style_error_symbol = '✗'
" let g:syntastic_style_warning_symbol = '⚠'
" let g:syntastic_auto_loc_list=1
" let g:syntastic_aggregate_errors = 1

" Tagbar
let g:tagbar_autofocus = 1
let g:tagbar_vertical = 25
let g:tagbar_left = 1

"" Copy/Paste/Cut
if has('unnamedplus')
  set clipboard=unnamed,unnamedplus
endif

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

" TODO consolidate with other mappings
" set path=.,**
" nnoremap <Leader>f :find *
" nnoremap <Leader>s :sfind *
" nnoremap <Leader>v :vert sfind *
" nnoremap <Leader>t :tabfind *
" nnoremap <Leader>F :find <C-R>=expand('%:h').'/*'<CR>
" nnoremap <Leader>S :sfind <C-R>=expand('%:h').'/*'<CR>
" nnoremap <Leader>V :vert sfind <C-R>=expand('%:h').'/*'<CR>
" nnoremap <Leader>T :tabfind <C-R>=expand('%:h').'/*'<CR>

"*****************************************************************************
"" Custom configs
"*****************************************************************************

" elm
" elm-vim
let g:elm_setup_keybindings = 0
let g:elm_format_autosave = 1

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

" php

" python
" vim-python
augroup vimrc-python
  autocmd!
  autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=8 colorcolumn=79
      \ formatoptions+=croq softtabstop=4
      \ cinwords=if,elif,else,for,while,try,except,finally,def,class,with
augroup END

" " jedi-vim
" let g:jedi#popup_on_dot = 0
" let g:jedi#goto_assignments_command = "<Leader>g"
" let g:jedi#goto_definitions_command = "<Leader>d"
" let g:jedi#documentation_command = "K"
" let g:jedi#usages_command = "<Leader>n"
" let g:jedi#rename_command = "<Leader>r"
" let g:jedi#show_call_signatures = "0"
" let g:jedi#completions_command = "<C-Space>"
" let g:jedi#smart_auto_mappings = 0

" Syntax highlight
let python_highlight_all = 1

" polyglot
" Default highlight is better than polyglot
let g:polyglot_disabled = ['python', 'elm']

"*****************************************************************************
"" Convenience variables
"*****************************************************************************

" " vim-airline
" if !exists('g:airline_symbols')
"   let g:airline_symbols = {}
" endif

" " let g:airline_powerline_fonts = 1
" if !exists('g:airline_powerline_fonts')
"   let g:airline#extensions#tabline#left_sep = ' '
"   let g:airline#extensions#tabline#left_alt_sep = '|'
"   let g:airline_left_sep          = '▶'
"   let g:airline_left_alt_sep      = '»'
"   let g:airline_right_sep         = '◀'
"   let g:airline_right_alt_sep     = '«'
"   let g:airline#extensions#branch#prefix     = '⤴' "➔, ➥, ⎇
"   let g:airline#extensions#readonly#symbol   = '⊘'
"   let g:airline#extensions#linecolumn#prefix = '¶'
"   let g:airline#extensions#paste#symbol      = 'ρ'
"   let g:airline_symbols.linenr    = '␊'
"   let g:airline_symbols.branch    = '⎇'
"   let g:airline_symbols.paste     = 'ρ'
"   let g:airline_symbols.paste     = 'Þ'
"   let g:airline_symbols.paste     = '∥'
"   let g:airline_symbols.whitespace = 'Ξ'
" else
"   let g:airline#extensions#tabline#left_sep = ''
"   let g:airline#extensions#tabline#left_alt_sep = ''

"   " powerline symbols
"   let g:airline_left_sep = ''
"   let g:airline_left_alt_sep = ''
"   let g:airline_right_sep = ''
"   let g:airline_right_alt_sep = ''
"   let g:airline_symbols.branch = ''
"   let g:airline_symbols.readonly = ''
"   let g:airline_symbols.linenr = ''
" endif

" delmitMate
let delimitMate_expand_space=1
let delimitMate_expand_cr = 1

" numbers
let g:numbers_exclude = ['help', 'nerdtree', 'unite', 'tagbar', 'startify', 'gundo', 'vimshell', 'w3m', 'vundle']

" indentLine
let g:indentLine_bufTypeExclude = ['help', 'terminal']
let g:indentLine_bufNameExclude = ['NERDTree*', '__Tagbar__*']

" phpactor
" http://phpactor.github.io/phpactor/vim-plugin.html
"
" Include use statement
nmap <Leader>u :call phpactor#UseAdd()<CR>
" Invoke the context menu
nmap <Leader>mm :call phpactor#ContextMenu()<CR>
" Goto definition of class or class member under the cursor
nmap <Leader>o :call phpactor#GotoDefinition()<CR>
" Transform the classes in the current file
nmap <Leader>tt :call phpactor#Transform()<CR>
" Generate a new class (replacing the current file)
nmap <Leader>cc :call phpactor#ClassNew()<CR>
" Extract method from selection
vmap <silent><Leader>em :<C-U>call phpactor#ExtractMethod()<CR>

" php-cs-fixer
nnoremap <silent><Leader>pcd :call PhpCsFixerFixDirectory()<CR>
nnoremap <silent><Leader>pcf :call PhpCsFixerFixFile()<CR>

""" neomake
call neomake#configure#automake('rw', 500)

" fzf, mnemonic: <f>ind file
noremap <silent><Leader>f :Files<CR>
" ferret, mnemonic: <a>ck (like perl-ack)
noremap <silent><Leader>a :Ack <CR>

""" signify
let g:signify_vcs_list = [ 'git', 'svn' ]
nnoremap <Leader>gt :SignifyToggle<CR>
nnoremap <Leader>gh :SignifyToggleHighlight<CR>
nnoremap <Leader>gr :SignifyRefresh<CR>
nnoremap <Leader>gd :SignifyDebug<CR>

""" gutentags
let g:gutentags_ctags_exclude = ['.cache', '.yarn', '.git', '.svn']

source $HOME/.nvim/conf.d/php_man.vim
source $HOME/.nvim/conf.d/project.vim
source $HOME/.nvim/conf.d/sclable.vim
source $HOME/.nvim/conf.d/xdebug-mrv-cockpit.vim
