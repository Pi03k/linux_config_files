scriptencoding utf-8

call plug#begin('~/.vim/plugged')
Plug 'AndrewRadev/linediff.vim'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'ConradIrwin/vim-bracketed-paste'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips', { 'on': '<Plug>(tab)' }
Plug 'Yggdroot/indentLine', { 'on': 'IndentLinesEnable' }
Plug 'chrisbra/unicode.vim', { 'for': 'journal' }
Plug 'ctrlpvim/ctrlp.vim'
Plug 'davidoc/taskpaper.vim'
Plug 'derekwyatt/vim-fswitch'
Plug 'djoshea/vim-autoread'
Plug 'edkolev/promptline.vim'
Plug 'groenewege/vim-less'
Plug 'honza/dockerfile.vim'
Plug 'junegunn/fzf' , { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/vader.vim', { 'on': 'Vader', 'for': 'vader' }
Plug 'junegunn/vim-after-object'
Plug 'junegunn/vim-easy-align', { 'on': ['<Plug>(EasyAlign)', 'EasyAlign'] }
Plug 'junegunn/vim-fnr'
Plug 'junegunn/vim-journal'
Plug 'justinmk/vim-gtfo'
Plug 'kchmck/vim-coffee-script'
Plug 'luochen1990/rainbow'
Plug 'majutsushi/tagbar'
Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' }
Plug 'mhinz/vim-signify'
Plug 'nvie/vim-flake8'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'pangloss/vim-javascript'
Plug 'rhysd/vim-clang-format'
Plug 'rust-lang/rust.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'scrooloose/syntastic'
Plug 'slim-template/vim-slim'
Plug 'solarnz/thrift.vim'
Plug 'tmhedberg/SimpylFold'
Plug 'tomasr/molokai'
Plug 'tpope/vim-eunuch'
Plug 'jreybert/vimagit'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails', { 'for': [] }
Plug 'tpope/vim-unimpaired'
Plug 'vim-scripts/BufClose.vim'
Plug 'vim-scripts/LargeFile'
Plug 'vim-scripts/ReplaceWithRegister'
Plug 'vim-scripts/indentpython.vim'
Plug 'vim-scripts/syslog-syntax-file'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'
Plug 'maksimr/vim-jsbeautify'
Plug 'mileszs/ack.vim'
Plug 'morhetz/gruvbox'
Plug 'davidhalter/jedi-vim'
Plug 'elzr/vim-json'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'roxma/nvim-yarp'
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}

call plug#end()

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

  cnoreabbrev <expr> csa
        \ ((getcmdtype() == ':' && getcmdpos() <= 4)? 'cs add'  : 'csa')
  cnoreabbrev <expr> csf
        \ ((getcmdtype() == ':' && getcmdpos() <= 4)? 'cs find' : 'csf')
  cnoreabbrev <expr> csk
        \ ((getcmdtype() == ':' && getcmdpos() <= 4)? 'cs kill' : 'csk')
  cnoreabbrev <expr> csr
        \ ((getcmdtype() == ':' && getcmdpos() <= 4)? 'cs reset' : 'csr')
  cnoreabbrev <expr> css
        \ ((getcmdtype() == ':' && getcmdpos() <= 4)? 'cs show' : 'css')
  cnoreabbrev <expr> csh
        \ ((getcmdtype() == ':' && getcmdpos() <= 4)? 'cs help' : 'csh')

endif

syntax on
set fenc=utf-8
set termencoding=utf-8
set t_Co=256
set background=dark
"colorscheme molokai
colorscheme gruvbox

set expandtab
set autoindent
set autoread
set cindent
set cino=(0,W0,l1,g1,t0
set clipboard=unnamedplus,unnamed
set colorcolumn=110
set columns=110
set comments=sl:/*,mb:\ *,elx:\ */
set completeopt=menu,longest,menuone,preview
set confirm
set cursorline
set diffopt+=iwhite
set diffopt=filler,vertical
set foldenable
set foldlevel=100
set foldlevelstart=1
set foldmethod=syntax
set formatoptions+=tcqron1
set go+=a               " Visual selection automatically copied to the clipboard
set gdefault
set grepformat=%f:%l:%c:%m,%f:%l:%m
set grepprg=ack-grep
set hidden
set history=3000
set hls
set hlsearch " CTRL-L / CTRL-R W
set ignorecase smartcase
set incsearch
set laststatus=2
set laststatus=2   " Always show the statusline
set list
set listchars=tab:\|\ ,
set modelines=2
set more
set nobackup
set nocompatible
set nojoinspaces
set magic
set nonumber
set noruler
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)
set nospell
set nostartofline
set noswapfile
set nowritebackup
set noshowmode
set nrformats=hex
set ruler
set scrolloff=5
set sessionoptions=blank,buffers,curdir,folds,help,tabpages,resize,winsize
set shortmess=aIT
set showcmd
set showmatch
set showtabline=0 " Always display the tabline, even if there is only one tab
set smartindent
set spelllang=en
set t_Co=256
set tabstop=4
set shiftwidth=4
set textwidth=100 "automatyczne łamanie linii
set textwidth=100
set timeoutlen=500
set virtualedit=block
set visualbell
set whichwrap=b,s
set wildmenu
set wildmode=list:full
set wrapmargin=0
set mouse=a

if has('nvim')
	let $FZF_DEFAULT_OPTS .= ' --inline-info'
"	let $NVIM_TUI_ENABLE_TRUE_COLOR=1
	set termguicolors
endif


" automatically open and close the popup menu / preview window
" au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
"au VimEnter * if &diff | execute 'windo set wrap' | endif
"au BufWrite *.cpp,*.hpp,*.h :ClangFormat
au BufNewFile,BufRead *.vshdr,*.fshdr,*.frag,*.vert,*.fp,*.vp,*.glsl setf glsl 
au BufNewFile,BufRead wscript* set filetype=python
au BufNewFile,BufReadPost *.bb set syntax=python
au BufNewFile,BufReadPost *.pro,*.pri set ft=make
au BufRead,BufNewFile *.log,*.LOG,*.err set ft=none
au BufRead,BufNewFile SConstruct set syntax=python
au BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
au BufWritePre *.py normal m`:%s/\s\+$//e ``
au FileType python set omnifunc=pythoncomplete#Complete
au FilterWritePre * if &diff | setlocal wrap< | endif
au Filetype gitcommit setlocal spell textwidth=72

noremap <C-F> <C-D>
noremap <C-B> <C-U>

" Tag stack
nnoremap g[ :pop<cr>

" Jump list (to newer position)
"nnoremap <C-p> <C-i>

" ----------------------------------------------------------------------------
" nvim
" ----------------------------------------------------------------------------
if has('nvim')
  tnoremap <a-a> <esc>a
  tnoremap <a-b> <esc>b
  tnoremap <a-d> <esc>d
  tnoremap <a-f> <esc>f
endif

" ----------------------------------------------------------------------------
" Quickfix
" ----------------------------------------------------------------------------
nnoremap ]q :cnext<cr>zz
nnoremap [q :cprev<cr>zz
nnoremap ]l :lnext<cr>zz
nnoremap [l :lprev<cr>zz

" args and buffers switching
nnoremap ]p :next<cr>
nnoremap [p :previous<cr>
nnoremap ]b :bnext<cr>
nnoremap [b :bprev<cr>

" ----------------------------------------------------------------------------
" <tab> / <s-tab> | Circular windows navigation
" ----------------------------------------------------------------------------
nnoremap <tab>   <c-w>w
nnoremap <S-tab> <c-w>W

" ----------------------------------------------------------------------------
" Cscope mappings
" ----------------------------------------------------------------------------
if has("cscope")
  "   's'   symbol: find all references to the token under cursor
  "   'g'   global: find global definition(s) of the token under cursor
  "   'c'   calls:  find all calls to the function name under cursor
  "   't'   text:   find all instances of the text under cursor
  "   'e'   egrep:  egrep search for the word under cursor
  "   'f'   file:   open the filename under cursor
  "   'i'   includes: find files that include the filename under cursor
  "   'd'   called: find functions that function under cursor calls
  nnoremap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
  nnoremap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
  nnoremap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
  nnoremap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
  xnoremap <C-\>t y:cs find t <C-R>"<CR>
  " nnoremap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
  nnoremap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
  " nnoremap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
  nnoremap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>

  " extends
  nnoremap <C-\>e :cs find t extends <C-R>=expand("<cword>")<CR><CR>
  " implements
  nnoremap <C-\>i :cs find t implements <C-R>=expand("<cword>")<CR><CR>
  " new
  nnoremap <C-\>n :cs find t new <C-R>=expand("<cword>")<CR><CR>
endif

" ----------------------------------------------------------------------------
" <Leader>c Close quickfix/location window
" ----------------------------------------------------------------------------
nnoremap <leader>c :cclose<bar>lclose<cr>

" ----------------------------------------------------------------------------
" ack.vim
" ----------------------------------------------------------------------------
if executable('ag')
  let &grepprg = 'ag --nogroup --nocolor --column'
else
  let &grepprg = 'grep -rn $* *'
endif
command! -nargs=1 -bar Grep execute 'silent! grep! <q-args>' | redraw! | copen

nnoremap <leader>so :OpenSession
nnoremap <leader>ss :SaveSession
nnoremap <leader>sd :DeleteSession<CR>
nnoremap <leader>sc :CloseSession<CR>

"Copy file name to clipboard register
noremap <leader>p :let @+=expand("%:p")<CR>
"nnoremap <Leader>p :let @+=@%<CR>

map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>

map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

nmap <F7> :NERDTreeToggle<CR>
nnoremap <F8> :TagbarToggle<CR>
nnoremap <F9> :!pkill -9 -f pyclewn <CR> :Pyclewn<CR> :Csource ./.pyclewn<CR>
map <F12> :set tags+=./tags <CR> :cs reset<CR> :cs add cscope.out<CR>

nnoremap <silent><C-p> :CtrlPMRUFiles<CR>
nmap ,d :b#<bar>bd#<CR> "Remove buffer without closing the view

inoremap <expr> <c-x><c-t> fzf#complete('tmuxwords.rb --all-but-current --scroll 500 --min 5')
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)
"command! Plugs call fzf#run({
"\ 'source': map(sort(keys(g:plugs)), 'g:plug_home."/".v:val'),
"\ 'options': '--delimiter / --nth -1',
"\ 'down': '~40%',
"\ 'sink': 'Explore'})

let g:pyclewn_args="--gdb=async -m 20"
let g:pyclewn_args = "-l debug -f ~/pyclewn.log"
let g:proj_window_width = 1
let g:proj_window_increment = 80

let g:NERDTreeWinSize=35
let g:NERDTreeChDirMode=2
"let g:python_host_prog = '/usr/bin/python2'
"let g:python3_host_prog = '/usr/bin/python3'

"let g:UltiSnipsUsePythonVersion = 2
"let g:UltiSnipsExpandTrigger="<C-e>"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"
"let g:UltiSnipsSnippetDirectories=["UltiSnips", "my_snippets"]

let g:syntastic_always_populate_loc_list = 1
let g:xml_syntax_folding = 1
let g:loaded_matchparen = 1

"let g:pyclewn_terminal = "xterm, -e"
let g:ctrlp_cmd = 'CtrlPMRUFiles'
let g:ctrlp_working_path_mode = 'w'
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
let g:ctrlp_use_caching = 0
let g:ctrlp_map = '<c-p>'
let g:ctrlp_regexp = 0

let g:tagbar_autoclose=1

let g:ackprg='ack-grep\ -a\ -H\ --nocolor\ --nogroup'

let g:matchparen_insert_timeout=5

let g:session_directory = "~/.vim/sessions/"
let g:session_autoload = "no"
let g:session_autosave = "no"
let g:session_command_aliases = 1
let g:cpp_class_scope_highlight = 1
let g:cpp_experimental_template_highlight = 1
let g:tagbar_width = 60

let g:rainbow_active = 1

let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#hunks#enabled = 1
let g:airline#extensions#fugitiveline#enabled = 1
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline#extensions#ycm#enabled = 1
let g:airline_symbols_ascii = 1
let g:airline_skip_empty_sections = 1
let g:airline_powerline_fonts = 1
let g:airline_highlighting_cache = 1
let g:airline#extensions#branch#displayed_head_limit = 15
let g:airline#extensions#branch#format = 2

let g:magit_discard_untracked_do_delete=1
let g:SimpylFold_docstring_preview = 1
au BufWinEnter *.py setlocal foldexpr=SimpylFold(v:lnum) foldmethod=expr
au BufWinLeave *.py setlocal foldexpr< foldmethod<

let g:deoplete#enable_at_startup = 1

set lazyredraw
let g:ackprg = 'ag --nogroup --nocolor --column'
"let g:clang_format#style_options = {
            "\ "AccessModifierOffset" : -4,
            "\ "AllowShortIfStatementsOnASingleLine" : "true",
            "\ "AlwaysBreakTemplateDeclarations" : "true",
            "\ "Standard" : "Cpp03",
            "\ "BreakBeforeBraces" : "Stroustrup",
            "\ "ColumnLimit" : 95,
            "\ "BreakConstructorInitializersBeforeComma" : "true",
            "\ "ConstructorInitializerAllOnOneLineOrOnePerLine" : "true" }

let g:clang_format#style_options = {
            \ "BasedOnStyle" : "Google",
            \ "IndentWidth" : 4,
            \ "AccessModifierOffset" : -4,
            \ "AllowShortIfStatementsOnASingleLine" : "false",
            \ "AlwaysBreakTemplateDeclarations" : "true",
            \ "Standard" : "C++11",
            \ "ColumnLimit" : 90,
            \ "AlignConsecutiveDeclarations" : "true",
            \ "AlignConsecutiveAssignments" : "true",
            \ "BreakBeforeBraces" : "Allman",
            \ "ConstructorInitializerAllOnOneLineOrOnePerLine" : "true",
            \ "AlignAfterOpenBracket" : "Align" }


if executable('pyls')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'pyls',
        \ 'cmd': {server_info->['pyls']},
        \ 'whitelist': ['python'],
        \ 'workspace_config': {'pyls': {'plugins': {'pydocstyle': {'enabled': v:true}}}}
        \ })
endif

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> for trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> for confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[c` and `]c` for navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K for show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" Using CocList
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>
