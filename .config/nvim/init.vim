" URL: http://vim.wikia.com/wiki/Example_vimrc
" Authors: http://vim.wikia.com/wiki/Vim_on_Freenode
" Description: A minimal, but feature rich, example .vimrc. If you are a
"              newbie, basing your first .vimrc on this file is a good choice.
"              If you're a more advanced user, building your own .vimrc based
"              on this file is still a good idea.
 
"------------------------------------------------------------
" Features {{{1
"
" These options and commands enable some very useful features in Vim, that
" no user should have to live without.
 
" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible
 
" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on
 
" Enable syntax highlighting
syntax on
 
 
"------------------------------------------------------------
" Must have options {{{1
"
" These are highly recommended options.
 
" Vim with default settings does not allow easy switching between multiple files
" in the same editor window. Users can use multiple split windows or multiple
" tab pages to edit multiple files, but it is still best to enable an option to
" allow easier switching between files.
"
" One such option is the 'hidden' option, which allows you to re-use the same
" window and switch from an unsaved buffer without saving it first. Also allows
" you to keep an undo history for multiple files when re-using the same window
" in this way. Note that using persistent undo also lets you undo in multiple
" files even in the same window, but is less efficient and is actually designed
" for keeping undo history after closing Vim entirely. Vim will complain if you
" try to quit without saving, and swap files will keep you safe if your computer
" crashes.
set hidden
 
" Note that not everyone likes working this way (with the hidden option).
" Alternatives include using tabs or split windows instead of re-using the same
" window as mentioned above, and/or either of the following options:
" set confirm
" set autowriteall
 
" Better command-line completion
set wildmenu
 
" Show partial commands in the last line of the screen
set showcmd
 
" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
set hlsearch
 
" Modelines have historically been a source of security vulnerabilities. As
" such, it may be a good idea to disable them and use the securemodelines
" script, <http://www.vim.org/scripts/script.php?script_id=1876>.
" set nomodeline
 
 
"------------------------------------------------------------
" Usability options {{{1
"
" These are options that users frequently set in their .vimrc. Some of them
" change Vim's behaviour in ways which deviate from the true Vi way, but
" which are considered to add usability. Which, if any, of these options to
" use is very much a personal preference, but they are harmless.

" Map the leader key to SPACE
let mapleader="\<SPACE>"

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase
set gdefault            " Use 'g' flag by default with :s/foo/bar/.
set magic               " Use 'magic' patterns (extended regular expressions).

" Use <C-L> to clear the highlighting of :set hlsearch.
if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent> <C-L> :nohlsearch<CR><C-L>
endif

" Search and Replace
nmap <Leader>s :%s//g<Left><Left>
 
" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start
 
" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent
 
" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
set nostartofline
 
" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler
 
" Always display the status line, even if only one window is displayed
set laststatus=2
 
" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm
 
" Use visual bell instead of beeping when doing something wrong
set visualbell
set noerrorbells
 
" And reset the terminal code for the visual bell. If visualbell is set, and
" this line is also included, vim will neither flash nor beep. If visualbell
" is unset, this does nothing.
" set t_vb=
 
" Enable use of the mouse for all modes
set mouse=a
 
" Set the command window height to 2 lines, to avoid many cases of having to
" "press <Enter> to continue"
set cmdheight=2
 
" Display line numbers on the left
set number
set relativenumber

set formatoptions+=o

" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200
 
" Use <F11> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F11>
 
 
"------------------------------------------------------------
" Indentation options {{{1
"
" Indentation settings according to personal preference.
 
" Indentation settings for using 4 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
set shiftwidth=2
set softtabstop=2
set expandtab
 
" Indentation settings for using hard tabs for indent. Display tabs as
" four characters wide.
set shiftwidth=2
set tabstop=2
set nojoinspaces " prevents inserting two spaces after jj

" More natural splits
set splitbelow          " Horizontal split below current.
set splitright          " Vertical split to right of current.

if !&scrolloff
  set scrolloff=3       " Show next 3 lines while scrolling.
endif
if !&sidescrolloff
  set sidescrolloff=5   " Show next 5 columns while side-scrolling.
endif
set nostartofline       " Do not jump to first character with page commands.

"
" Appearance options {{{1
"
" Colors, layouts

set t_Co=256
set termguicolors

" in case t_Co alone doesn't work, add this as well:
let &t_AB="\e[48;5;%dm"
let &t_AF="\e[38;5;%dm"

" colorscheme mac_classic
"colorscheme murphy
colorscheme kalisi
set background=light
highlight Normal ctermfg=black ctermbg=white
:hi CursorLine   cterm=NONE ctermbg=lightgrey ctermfg=NONE guibg=lightgrey guifg=NONE
set cursorline!
":nnoremap <Leader>c :set cursorline!<CR>
":nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>
set guifont=Source\ Code\ Pro,Hack,System\ San\ Francisco\ Display:h12

" let g:python_host_prog = '/full/path/to/neovim2/bin/python'
let g:python3_host_prog = '/usr/bin/python3.5m'
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
autocmd BufNewFile,BufReadPost *.tpp set filetype=cpp
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh']
"------------------------------------------------------------
" Vundle options {{{1
"
filetype off
set rtp^=~/.vim/bundle/Vundle.vim
call vundle#begin()
call vundle#rc('~/.config/nvim/bundle')

Plugin 'VundleVim/Vundle.vim'
Plugin 'http://github.com/ctrlpvim/ctrlp.vim.git'
Plugin 'airblade/vim-gitgutter'
Plugin 'https://github.com/majutsushi/tagbar.git'
"Plugin 'vim-scripts/taglist.vim'
Plugin 'hail2u/vim-css3-syntax'
"Plugin 'stanangeloff/php.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'git://github.com/tpope/vim-fugitive.git'   "Git integration e.g. :Gstatus
Plugin '907th/vim-auto-save'
"Plugin 'rhysd/nyaovim-markdown-preview'
"Plugin 'rhysd/nyaovim-mini-browser'
"Plugin 'spf13/PIV'
Plugin 'rhysd/nyaovim-popup-tooltip'
Plugin 'scrooloose/syntastic'  " syntax checking
Plugin 'scrooloose/nerdtree'
"Plugin 'bling/vim-airline'
Plugin 'vim-ctrlspace/vim-ctrlspace'
"Plugin 'valloric/youcompleteme'
Plugin 'townk/vim-autoclose'   "auto close brackets
Plugin 'alvan/vim-closetag'
Plugin 'docunext/closetag.vim'  " close html tag
Plugin 'gcmt/wildfire.vim'  " select closest word
Plugin 'eugen0329/vim-esearch'  "  <leader>FF fuzzy search for word
"Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'magarcia/vim-angular2-snippets' 
Plugin 'leafgarland/typescript-vim'
Plugin 'posva/vim-vue'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'shougo/deoplete.nvim'
"Plugin 'terryma/vim-instant-markdown'
Plugin 'lfilho/cosco.vim' "semi-colon
Plugin 'IniZio/vim-css-color'
Plugin 'cakebaker/scss-syntax.vim'
"Plugin 'hsanson/vim-android'
"Plugin 'artur-shaik/vim-javacomplete2'
Plugin 'easymotion/vim-easymotion'
Plugin 'wakatime/vim-wakatime'
Plugin 'freeo/vim-kalisi'
Plugin 'Yggdroot/indentLine' " show indentguide lines
"Plugin  'ShowFunc.vim'
Plugin 'tpope/vim-surround'
Plugin 'xolox/vim-easytags'
Plugin 'xolox/vim-misc'
Plugin 'sjl/gundo.vim'
Plugin 'neomake/neomake'
Plugin 'artur-shaik/vim-javacomplete2'
Plugin 'DonnieWest/VimStudio'
"Plugin 'fcitx.vim'
Plugin 'wesleyche/srcexpl' "show definition of selected function/keyword
Plugin 'mhinz/vim-startify'

"" Plugin settings

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts=1
let g:airline_theme='badwolf'
"set guifont=Inconsolata\ for\ Powerline

" ctrlp option
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
" Open file menu
nnoremap <Leader>o :CtrlP<CR>
" Open buffer menu
nnoremap <Leader>b :CtrlPBuffer<CR>
" Open most recently used files
nnoremap <Leader>f :CtrlPMRUFiles<CR>

" gitgutter option
let g:gitgutter_sign_column_always = 0
let g:gitgutter_highlight_lines = 0

" tagbar option
noremap U <C-r>
nmap <C-r> :TagbarToggle<CR>
let g:tagbar_ctags_bin = '/usr/bin/ctags-exuberant'

" autoclose option
let g:autoclose_vim_commentmode = 1

" status line option
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" syntastic option
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=1
let g:syntastic_aggregate_errors=1
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_enable_ballons=has('ballon_eval')
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_jump=1
let g:syntastic_auto_loc_list=1
let g:syntastic_loc_list_height=3
let g:syntastic_ignore_files = ['^/usr/', '*node_modules*', '*vendor*', '*build*', '*LOCAL*', '*BASE', '*REMOTE*']
let g:syntastic_mode_map = { 'mode': 'active' }
let g:syntastic_javascript_checkers=['jshint', 'jscs']
let g:syntastic_json_checkers=['jsonlint', 'jsonval']
"let g:syntastic_ruby_checkers=['rubocop','mri']
"let g:syntastic_perl_checkers=['perl','perlcritic','podchecker']
let g:syntastic_python_checkers=['pylint','pep8','python']
let g:syntastic_cpp_checkers=['gcc','cppcheck','cpplint','ycm','clang_tidy','clang_check']
let g:syntastic_c_checkers=['gcc','make','cppcheck','clang_tidy','clang_check']
"let g:syntastic_haml_checkers=['haml_lint', 'haml']
let g:syntastic_html_checkers=['jshint']
let g:syntastic_yaml_checkers=['jsyaml']
let g:syntastic_sh_checkers=['sh','shellcheck','checkbashisms']
let g:syntastic_vim_checkers=['vimlint']
"let g:syntastic_enable_perl_checker=1
let g:syntastic_c_clang_tidy_sort=1
let g:syntastic_c_clang_check_sort=1
let g:syntastic_c_remove_include_errors=1
let g:syntastic_quiet_messages = { "level": "[]", "file": ['*_LOCAL_*', '*_BASE_*', '*_REMOTE_*']  }
let g:syntastic_stl_format = '[%E{E: %fe #%e}%B{, }%W{W: %fw #%w}]'
let g:syntastic_java_javac_options = "-g:none -source 8 -Xmaxerrs 5 -Xmaswarns 5"
let g:syntastic_asm_compiler="mips-linux-gnu-gcc"

" autosave option
let g:auto_save = 1  " enable AutoSave on Vim startup

" nerdtree option
autocmd vimenter * NERDTree
let NERDTreeQuitOnOpen=1
let g:nerdtree_tabs_open_on_gui_startup=0
let g:NERDTreeHijackNetrw=0
map <C-n> :NERDTreeToggle<CR>
let NERDTreeIgnore  = ['\.o$']

let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'error'

" docunext/closetag
let g:closetag_html_style=1
source ~/.config/nvim/bundle/vim-closetag/plugin/closetag.vim
au Filetype html,xml,xsl,vue source ~/.config/nvim/bundle/vim-closetag/plugin/closetag.vim

" alvan/vim_closetag
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.vue,*.js"

let g:closetag_html_style=1

" Use deoplete.
let g:deoplete#enable_at_startup = 1

let g:calnstant_markdown_slow = 1

" Cosco
let g:auto_comma_or_semicolon = 0     " Default : 0
"autocmd FileType javascript,css,cpp nmap <silent> <Leader>; <Plug>(cosco-commaOrSemiColon)
autocmd FileType javascript,css,cpp imap <silent> <Leader>; <c-o><Plug>(cosco-commaOrSemiColon)

let g:android_sdk_path = '/home/iniz/Android/Sdk'

" javacomplete2
autocmd FileType java setlocal omnifunc=javacomplete#Complete

nmap <F4> <Plug>(JavaComplete-Imports-AddSmart)
imap <F4> <Plug>(JavaComplete-Imports-AddSmart)

nmap <F5> <Plug>(JavaComplete-Imports-Add)
imap <F5> <Plug>(JavaComplete-Imports-Add)

nmap <F6> <Plug>(JavaComplete-Imports-AddMissing)
imap <F6> <Plug>(JavaComplete-Imports-AddMissing)

nmap <F7> <Plug>(JavaComplete-Imports-RemoveUnused)
imap <F7> <Plug>(JavaComplete-Imports-RemoveUnused)

" Easy motion
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap s <Plug>(easymotion-overwin-f)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nmap s <Plug>(easymotion-overwin-f2)

" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>k <Plug>(easymotion-j)
map <Leader>l <Plug>(easymotion-k)

let g:indentLine_char = '|'

" map  <C-r>   <Plug>ShowFunc
" map! <C-r>   <Plug>ShowFunc
"
" Support for Gundo, a visual & mini tree structure of document changes
nnoremap <F5> :GundoToggle<CR>

call vundle#end()            " required
filetype plugin indent on    " required

"" nyaovim options
" markdown preview
let g:markdown_preview_auto=1

" Autocompletion
set ofu=syntaxcomplete#Complete
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType phtml set omnifunc=phpcomplete#CompletePHP
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType c set omnifunc=ccomplete#Complete

" Autocompletion using the TAB key

" This function determines, whether we are on the start of the line text (th

" if we want to try autocompletion

function! InsertTabWrapper()

   let col = col('.') - 1

    if !col || getline('.')[col - 1] !~ '\k'

       return "\<tab>"

    else

        return "\<c-p>"

    endif

endfunction

" Remap the tab key to select action with InsertTabWrapper

inoremap <tab> <c-r>=InsertTabWrapper()<cr>

" spelling
if v:version >= 700
  " Enable spell check for text files
  autocmd BufNewFile,BufRead *.txt setlocal spell spelllang=en
endif

if has("autocmd")
    " Have Vim jump to the last position when reopening a file
    au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
                \| exe "normal! g'\"" | endif
    " Support mips.asm files
    autocmd BufNewFile,BufRead *.mips.asm set syntax=mips.vim
    " Trim Trailing white space on general files
    autocmd FileType c,cpp,java,php,js,css,xml,xsl,s autocmd BufWritePre * :
endif

"------------------------------------------------------------
" Mappings {{{1
"
" Useful mappings


vnoremap <silent> s //e<C-r>=&selection=='exclusive'?'+1':''<CR><CR>
    \:<C-u>call histdel('search',-1)<Bar>let @/=histget('search',-1)<CR>gv
omap s :normal vs<CR>

" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
" which is the default
map Y y$
 
" Map <C-L> (redraw screen) to also turn off search highlighting until the
" next search
nnoremap <C-L> :nohl<CR><C-L>
inoremap jj <Esc>
inoremap ii <Esc>
if has('nvim')
  tnoremap <Esc> <C-\><C-n>
endif
noremap m %
noremap vm v%

" Use ; for commands.
nnoremap ; :
" Use Q to execute default register.
nnoremap Q @q   

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" noremap ; l
" noremap l k
" noremap k j
" noremap j h
 
"------------------------------------------------------------
