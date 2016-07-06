function! BuildYCM(info)
    " info is a dictionary with 3 fields
    " - name:   name of the plugin
    " - status: 'installed', 'updated', or 'unchanged'
    " - force:  set on PlugInstall! or PlugUpdate!
    if a:info.status == 'installed' || a:info.force
        !./install.py --clang-completer
    endif
endfunction
call plug#begin('~/.vim/plugged')
Plug 'Valloric/YouCompleteMe', { 'do': function('BuildYCM') }
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
Plug 'majutsushi/tagbar'
Plug 'powerline/powerline'
Plug 'AndrewRadev/linediff.vim'
Plug 'The-NERD-Commenter'
Plug 'The-NERD-tree'
Plug 'rhysd/vim-clang-format'
Plug 'davidoc/taskpaper.vim'
Plug 'derekwyatt/vim-fswitch'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'tpope/vim-fugitive'
Plug 'ConradIrwin/vim-bracketed-paste'
Plug 'junegunn/vim-fnr'
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/vim-journal'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'yegappan/mru'

" Colors
Plug 'tomasr/molokai'
Plug 'chriskempson/vim-tomorrow-theme'

Plug 'justinmk/vim-gtfo'
Plug 'mhinz/vim-signify'
Plug 'chrisbra/unicode.vim', { 'for': 'journal' }
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-eunuch'
Plug 'djoshea/vim-autoread'
Plug 'vim-airline/vim-airline'

autocmd! User YouCompleteMe if !has('vim_starting') | call youcompleteme#Enable() | endif
"FileType cpp
call plug#end()

scriptencoding utf-8
set fenc=utf-8
set termencoding=utf-8
set nocompatible
set noswapfile
set hidden

filetype plugin indent on    " required
let g:ycm_key_invoke_completion = '<C-tab>'
let g:ycm_cache_omnifunc = 0
let g:ycm_always_populate_location_list = 1

nnoremap <leader>y :YcmForceCompileAndDiagnostics<cr>
nnoremap <leader>g :YcmCompleter GoTo<CR>
nnoremap <leader>pd :YcmCompleter GoToDefinition<CR>
nnoremap <leader>pc :YcmCompleter GoToDeclaration<CR>

"let g:UltiSnipsUsePythonVersion = 2
"let g:UltiSnipsExpandTrigger="<C-e>"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"
"let g:UltiSnipsSnippetDirectories=["UltiSnips", "my_snippets"]

"language en_GB.UTF-8 "doesn't work
language C
set guioptions=cit
set guioptions+=mMLlRrbitT
set guioptions-=mMLlRrbitT
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set showmatch
set vb t_vb=
set noautochdir
set nobackup
set nowritebackup
set t_Co=256
set wildmenu
set history=3000
set more
colorscheme molokai
"set background=light
syntax on
set noignorecase

set cursorline "wyszczególnienie bieżącej linii
set textwidth=99 "automatyczne łamanie linii
set columns=99
set wrapmargin=0
set hls

set tags +=~/.vim/tags/cpp
set tags +=~/.vim/tags/gl
set tags +=~/.vim/tags/sdl
set tags +=~/.vim/tags/qt4
set tags +=~/.vim/tags/py27
"set tags+=$VIM\STL_tags
"map <F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR>:set tags+=./tags<CR>
nmap <F7> :NERDTreeToggle<CR>
nnoremap <F8> :TagbarToggle<CR>
nnoremap <F9> :!pkill -9 -f pyclewn <CR> :Pyclewn<CR> :Csource ./.pyclewn<CR>
"map <F12> :set tags+=./tags <CR> :cs reset<CR> :cs add cscope.out<CR>
map <F12> :cs add cscope.out<CR>

set backspace=2 "działanie backspace i delete w trybie edycji

set guifont=Inconsolata\ Medium\ 11
set guifontwide=Inconsolata\ Medium\ 11

"set ofu=syntaxcomplete#Complete "sposób auto uzupełniania

" OmniCppcomplete
"au BufNewFile,BufRead,BufEnter *.cpp,*.hpp set omnifunc=omni#cpp#complete#Main
"let OmniCpp_NamespaceSearch = 2
"let OmniCpp_GlobalScopeSearch = 1
"let OmniCpp_ShowAccess = 1
"let OmniCpp_MayCompleteDot = 1
"let OmniCpp_MayCompleteArrow = 1
"let OmniCpp_MayCompleteScope = 1
"let OmniCpp_DisplayMode = 1 "wy?wietl wszystkie elementy klasy
"let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
" Automatycznie otwieraj i zamykaj wyskakuj?c? liste
"au CursorMovedI, InsertLeave * if pumvisible() == 0|silent! pclose|endif
"autocmd InsertLeave * if pumvisible() == 0|pclose|endif
set completeopt=menu,longest

"Automatyczne domykanie klamer
"function! CleverBrace()
"	if strpart( getline('.'), col(',')-2, 1) =~ '{'
"		return "\<CR>}\<ESC>O"
"	elseif strpart( getline('.'), col(',')-2, 1) =~ '('
"		return ")\<ESC>i"
"	elseif strpart( getline('.'), col(',')-2, 1) =~ '<'
"		return ">\<ESC>i"
"	else
"		return "\<CR>"
"endfunction
"inoremap <CR> <C-R>=CleverBrace()<CR>

set cindent
set cino=(0,W0,l1,g1,t0
set formatoptions+=tcqron1
set foldmethod=syntax
set foldlevelstart=1

let g:proj_window_width = 1
let g:proj_window_increment = 80

let g:NERDTreeWinSize=35
let g:NERDTreeChDirMode=2

set laststatus=2   " Always show the statusline
set showtabline=2 " Always display the tabline, even if there is only one tab
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)

" Toggle spell checking on and off with `\s`.
nmap <silent> <leader>s :set spell!<CR>
set spelllang=en

let g:pyclewn_args="--gdb=async -m 20"
"au BufNewFile,BufRead *.cpp set syntax=cpp11
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``
au BufNewFile,BufRead *.vshdr,*.fshdr,*.frag,*.vert,*.fp,*.vp,*.glsl setf glsl 

"set completefunc=ClangComplete
"let g:SuperTabDefaultCompletionType = "<c-x><c-u>"
"let g:SuperTabDefaultCompletionType = "context"
"let g:clang_auto_select=1
"let g:clang_complete_auto=1
"let g:clang_complete_copen=1
"let g:clang_hl_errors=1
"let g:clang_periodic_quickfix=1
"let g:clang_snippets=1
"let g:clang_snippets_engine='snipmate'
"let g:clang_conceal_snippets=1
"let g:clang_exec="clang"
""let g:clang_user_options='-std=c++11 -stdlib=libc++ -x c++ -Wno-system-headers 2> NULL || exit 0'
"let g:clang_user_options='-std=c++11 -stdlib=libc++ -x c++ -Wno-system-headers'
""let g:clang_auto_user_options="path, ~/.clang_complete, gcc"
"let g:clang_use_library=1
"let g:clang_sort_algo="priority"
"let g:clang_complete_macros=1
"let g:clang_complete_patterns=0
"let g:clang_trailing_placeholder=1
"nnoremap <Leader>q :call g:ClangUpdateQuickFix()<CR>
"nnoremap <Leader>r :call ClangGetReferences()<CR>
"nnoremap <Leader>d :call ClangGetDeclarations()<CR>
"nnoremap <Leader>s :call ClangGetSubclasses()<CR>
"let g:clic_filename="/media/fpwork/index/index.db"
"Allows to switch buffers without saving
set confirm
set sessionoptions=blank,buffers,curdir,folds,help,tabpages,resize,winsize

"let g:Powerline_symbols='fancy'
"let g:Powerline_theme=skwp
let g:Powerline_stl_path_style='short'

let g:ackprg='ack-grep\ -a\ -H\ --nocolor\ --nogroup'
"let Grep_Path='ack-grep'
let Grep_Path='ack-grep\ -a\ -H\ --nocolor\ --nogroup'
set grepprg=ack-grep

hi CursorLine   ctermfg=yellow guibg=grey30 guifg=yellow
set colorcolumn=90
set clipboard=unnamedplus,unnamed
set paste               " Paste from a windows or from vim
set go+=a               " Visual selection automatically copied to the clipboard
"Copy file name to clipboard register
nnoremap <Leader>p :let @+=@%<CR>
nmap <F2> :wa<Bar>exe "mksession! " . v:this_session<CR>

au BufNewFile,BufRead *.ttcn,*.ttcn3 setf ttcn
nmap ,d :b#<bar>bd#<CR> "Remove buffer without closing the view
au BufRead,BufNewFile *.log,*.LOG,*.err setf syslog
au BufRead,BufNewFile SConstruct set syntax=python

cnoreabbrev csa cs add
cnoreabbrev csf cs find
cnoreabbrev csk cs kill
cnoreabbrev csr cs reset
cnoreabbrev css cs show
cnoreabbrev csh cs help

if has('cscope')
  set nocscopetag cscopeverbose

  if has('quickfix')
    set cscopequickfix=s-,c-,d-,i-,t-,e-
  endif

  cnoreabbrev csa cs add
  cnoreabbrev csf cs find
  cnoreabbrev csk cs kill
  cnoreabbrev csr cs reset
  cnoreabbrev css cs show
  cnoreabbrev csh cs help

"  cnoreabbrev <expr> csa
"        \ ((getcmdtype() == ':' && getcmdpos() <= 4)? 'cs add'  : 'csa')
"  cnoreabbrev <expr> csf
"        \ ((getcmdtype() == ':' && getcmdpos() <= 4)? 'cs find' : 'csf')
"  cnoreabbrev <expr> csk
"        \ ((getcmdtype() == ':' && getcmdpos() <= 4)? 'cs kill' : 'csk')
"  cnoreabbrev <expr> csr
"        \ ((getcmdtype() == ':' && getcmdpos() <= 4)? 'cs reset' : 'csr')
"  cnoreabbrev <expr> css
"        \ ((getcmdtype() == ':' && getcmdpos() <= 4)? 'cs show' : 'css')
"  cnoreabbrev <expr> csh
"        \ ((getcmdtype() == ':' && getcmdpos() <= 4)? 'cs help' : 'csh')

"  command -nargs=0 Cscope cs add $VIMSRC/src/cscope.out $VIMSRC/src
endif

let g:syntastic_always_populate_loc_list = 1

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"

set rtp+=/home/pmucko/.vim/bundle/powerline/powerline/bindings/vim
"call vim#ActivateAddons(['powerline'])
"au VimEnter * if &diff | execute 'windo set wrap' | endif
autocmd FilterWritePre * if &diff | setlocal wrap< | endif
set diffopt+=iwhite
let g:xml_syntax_folding = 1
let g:loaded_matchparen = 1

au FileType python set omnifunc=pythoncomplete#Complete
au BufNewFile,BufRead wscript* set filetype=python

let g:clang_format#style_options = {
            \ "AccessModifierOffset" : -4,
            \ "AllowShortIfStatementsOnASingleLine" : "true",
            \ "AlwaysBreakTemplateDeclarations" : "true",
            \ "Standard" : "Cpp03",
            \ "BreakBeforeBraces" : "Stroustrup",
            \ "ColumnLimit" : 95,
            \ "BreakConstructorInitializersBeforeComma" : "true",
            \ "ConstructorInitializerAllOnOneLineOrOnePerLine" : "true" }

autocmd FileType c,cpp,objc nnoremap <buffer><Leader>cf :<C-u>ClangFormat<CR>
autocmd FileType c,cpp,objc vnoremap <buffer><Leader>cf :ClangFormat<CR>
"autocmd BufWrite *.cpp,*.hpp,*.h :ClangFormat

"let g:pyclewn_terminal = "xterm, -e"
let g:pyclewn_args = "-l debug -f ~/pyclewn.log"
let g:ctrlp_map = '<c-z>'
let g:ctrlp_cmd = 'CtrlPMRUFiles'
let g:ctrlp_working_path_mode = 'w'
nnoremap <silent><C-p> :CtrlPMRUFiles<CR>

set ruler
let g:tagbar_autoclose=1
let g:tagbar_width=60
