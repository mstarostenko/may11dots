"┌───────────────────────────────┐
"│ PREPLUGIN <<GENERAL CONFIG>>  │
"╞═══════════════════════════════╡
"
" Set bash as default shell
set shell=/bin/bash

" Use 256 colors in vim
" some plugins not work without it
set t_Co=256

set path=$PWD/** 

" Set character encoding to use in vim
set encoding=utf-8

" Let vim know what encoding we use in our terminal
set termencoding=utf-8

let mapleader = '-'

" for guests
set mouse=a

set lazyredraw





"┌────────────────┐
"│ PLUGIN INSTALL │
"╞════════════════╡
"
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/syntastic'

Plug 'scrooloose/nerdtree'

" ---- plugins: ------------
" NERD - git watcher
Plug 'Xuyuanp/nerdtree-git-plugin'

" NERD - execute file with default application
Plug 'ivalkeen/nerdtree-execute'

" Nice statusline/ruler for vim
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Colorscheme gruvbox for vim
Plug 'morhetz/gruvbox'

Plug 'Yggdroot/indentLine'



Plug 'Shougo/vimproc.vim', {'do' : 'make'}

    Plug 'vim-scripts/tlib'

    " Most recent files source for unite
    Plug 'Shougo/neomru.vim'

    " Code complete
    Plug 'Shougo/neocomplcache.vim'

        " SNIPPETS 
        " - snippet engine with good integration with neocomplcache
        Plug 'SirVer/ultisnips'



" Allow autoclose paired characters like [,] or (,),
" and add smart cursor positioning inside it,
Plug 'Raimondi/delimitMate'

" " Add usefull hotkey for operation with surroundings
" " cs{what}{towhat} - inside '' or [] or something like this allow
" " change surroundings symbols to another
" " and ds{what} - remove them
Plug 'tpope/vim-surround'

" Add aditional hotkeys
" Looks like i'm not using it at all
Plug 'tpope/vim-unimpaired'

" EasyMotion
Plug 'Lokaltog/vim-easymotion'

" Add smart commands for comments like:
" gcc - Toggle comment for the current line
" gc  - Toggle comments for selected region or number of strings
Plug 'tomtom/tcomment_vim'

" Fix-up dot command behavior
" it's kind of service plugin
Plug 'tpope/vim-repeat'

" Plugin for changing cursor when entering in insert mode
" looks like it works fine with iTerm Konsole adn xerm
" (Applies only on next vim launch after plugin installation)
Plug 'jszakmeister/vim-togglecursor'


" DEV ICONS
Plug 'ryanoasis/vim-devicons'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
        Plug 'KabbAmine/vCoolor.vim'

" CtrlP-Funky
Plug 'tacahiroy/ctrlp-funky'

Plug 'terryma/vim-expand-region'

" JSDoc
Plug 'heavenshell/vim-jsdoc'

" Ack
" Plug 'mileszs/ack.vim'

" CleverTab
Plug 'exdis/vim-clevertab', 'ultisnips-expand-or-jump-setting'

" Man reading inside Vim
Plug 'vim-utils/vim-man'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'  }

Plug 'bpstahlman/txtfmt'

Plug 'machakann/vim-highlightedyank'

" " [1] install 'ag' for vim
" " Поисковка silver-search для vim
Plug 'rking/ag.vim'

" " [2] install 'ag' for NERD-TREE
" " Поисковка silver-search для nerd-tree
Plug 'taiansu/nerdtree-ag'

Plug 'tpope/vim-fugitive'

Plug 'digitaltoad/vim-pug'

" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'

Plug 'kshenoy/vim-signature'

" Prefer local repo install of eslint over global install with syntastic
Plug 'mtscout6/syntastic-local-eslint.vim'


" Initialize plugin system
call plug#end()


"┌────────────────────────┐
"│  VIM-NATIVE  SETTINGS  │
"╞════════════════════════╡
"
set number
set rnu

" Mute error bell
set novisualbell

" Enable Indent in plugins
filetype plugin indent on

" Enable syntax highlighting
syntax on

set splitbelow
set splitright
set clipboard=unnamedplus

set nowrap
set colorcolumn=80,120

" timeout for terminal sequences
" (Fix for "airline mode indicator"'s switching delay)
set ttimeoutlen=10


"--------------------------------------------------
" COMPLETATION options -----------------------------
" disable preview in code complete
set completeopt-=preview


"--------------------------------------------------
" INDENTATION options -----------------------------
" Copy indent from previous line
set autoindent
" Replace tabs with spaces
set expandtab
" Enable smart indent. it add additional indents whe necessary
set smartindent
" When you hit tab at start of line, indent added according to shiftwidth value
set smarttab

" number of spaces to use for each step of indent
set shiftwidth=4

" Number of spaces that a Tab in the file counts for
set tabstop=4
" Same like tabstop but for editing operation (not shure what exactly does it means)
" but in most cases tabstop and softtabstop better be the same
set softtabstop=4

" Round indent to multiple of 'shiftwidth'.
" Indentation always be multiple of shiftwidth
" Applies to  < and > command
set shiftround


"--------------------------------------------------
" SEARCH/HIGHLIGHT options ------------------------
" Add the g flag to search/replace by default
set gdefault

" Highlight search results
set hlsearch

" Ignore case in search patterns
set ignorecase

" Override the 'ignorecase' option if the search patter ncontains upper case characters
set smartcase

" Live search. While typing a search command, show where the pattern
set incsearch

" Highlight line with cursor
set cursorline

" Show matching brackets
set showmatch

" Make < and > match as well
set matchpairs+=<:>


"--------------------------------------------------
"--------------------------------------------------

" Auto reload changed files
set autoread

" Indicates fast terminal connection
set ttyfast

set fileformat=unix

" Show file name in window title
set title

" Hide showmode
" Showmode is useless with airline
set noshowmode

" Remove all useless messages like intro screen and use abbreviation like RO
" instead readonly and + instead modified
set shortmess=atI


" Numbers of rows to keep to the left and to the right off the screen
set scrolloff=10

" Numbers of columns to keep to the left and to the right off the screen
set sidescrolloff=10

" Vim will move to the previous/next line after reaching first/last char in
" the line with this commnad (you can add 'h' or 'l' here as well)
" <,> stand for arrows in command mode and [,] arrows in visual mode
set whichwrap=b,s,<,>,[,],

" Display command which you typing and other command related stuff
set showcmd

" Indicate that last window have a statusline too
set laststatus=2

" The cursor should stay where you leave it, instead of moving to the first non
" blank of the line
set nostartofline


"--------------------------------------------------
" WHITESPACE SYMBOLS and etc options --------------

" Enable display whitespace characters
set list

" Setting up how to display whitespace characters
set listchars=tab:→\ ,trail:·,extends:⋯,precedes:⋯,nbsp:~

" Add '-' as recognized word symbol. e.g dw delete all 'foo-bar' instead just 'foo'
set iskeyword+=

" Disable backups file
set nobackup

" Disable vim common sequense for saving.
" By defalut vim write buffer to a new file, then delete original file
" then rename the new file.
set nowritebackup

" Disable swp files
set noswapfile


" @todo eol or not eol
" Which EOl used. For us it's unix
" Not works with modifiable=no
if &modifiable
    set fileformat=unix
endif

" Do not add eol at the end of file.
set noeol


"--------------------------------------------------
" Diff Options

" Display filler
set diffopt=filler

" Open diff in horizontal buffer
set diffopt+=horizontal

" Ignore changes in whitespaces characters
set diffopt+=iwhite


"--------------------------------------------------
" Wildmenu

" Extended autocmpletion for commands
set wildmenu

set wildignore+=*.o,*.obj,.git,node_modules,dist,coverage

" Autocmpletion hotkey
set wildcharm=<TAB>


"--------------------------------------------------
" Folding

" Enable syntax folding in javascript
let javaScript_fold=1

" No fold closed at open file
set foldlevelstart=99
set nofoldenable


"--------------------------------------------------
" Allow backspace to remove indents, newlines and old text
set backspace=indent,eol,start

" toggle paste mode on \p
set pastetoggle=<leader>p





" "--------------------------------------------------
" " NeoBundle Init
"
"
" " Turn off filetype plugins before bundles init
" filetype off
" " Auto installing NeoNeoBundle
" let isNpmInstalled = executable("npm")
" let iCanHazNeoBundle=1
" let neobundle_readme=expand($HOME.'/.vim/bundle/neobundle.vim/README.md')
" if !filereadable(neobundle_readme)
"     if !isNpmInstalled
"         echo "==============================================="
"         echo "Your need to install npm to enable all features"
"         echo "==============================================="
"     endif
"     echo "Installing NeoBundle.."
"     silent !mkdir -p $HOME/.vim/bundle
"     silent !git clone https://github.com/Shougo/neobundle.vim $HOME/.vim/bundle/neobundle.vim
"     let iCanHazNeoBundle=0
" endif
"
" " Call NeoBundle
" if has('vim_starting')
"     set runtimepath+=$HOME/.vim/bundle/neobundle.vim/
" endif
"
" call neobundle#begin(expand($HOME.'/.vim/bundle/'))
"
" " Determine make or gmake will be used for making additional deps for Bundles
" let g:make = 'gmake'
" if system('uname -o') =~ '^GNU/'
"     let g:make = 'make'
" endif
"
" " GLOBAL SETTINGS
" " ! before bundle initialization
" " Set up leader key <leader>, i use default \
" let mapleader = '-'
"
" "--------------------------------------------------
" " Bundles
"
" " Let NeoNeoBundle manage NeoNeoBundle
" NeoBundle 'Shougo/neobundle.vim'
"
" " Instlall vimrpoc. is uses by unite and neocomplcache
" " for async searches and calls
" NeoBundle 'Shougo/vimproc', {
" \ 'build' : {
" \     'mac' : 'make -f make_mac.mak',
" \     'unix': g:make
" \    },
" \ }
"
" " Some support functions used by delimitmate, and snipmate
" NeoBundle 'vim-scripts/tlib'
"
"
"
" " ----------------------------------
" " ------- NERD TREE [installation]--
" " ----------------------------------
" " Great file system explorer, it appears when you open dir in vim
" " Allow modification of dir, and may other things
"
" " I. NERD TREE
" NeoBundle 'scrooloose/nerdtree'
"
" " ---- plugins: ------------
" " NERD - git watcher
" NeoBundle 'Xuyuanp/nerdtree-git-plugin'
"
" " NERD - execute file with default application
" NeoBundle 'ivalkeen/nerdtree-execute'
"
" " NERD silver search
"
" " Silver search for Nerd tree
" " [0] установить глобально 'ag'
" "
" " [1] install 'ag' for vim
" " Поисковка silver-search для vim
" NeoBundle 'rking/ag.vim'
"
" " [2] install 'ag' for NERD-TREE
" " Поисковка silver-search для nerd-tree
" NeoBundle 'taiansu/nerdtree-ag'
"
" " ------- NERD TREE [settings] -----
"
" " Tell NERDTree to display hidden files on startup
" let NERDTreeShowHidden=1
"
" " Disable bookmarks label, and hint about '?'
" let NERDTreeMinimalUI=1
"
" " Display current file in the NERDTree ont the left
" " nmap <silent> <leader>f :NERDTreeFind<CR>
" " map <silent> <C-n> :NERDTreeToggle<CR>
"
" " ----------------------------
" " ----------------------------
" " ----------------------------
"
"
"
" " Improve bookmarks in vim
" " Allow word for bookmark marks, and nice quickfix window with bookmark list
" " NeoBundle 'AndrewRadev/simple_bookmarks.vim'
"
" " Snippets engine with good integration with neocomplcache
" NeoBundle 'SirVer/ultisnips'
"
" " Dirr diff
" NeoBundle 'vim-scripts/DirDiff.vim'
"
" NeoBundle 'guns/xterm-color-table.vim'
"
" " Colorscheme solarazied for vim
" NeoBundle 'altercation/vim-colors-solarized'
"
" " Colorscheme gruvbox for vim
" NeoBundle 'morhetz/gruvbox'
"
" " Allow autoclose paired characters like [,] or (,),
" " and add smart cursor positioning inside it,
" NeoBundle 'Raimondi/delimitMate'
"
" " Add code static check on write
" " need to be properly configured.
" " I just enable it, with default config,
" " many false positive but still usefull
" NeoBundle 'scrooloose/syntastic'
" " Install eslint and for syntastic
" " Path to eslint if it not installed globally, then use local installation
" if !executable("eslint")
"     let g:syntastic_eslint_exec = '~/.vim/node_modules/.bin/eslint'
"     " let g:syntastic_javascript_eslint_exec = '~/.vim/node_modules/.bin/eslint'
"     if isNpmInstalled && !executable(expand(g:syntastic_javascript_eslint_exec))
"         silent ! echo 'Installing eslint' && npm --prefix ~/.vim/ install eslint
"     endif
" endif
" let g:syntastic_javascript_checkers = ['eslint']
"
" " Provide smart autocomplete results for javascript, and some usefull commands
" if has("python")
"     NeoBundle 'marijnh/tern_for_vim'
"     " install node dependencies for tern
"     if isNpmInstalled && isdirectory(expand('~/.vim/bundle/tern_for_vim')) && !isdirectory(expand('~/.vim/bundle/tern_for_vim/node_modules'))
"         silent ! echo 'Installing tern' && npm --prefix ~/.vim/bundle/tern_for_vim install
"     endif
" endif
"
" " Add smart commands for comments like:
" " gcc - Toggle comment for the current line
" " gc  - Toggle comments for selected region or number of strings
" " Very usefull
" NeoBundle 'tomtom/tcomment_vim'
"
" " Best git wrapper for vim
" " But with my workflow, i really rarely use it
" " just Gdiff and Gblame sometimes
" NeoBundle 'tpope/vim-fugitive'
"
" " Fix-up dot command behavior
" " it's kind of service plugin
" NeoBundle 'tpope/vim-repeat'
"
"
" " Syntax highlighting for Stylus
" NeoBundle 'wavded/vim-stylus'
"
" " Add aditional hotkeys
" " Looks like i'm not using it at all
" "NeoBundle 'tpope/vim-unimpaired'
"
" " HTML5 + inline SVG omnicomplete funtion, indent and syntax for Vim.
" NeoBundle 'othree/html5.vim'
"
" " Jade syntax
" NeoBundle 'digitaltoad/vim-jade'
"
" " Syntax highlighting for .jsx (js files for react js)
" NeoBundle 'mxw/vim-jsx'
"
" " Highlights the matching HTML tag when the cursor
" " is positioned on a tag.
" NeoBundle 'gregsexton/MatchTag'
"
" " Add Support css3 property
" NeoBundle 'hail2u/vim-css3-syntax'
"
" " Smart indent for javascript
" " http://www.vim.org/scripts/script.php?script_id=3081
" NeoBundle 'lukaszb/vim-web-indent'
"
" " Plugin for changing cursor when entering in insert mode
" " looks like it works fine with iTerm Konsole adn xerm
" " Applies only on next vim launch after NeoBundleInstall
" NeoBundle 'jszakmeister/vim-togglecursor'
"
" " Improve javascritp syntax higlighting, needed for good folding,
" " and good-looking javascritp code
" NeoBundle 'jelera/vim-javascript-syntax'
" " NeoBundle 'othree/yajs.vim'
"
" "code-completion for jquery, lodash e.t.c
" NeoBundle 'othree/javascript-libraries-syntax.vim'
"
" " Improved json syntax highlighting
" NeoBundle 'elzr/vim-json'
"
"
" " Control P
" NeoBundle 'kien/ctrlp.vim'
"
" " CtrlP-Funky
" NeoBundle 'tacahiroy/ctrlp-funky'
"
" " Scss Syntax
" NeoBundle 'cakebaker/scss-syntax.vim'
"
" " Ack
" NeoBundle 'mileszs/ack.vim'
"
" " CleverTab
" NeoBundle 'exdis/vim-clevertab', 'ultisnips-expand-or-jump-setting'
"
" " TypeScript
" " NeoBundle 'leafgarland/typescript-vim'
" " NeoBundle 'clausreinke/typescript-tools.vim'
"
" " Rust
" " NeoBundle 'rust-lang/rust.vim'
"
" " NeoBundle 'nathanaelkane/vim-indent-guides'
"
" NeoBundle 'tpope/vim-speeddating'
"
" NeoBundle 'Yggdroot/indentLine'
"
" " Tagbar
" NeoBundle 'majutsushi/tagbar'
"
" " Eslint local priority
" NeoBundle 'mtscout6/syntastic-local-eslint.vim'
"
" NeoBundle 'ryanoasis/vim-devicons'
"
"
" " vim scrollbar
" " NeoBundle 'https://github.com/lornix/vim-scrollbar'
"
" call neobundle#end()
"
" " Enable Indent in plugins
" filetype plugin indent on
" " Enable syntax highlighting
" syntax on
"
" " If there are uninstalled bundles found on startup,
" " this will conveniently prompt you to install them.
" NeoBundleCheck
"
"--------------------------------------------------
" Bundles settings

"-------------------------






"--------------------------------------------------
" Aautocmd

" It executes specific command when specific events occured
" like reading or writing file, or open or close buffer
if has("autocmd")
    " Define group of commands,
    " Commands defined in .vimrc don't bind twice if .vimrc will reload
    augroup vimrc
    " Delete any previosly defined autocommands
    au!
        " Auto reload vim after your cahange it
        au BufWritePost *.vim source $MYVIMRC | AirlineRefresh
        au BufWritePost .vimrc source $MYVIMRC | AirlineRefresh

        " Restore cursor position :help last-position-jump
        au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
          \| exe "normal g'\"" | endif

        " Set filetypes aliases
        au FileType htmldjango set ft=html.htmldjango
        au FileType scss set ft=scss.css
        au FileType less set ft=less.css

        au BufWinEnter * if line2byte(line("$") + 1) > 100000 | syntax clear | endif
        au BufRead,BufNewFile *.js        set ft=javascript.javascript-jquery
        au BufRead,BufNewFile *.json      set ft=json
        au BufRead,BufNewFile *.bemhtml   set ft=javascript
        au BufRead,BufNewFile *.xjst      set ft=javascript
        au BufRead,BufNewFile *.vue       set ft=javascript
        au BufRead,BufNewFile *.tt2       set ft=tt2
        au BufRead,BufNewFile *.plaintex  set ft=plaintex.tex

        " Auto close preview window, it uses with tags,
        " I don't use it
        autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
        autocmd InsertLeave * if pumvisible() == 0|pclose|endif

        " Disable vertical line at max string length in NERDTree
        autocmd FileType * setlocal colorcolumn=80,120
        autocmd FileType nerdtree setlocal colorcolumn=""

        " TODO
        " Enable Folding, uses plugin vim-javascript-syntax
        " todo ниже строчка была закомментирована, какие-то конфликты
        " синтаксисных плагинов (vim-javascript-syntax vs othree)
        " au FileType javascript* call JavaScriptFold()

    " Group end
    augroup END

endif

" Indent on open brace
inoremap {<cr> {<cr>}<c-o>O<tab>
inoremap [<cr> [<cr>]<c-o>O<tab>
inoremap (<cr> (<cr>)<c-o>O<tab>

let g:ctrlp_map = '<leader>t'
let g:ctrlp_cmd = 'CtrlP'

nnoremap <Leader>r :CtrlPFunky<Cr>














"┌─────────────────────┐
"│  PLUGINs' SETTINGS  │
"╞═════════════════════╡
"
" [[NERDTREE]]
" arrows
" let NERDTreeDirArrows=0
" let g:NERDTreeDirArrows = 0

let g:NERDTreeDirArrowExpandable = '├'
let g:NERDTreeDirArrowCollapsible = '└'



" Tell NERDTree to display hidden files on startup
let NERDTreeShowHidden=1
"
" Disable bookmarks label, and hint about '?'
let NERDTreeMinimalUI=1

let g:DevIconsEnableFoldersOpenClose = 1
let g:DevIconsDefaultFolderOpenSymbol = ' '

let g:WebDevIconsUnicodeDecorateFolderNodesDefaultSymbol = ''
let g:webdevicons_conceal_nerdtree_brackets = 1
let g:WebDevIconsUnicodeDecorateFolderNodes = 1


" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction


call NERDTreeHighlightFile('jade', 'green', 'none', 'green', 'NONE')
call NERDTreeHighlightFile('md', 'blue', 'none', '#6699CC', 'NONE')
call NERDTreeHighlightFile('json', 'green', 'none', '#d8a235', 'NONE')
call NERDTreeHighlightFile('js', 'yellow', 'none', '#d8a235', 'NONE')
call NERDTreeHighlightFile('css', 'cyan', 'none', '#5486C0', 'NONE')
call NERDTreeHighlightFile('scss', 'cyan', 'none', '#5486C0', 'NONE')
call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', 'NONE')
call NERDTreeHighlightFile('html', 'Red', 'none', '#ffa500', 'NONE')
call NERDTreeHighlightFile('ts', 'Blue', 'none', '#6699cc', 'NONE')
call NERDTreeHighlightFile('ds_store', 'Gray', 'none', '#686868', 'NONE')
call NERDTreeHighlightFile('gitconfig', '233', 'none', '#686868', 'NONE')

" call NERDTreeHighlightFile('vimrc', '25', '233', '#686868', 'NONE')
" call NERDTreeHighlightFile('keynavrc', '23', '233', '#686868', 'NONE')
" call NERDTreeHighlightFile('bashrc', '23', '233', '#686868', 'NONE')
" call NERDTreeHighlightFile('xinitrc', '23', '233', '#686868', 'NONE')

" call NERDTreeHighlightFile('conf', '35', '233', '#686868', 'NONE')
call NERDTreeHighlightFile('gitconfig', '35', '233', '#686868', 'NONE')

" call NERDTreeHighlightFile('config', 'yellow', 'none', '#d8a235', 'NONE')
" call NERDTreeHighlightFile('conf', 'yellow', 'none', '#d8a235', 'NONE')
call NERDTreeHighlightFile('gitignore', 'Gray', 'none', '#7F7F7F', 'NONE')

let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {} " needed
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['gitconfig'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['css'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['md'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['html'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['svg'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['xml'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['yml'] = ''




if exists("g:loaded_webdevicons")
    call webdevicons#refresh()
endif
" ----------------------


" [[VIM-AIRLINE]]
" Colorscheme for airline
let g:airline_powerline_fonts=1

let g:airline_theme='badwolf'

" " Set custom left separator
let g:airline_left_sep = ''
"
" " Set custom right separator
let g:airline_right_sep = ''

" Enable airline for tab-bar
let g:airline#extensions#tabline#enabled = 1

" Убрать справа всякую херню,
" эффективнее использовать пространство для вкладок
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#show_tab_type = 0

" Don't display buffers in tab-bar with single tab
let g:airline#extensions#tabline#show_buffers = 0

" Display only filename in tab
" let g:airline#extensions#tabline#fnamemod = ':t'

" Don't display encoding
let g:airline_section_y = ''

" Don't display filetype
let g:airline_section_x = ''
" ----------------------


" [[SYNTASTIC]]
"
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" let g:syntastic_debug = 3

" let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
" let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Enable autochecks
let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1

let g:syntastic_error_symbol = "!>"
let g:syntastic_warning_symbol = ">>"

" For correct works of next/previous error navigation
let g:syntastic_always_populate_loc_list = 1

" check json files with eslint
" let g:syntastic_filetype_map = { "json": "javascript", }

" open quickfix window with all error found
nmap <silent> <leader>ll :Errors<cr>
" previous syntastic error
nmap <silent> { :lprev<cr>
" next syntastic error
nmap <silent> } :lnext<cr>
" first syntastic error
nmap <silent> <leader>{ :lfirst<cr>

" Do not compile typescript files
let g:syntastic_typescript_tsc_fname = ''
"-------------------------


" [[FUGITIVE]] (git-wrapper)
" Blame on current line
nmap <silent> <leader>b :.Gblame<cr>
" Blame on all selected lines in visual mode
vmap <silent> <leader>b :Gblame<cr>
" Git status
nmap <silent> <leader>gst :Gstatus<cr>
" like git add
nmap <silent> <leader>gw :Gwrite<cr>
" git diff
nmap <silent> <leader>gd :Gdiff<cr>
" git commit
nmap <silent> <leader>gc :Gcommit<cr>
" git commit all
nmap <silent> <leader>gca :Gcommit -a<cr>
" git fixup previous commit
nmap <silent> <leader>gcf :Gcommit -a --amend<cr>
"-------------------------


" [[Tern_for_vim]]
let tern_show_signature_in_pum = 1
" Find all refs for variable under cursor
nmap <silent> <leader>tr :TernRefs<CR>
" Smart variable rename
nmap <silent> <leader>tn :TernRename<CR>



" [[CtrlP-Funky]]
" custom filter
function! ctrlp#funky#ft#javascript#filters()
    let filters = [
        \ { 'pattern': '\m\C^[\t ]*\(if\|for\)\@![_a-zA-Z]\+\s*(.*)\s{',
        \   'formatter': ['\m\C^[\t ]*', '', ''] }
    \ ]
    return filters
endfunction
" ----------------------


" [[JSDoc]]
let g:jsdoc_enable_es6=1
let g:jsdoc_allow_input_prompt=1
let g:jsdoc_input_description=1
let g:jsdoc_access_descriptions=2
let g:jsdoc_underscore_private=1
nmap <silent> <leader>j <Plug>(jsdoc)
"-------------------------


" [[NEOCOMPLCACHE]]
" Enable NeocomplCache at startup
let g:neocomplcache_enable_at_startup = 1

" Max items in code-complete
let g:neocomplcache_max_list = 10

" Max width of code-complete window
let g:neocomplcache_max_keyword_width = 80

" Code complete is ignoring case until no Uppercase letter is in input
let g:neocomplcache_enable_smart_case = 1

" Auto select first item in code-complete
let g:neocomplcache_enable_auto_select = 1

" Disable auto popup
let g:neocomplcache_disable_auto_complete = 1

" Undo autocomplete
inoremap <expr><C-e> neocomplcache#undo_completion()

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS

" For cursor moving in insert mode
inoremap <expr><Left>  neocomplcache#close_popup() . "\<Left>"
inoremap <expr><Right> neocomplcache#close_popup() . "\<Right>"
inoremap <expr><Up>    neocomplcache#close_popup() . "\<Up>"
inoremap <expr><Down>  neocomplcache#close_popup() . "\<Down>"


" [[Ultisnips]]
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"
let g:UltiSnipsJumpForwardTrigger="<c-m>"
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" ----------------------


" [[CleverTab]]
inoremap <silent><tab> <c-r>=CleverTab#Complete('start')<cr>
                      \<c-r>=CleverTab#Complete('tab')<cr>
                      \<c-r>=CleverTab#Complete('ultisnips')<cr>
                      \<c-r>=CleverTab#Complete('keyword')<cr>
                      \<c-r>=CleverTab#Complete('omni')<cr>
                      \<c-r>=CleverTab#Complete('stop')<cr>
inoremap <silent><s-tab> <c-r>=CleverTab#Complete('prev')<cr>
" ----------------------


" [[DelimitMate]]
" Delimitmate place cursor correctly n multiline objects e.g.
" if you press enter in {} cursor still be
" in the middle line instead of the last

let delimitMate_expand_cr = 1

" Delimitmate place cursor correctly in singleline pairs e.g.
" if x - cursor if you press space in {x} result will be { x } instead of { x}
let delimitMate_expand_space = 1
"-------------------------



" [[Ack]]
ca ack Ack!
ca Ack Ack!
let g:ackhighlight=1
if executable('ag')
    let g:ackprg = 'ag -S --nogroup --nocolor --ignore vendors --ignore www --ignore tests'
endif


let g:highlightedyank_highlight_duration = 700









"┌─────────────────────┐
"│     COLORSCHEME     │
"╞═════════════════════╡
"
set background=dark
colorscheme gruvbox
let g:gruvbox_italic=1
let g:gruvbox_termcolors=256
let g:gruvbox_contrast_dark="soft"
hi CursorLineNr ctermbg=none
hi ColorColumn ctermbg=233
hi Normal ctermbg=none
hi Directory cterm=bold ctermfg=4
hi Comment cterm=italic





"┌──────────────┐
"│   MAPPINGS   │
"╞══════════════╡

map y <Plug>(highlightedyank)

map ,; :NERDTreeToggle<CR>

" NERDTree: reveal file in the tree
map ,o :NERDTreeFind<CR>

nmap <C-t> :tabnew<CR>

" Search & Highlight symbol (Easy Motion)
nmap s <Plug>(easymotion-s)

noremap <c-f> :FZF ~/projects/shop<CR>

" Save document
noremap <silent> <c-s> :update<CR>
inoremap <silent> <c-s> <c-c>:update<CR>
vnoremap <silent> <c-s> <c-o>:update<CR>

" Highlight word under cursor
nnoremap <F9> :let @/='\<<C-R>=expand("<cword>")<CR>\>'<CR>:set hls<CR>

" Disable higlighting of search results by <Enter>
nnoremap <silent> <cr> :nohlsearch<cr><cr>

" Concatenate strings
nnoremap <S-j> :join<CR>$$

" Navigate between TABS
nmap <S-h> :tabprevious<CR>
nmap <S-l> :tabnext<CR>
nmap <C-t> :tabnew<CR>



" Resize windows
nnoremap <silent> <F5> :resize -5<CR>
nnoremap <silent> <F6> :resize +5<CR>
nnoremap <silent> <F7> :vertical resize -5<CR>
nnoremap <silent> <F8> :vertical resize +5<CR>

" Expand-region
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

" Backlog hotkeys
" nnoremap ,yf :let @"=expand("%:p")<CR>    " Mnemonic: Copy File path
"
" TODO maximixize expect NERDTREE BAR
" alt + f -- fullmode
" alt + F -- fullmode and NERDTREE collapse
" + localstorage (f + f -- maximize and go back to previos)
"
" Maximize current window
" map <F10> <C-W>_<C-W><Bar>

" " Tern
" nmap td :TernDef<CR>
" nmap tr :TernRename<CR>
" nmap tt :TernType<CR>
" nmap tf :TernRefs<CR>
"


" [[mappings: Ultisnips]]
"
" Mapping selecting mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-completeath)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)


" Advanced customization using autoload functions
" inoremap <expr> <c-x><c-k> fzf#vim#complete#word({'left': '15%'}))>
"
" mK -- следующая по алфавиту
" mJ -- предыдущая по алфавиту
" mK -- следующая по порядку
" mJ -- предыдущая по порядку
let g:SignatureMap = {
\ 'Leader'             :  "m",
\ 'PlaceNextMark'      :  "m,",
\ 'ToggleMarkAtLine'   :  "m.",
\ 'PurgeMarksAtLine'   :  "m-",
\ 'DeleteMark'         :  "dm",
\ 'PurgeMarks'         :  "m<Space>",
\ 'PurgeMarkers'       :  "m<BS>",
\ 'GotoNextLineAlpha'  :  "mK",
\ 'GotoPrevLineAlpha'  :  "mJ",
\ 'GotoNextSpotAlpha'  :  "`]",
\ 'GotoPrevSpotAlpha'  :  "`[",
\ 'GotoNextLineByPos'  :  "mk",
\ 'GotoPrevLineByPos'  :  "mj",
\ 'GotoNextSpotByPos'  :  "]`",
\ 'GotoPrevSpotByPos'  :  "[`",
\ 'GotoNextMarker'     :  "]-",
\ 'GotoPrevMarker'     :  "[-",
\ 'GotoNextMarkerAny'  :  "]=",
\ 'GotoPrevMarkerAny'  :  "[=",
\ 'ListBufferMarks'    :  "m/",
\ 'ListBufferMarkers'  :  "m?"
\ }

" expect j k J K for vim binding interaction
let g:SignatureIncludeMarks = 'abcdefghilmnopqrstuvwxyzABCDEFGHILMNOPQRSTUVWXYZ'




" ═╡ EX MAPPINGS ╞═
"
" TO: ---> EX
" Replace shortcut
nmap <leader>s :%s//<left>
vmap <leader>s :s//<left>

" IN: ---- EX
" Автокомплит для каталога, в котором лежит текущий файл
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

" Автокомплит для сохранения readonly файла, на который нужны sudo права
cmap w!! w !sudo tee >/dev/null %




"┌───────────────┐
"│ ABBREVIATIONS │
"╞═══════════════╡
"
abbrev htis this
abbrev thsi this
abbrev ture true

cnoreabbrev qq tabclose
cnoreabbrev qq! tabclose!









" ------------------- VIM TIPS -----------------------
" ----------------------------------------------------

" INTERNAL COMMANDS:
" :! wc %        - to find out how many words are in the file
" :r textfile    - to insert text from a specified file
" :r[ead] ! ls -l ~/. - to include a list of files from HOME directory
"
"   filtering text through external filters
"   Visual mode -> select block -> :<block> ! <external filter>
"
" SEARCH:
" ggn            - go to the first match
" GN            - go to the first match
"
" :%s//new/g     - (after searching) change all occurences to 'new'
"
" <C-W> T - open current window in separately split

" copy to buffer
vmap <C-c> :w! ~/.vimbuffer<CR>
nmap <C-c> :.w! ~/.vimbuffer<CR>
" paste from buffer
map <C-p> :r ~/.vimbuffer<CR>









" nnoremap <silent> <A-h> <C-w><
" nnoremap <silent> <A-k> <C-w>-
" nnoremap <silent> <A-j> <C-w>+
" nnoremap <silent> <A-l> <C-w>>
" function! Altmap(char)
"   if has('gui_running') | return ' <A-'.a:char.'> ' | else | return ' <Esc>'.a:char.' '|endif
" endfunction
" if $TERM == 'rxvt-unicode-256color'&&!has('gui_running')
"   set ttimeoutlen=10
"   augroup FastEscape
"     autocmd!
"     autocmd InsertEnter * set timeoutlen=0
"     autocmd InsertLeave * set timeoutlen=2000
"   augroup END
"
"   execute 'nnoremap <silent>'.Altmap('h').'<C-w> :call WinMove(\'h\')'
"   execute 'nnoremap <silent>'.Altmap('k').'<C-w> :call WinMove(\'k\')'
"   execute 'nnoremap <silent>'.Altmap('j').'<C-w> :call WinMove(\'j\')'
"   execute 'nnoremap <silent>'.Altmap('l').'<C-w> :call WinMove(\'l\')'
"
" endif
"
"
noremap <silent> <C-h> :call WinMove('h')<CR>
noremap <silent> <C-j> :call WinMove('j')<CR>
noremap <silent> <C-k> :call WinMove('k')<CR>
noremap <silent> <C-l> :call WinMove('l')<CR>

" Navigate between WINDOWS
function! WinMove(key)
    let t:curwin = winnr()
    exec "wincmd ".a:key
    if (t:curwin == winnr())
        if (match(a:key, '[jk]'))
            wincmd v
        else
            wincmd s
        endif
        exec "wincmd ".a:key
    endif
endfunction

" Check if NERDTree is open or active
" function! MaxIsNERDTreeOpen()
"   return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
" endfunction

" Call NERDTreeFind iff NERDTree is active, current window contains a modifiable
" file, and we're not in vimdiff
" function! MaxSyncTree()
"   if &modifiable && MaxIsNERDTreeOpen() && strlen(expand('%')) > 0 && !&diff
"     NERDTreeFind
"     wincmd p
"   endif
" endfunction

" Highlight currently open buffer in NERDTree
" autocmd BufEnter * call MaxSyncTree()

let g:syntastic_javascript_eslint_exec = '~/.vim/node_modules/.bin/eslint'
let g:syntastic_javascript_checkers = ['eslint']
