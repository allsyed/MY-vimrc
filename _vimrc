"let mapleader = "\<Space>"
let mapleader = " "
"cd C:\Projects
"cd C:\Projects\musm\MSUM
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Group dependencies, vim-snippets depends on ultisnips
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"Plug 'xolox/vim-misc' | Plug 'xolox/vim-session'
Plug 'Chiel92/vim-autoformat'
"Python based plugins here
"Plug 'klen/python-mode'
Plug 'davidhalter/jedi-vim'
Plug 'benjifisher/matchit.zip'
"Plug 'sjl/gundo.vim' "Undo tree
" Using a non-master branch
"Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Add plugins to &runtimepath

" The following are examples of different formats supported.
" Keep Plug commands between vundle#begin/end.
" Plug on GitHub repo
" Git Plug not hosted on GitHub
"Plug 'git://git.wincent.com/command-t.git'
"Plug 'christoomey/vim-tmux-navigator'
Plug 'bling/vim-airline'
Plug 'tpope/vim-dispatch'
Plug 'ap/vim-css-color'
Plug 'chrisbra/vim-diff-enhanced'
"Plug 'scrooloose/syntastic' " Using new async systax checker
Plug 'maralla/validator.vim'
Plug 'Lokaltog/vim-easymotion'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
"Plug 'vimwiki/vimwiki'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
"Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-commentary'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'git:tiagofumo@github.com/tiagofumo/vim-nerdtree-syntax-highlight'
"Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
"Plug 'mattn/emmet-vim'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'henrik/vim-indexed-search' "displays the number of matches for search
Plug 'maralla/completor.vim'
Plug 'Lokaltog/vim-distinguished'
Plug 'git:jiangmiao@github.com/jiangmiao/auto-pairs'
Plug 'pangloss/vim-javascript'
Plug 'w0rp/ale'
Plug 'ternjs/tern_for_vim'
"Plug 'git:ryanoasis@github.com/ryanoasis/vim-devicons'
Plug 'ryanoasis/vim-devicons'
" Color schemes
Plug 'jonathanfilip/vim-lucius'
Plug 'morhetz/gruvbox'
Plug 'NLKNguyen/papercolor-theme'
call plug#end()
" All of your Plugs must be added before the following line

"""""""""""""""""""""""""""""""""""""""""""""""""""""""'
""""""""""""""Plug SETUP""""""""""""""""""""""""""""""'
"ALE setting here
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
let g:ale_lint_on_save = 1


"
"validator.vim configuration here
let g:validator_error_msg_format = "[ ● %d/%d issues ]"
let g:validator_auto_open_quickfix = 1
let g:validator_javascript_checkers = ['eslint']
let g:validator_filetype_map = {"html": "js"}
"YouCompleteMe

"let g:ycm_key_list_select_completion = ['<tab>', '<Down>']
"let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
"let g:SuperTabDefaultCompletionType = '<tab>'
"airline
set cmdheight=1
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme             = 'gruvbox'
let g:airline_section_b         = '%{ale#statusline#Status()}'
"let g:airline#extensions#syntastic#enabled = 1
"IndexSearch
let g:indexed_search_max_hits = 100000
"ctrlP
"
set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

cd C:\Projects\CAD-git
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_loc_list_height = 5
"let g:syntastic_auto_loc_list = 0
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 1
"let g:syntastic_javascript_checkers = ['eslint']

"let g:syntastic_error_symbol = '❌'
"let g:syntastic_style_error_symbol = '⁉️'
"let g:syntastic_warning_symbol = '⚠️'
"let g:syntastic_style_warning_symbol = '💩'

"highlight link SyntasticErrorSign SignColumn
"highlight link SyntasticWarningSign SignColumn
"highlight link SyntasticStyleErrorSign SignColumn
"highlight link SyntasticStyleWarningSign SignColumn
" CtrlP settings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_by_filename = 0
let g:ctrlp_open_new_file = 'v'
let g:ctrlp_reuse_window = 'netrw'
let g:ctrlp_max_files = 999
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_use_caching = 1 "Enable caching for search histpry
let g:ctrlp_switch_buffer = 'Et' "open the file if it already open
let g:ctrlp_clear_cache_on_exit = 1 "clear caching on exit
let g:ctrlp_open_new_file = 't'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_max_depth = 40
"let g:ctrlp_user_command = 'find %s -type f'       " MacOSX/Linux
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*        " Linux/MacOSX
"let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
"UltiSnipit
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsUsePythonVersion = 2
let g:UltiSnipsSnippetDirectories = [$HOME.'/.vim/UltiSnips/']
let g:UltiSnipsEditSplit = 'vertical'
"inoremap <c-x><c-k> <c-x><c-k>
""""""""""""EMMET""""""""""""""""""""""""""""""""""""""""'
"let g:user_emmet_install_global = 0
"autocmd FileType html,css EmmetInstall " Enable emment for html n css only
"NERDTree set up
let NERDTreeQuitOnOpen = 1
let g:NERDTreeDirArrowExpandable = '►'
let g:NERDTreeDirArrowCollapsible = '▼'
let NERDTreeIgnore = ['\.pyc$'] " Ignore pyc files
""""""""""""Leader key""""""""""""""""""""""""""""""""""'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""'
""""""""""""""LOOK N FEEL""""""""""""""""""""""""""""""'
syntax on
set ruler
set t_Co=256
set cul
set showcmd
set number
"Gvim specific settings
"set guifont=courier_new:h14
"set guifont=Fira_Mono_for_Powerline:h14:cANSI
set guifont=Sauce_Code_Powerline:h14:cANSI
set guioptions -=T
set relativenumber
set laststatus=2
set list
set background=dark
"set background=light
"set term=screen-256color
"set listchars=tab:▸\ ,eol:¬
"let g:gruvbox_italic=1
colorscheme gruvbox
let g:gruvbox_contrast_dark=3
"colorscheme wombat256
"""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""'
""""""""""""""SEARCH AND RELATED"""""""""""""""""""""""'
set incsearch
set wildmenu
set hlsearch
set smartcase
set ignorecase
set expandtab
set shiftwidth=4
set tabstop=4
set autoindent
"set autochdir "automaticlly change dircetory
set hidden
set wildmode=longest,list:longest " enable the longest wild mode
let &keywordprg=':help' " To find help for word under cursor
"set
"""""""""""""""""""""""""""""""""""""""""""""""""""""""'
""""""""""""""'''MAPPINGS""""""""""""""""""""""""""""""'
"inoremap <TAB> <c-n>
"imap <TAB> <Plug>snipMateNextOrTrigger
set pastetoggle=<F2>
nnoremap <F5> :noh<CR><CR>
nnoremap <F3> :NERDTreeToggle<CR>
noremap <F4> :Autoformat<CR>
nnoremap ; :
imap fj <esc>
nnor <leader>cf :let @*=expand("%:p")<CR>    " Copy File path
nnor <leader>yf :let @"=expand("%:p")<CR>    " Yank File path
nnor <leader>fn :let @"=expand("%")<CR>      " yank File Name
""""""""""""  WINDOWS""""""""""""""""""""""""""""""""""'
nnoremap <Left> <C-w>h
nnoremap <Down> <C-w>j
nnoremap <Up> <C-w>k
nnoremap <Right> <C-w>l
nmap <leader>e :e $MYVIMRC<cr>
nmap <leader>sm :so $MYVIMRC<cr>
nmap <C-/> gc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""'
""""""""""""""'''Au and function"""""""""""""""""""""""'
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") |  exe "normal! g`\"" | endif  " open file where it was colsed

au FileType text setlocal dict+=/usr/share/dict/word
"au FileType text setlocal complete+=k  "coz i am awesome,

"set  dictionary+=/usr/share/dict/words
" ----------------------------------------------------------------------------
"  " Performance
"  ----------------------------------------------------------------------------
set encoding=utf-8
set fileencoding=utf-8
set nobackup
set noswapfile
set autoread " reload a file if it is being edited out side of vim....
"the below 2 line will mark 81 col with diff color
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)
"" ----------------------------------------------------------------------------
""  " Python stuff
""  ----------------------------------------------------------------------------
"" Python-mode
"" Activate rope
"" Keys:
"" K             Show python docs
"" <Ctrl-Space>  Rope autocomplete
"" <Ctrl-c>g     Rope goto definition
"" <Ctrl-c>d     Rope show documentation
"" <Ctrl-c>f     Rope find occurrences
"" <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
"" [[            Jump on previous class or function (normal, visual, operator " modes)
"" ]]            Jump on next class or function (normal, visual, operator " modes)
"" [M            Jump on previous class or method (normal, visual, operator " modes)
"" ]M            Jump on next class or method (normal, visual, operator " modes)
"
"
""let g:pymode_rope = 1
""let g:pymode_rope_autoimport = 1
""let g:pymode_rope_rename_bind = '<C-c>rr'
"let g:pymode_rope_organize_imports_bind = '<C-c>o'
""let g:pymode_syntax_indent_errors = g:pymode_syntax_all
""let g:pymode_syntax_highlight_self = g:pymode_syntax_all
""let g:pymode_syntax_space_errors = g:pymode_syntax_all
""let g:pymode_syntax_builtin_objs = g:pymode_syntax_all
"
"" Documentation
"let g:pymode_doc = 1
"let g:pymode_doc_key = 'K'
"
""Linting
"let g:pymode_lint = 1
"let g:pymode_lint_checker = ['pylint', 'pyflakes', 'pep8']
"let g:pymode_trim_whitespaces = 1
"let g:pymode_indent = []
"
"" Auto check on save
"let g:pymode_lint_write = 1
"
"" Support virtualenv
"let g:pymode_virtualenv = 1
"
"" Enable breakpoints plugin
"let g:pymode_breakpoint = 1
"let g:pymode_breakpoint_bind = '<F11>'
"
"" syntax highlighting
"let g:pymode_syntax = 1
"let g:pymode_syntax_all = 1
"let g:pymode_syntax_indent_errors = g:pymode_syntax_all
"let g:pymode_syntax_space_errors = g:pymode_syntax_all
"
"" Don't autofold code
"let g:pymode_folding = 0
"
""" Jedi config
"
"let g:jedi#auto_vim_configuration = 0
"let g:jedi#use_splits_not_buffers = "left"
"
"let g:jedi#goto_command = "<leader>d"
"let g:jedi#goto_assignments_command = "<leader>g"
"let g:jedi#goto_definitions_command = "<F12>"
"let g:jedi#documentation_command = "K"
"let g:jedi#usages_command = "<leader>n"
"let g:jedi#completions_command = "<C-Space>"
"let g:jedi#rename_command = "<leader>r"


filetype plugin indent on    " required
set undodir=~/.vimundo//
set belloff=all
"set backupdir=~/.vim/.backup//
"set directory=~/.vim/.swp//
set nobackup
