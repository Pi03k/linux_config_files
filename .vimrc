scriptencoding utf-8
function! BuildYCM(info)
  if a:info.status == 'installed' || a:info.force
    !python2 ./install.py --clang-completer
  endif
endfunction

call plug#begin('~/.vim/plugged')
Plug 'AndrewRadev/linediff.vim'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'ConradIrwin/vim-bracketed-paste'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips', { 'on': '<Plug>(tab)' }
Plug 'Valloric/YouCompleteMe', { 'do': function('BuildYCM') }
Plug 'Yggdroot/indentLine', { 'on': 'IndentLinesEnable' }
Plug 'chrisbra/unicode.vim', { 'for': 'journal' }
Plug 'ctrlpvim/ctrlp.vim'
Plug 'dag/vim-fish'
Plug 'davidoc/taskpaper.vim'
Plug 'derekwyatt/vim-fswitch'
Plug 'djoshea/vim-autoread'
Plug 'edkolev/promptline.vim'
Plug 'groenewege/vim-less'
Plug 'honza/dockerfile.vim'
Plug 'junegunn/fzf' , { 'dir': '~/.fzf', 'do': './install --all' }
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
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
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
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
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


set autoindent
set autoread
set cindent
set cino=(0,W0,l1,g1,t0
set clipboard=unnamed
set clipboard=unnamedplus,unnamed
set colorcolumn=110
set columns=110
set comments=sl:/*,mb:\ *,elx:\ */
set completeopt=menu,longest
set completeopt=menuone,preview
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
set textwidth=110 "automatyczne łamanie linii
set textwidth=120
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
"	set termguicolors
endif


" automatically open and close the popup menu / preview window
" au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
"au VimEnter * if &diff | execute 'windo set wrap' | endif
"au BufWrite *.cpp,*.hpp,*.h :ClangFormat
au BufNewFile,BufRead *.vshdr,*.fshdr,*.frag,*.vert,*.fp,*.vp,*.glsl setf glsl 
au BufNewFile,BufRead wscript* set filetype=python
au BufNewFile,BufReadPost *.bb set syntax=python
au BufRead,BufNewFile,BufReadPost *.cpp,*.c,*.cxx :YcmForceCompileAndDiagnostics
au BufNewFile,BufReadPost *.pro,*.pri set ft=make
au BufRead,BufNewFile *.log,*.LOG,*.err set ft=syslog
au BufRead,BufNewFile SConstruct set syntax=python
au BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
au BufWritePre *.py normal m`:%s/\s\+$//e ``
au FileType c,cpp,objc nnoremap <buffer><Leader>cf :<C-u>ClangFormat<CR>
au FileType c,cpp,objc vnoremap <buffer><Leader>cf :ClangFormat<CR>
"au BufWrite *.cpp,*.hpp,*.h :ClangFormat
au FileType python set omnifunc=pythoncomplete#Complete
au FilterWritePre * if &diff | setlocal wrap< | endif
au Filetype gitcommit setlocal spell textwidth=72
"au! User YouCompleteMe if !has('vim_starting') | call youcompleteme#Enable() | endif
"au! User indentLine doautocmd indentLine Syntax

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

" args
nnoremap ]p :next<cr>
nnoremap [p :previous<cr>
" ----------------------------------------------------------------------------
" Buffers
" ----------------------------------------------------------------------------
nnoremap ]b :bnext<cr>
nnoremap [b :bprev<cr>

" ----------------------------------------------------------------------------
" <tab> / <s-tab> | Circular windows navigation
" ----------------------------------------------------------------------------
nnoremap <tab>   <c-w>w
nnoremap <S-tab> <c-w>W

" ----------------------------------------------------------------------------
" Markdown headings
" ----------------------------------------------------------------------------
nnoremap <leader>1 m`yypVr=``
nnoremap <leader>2 m`yypVr-``
nnoremap <leader>3 m`^i### <esc>``4l
nnoremap <leader>4 m`^i#### <esc>``5l
nnoremap <leader>5 m`^i##### <esc>``6l

" ----------------------------------------------------------------------------
" Moving lines
" ----------------------------------------------------------------------------
nnoremap <silent> <C-k> :move-2<cr>
nnoremap <silent> <C-j> :move+<cr>
nnoremap <silent> <C-h> <<
nnoremap <silent> <C-l> >>
xnoremap <silent> <C-k> :move-2<cr>gv
xnoremap <silent> <C-j> :move'>+<cr>gv
xnoremap <silent> <C-h> <gv
xnoremap <silent> <C-l> >gv
xnoremap < <gv
xnoremap > >gv

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
" #gi / #gpi | go to next/previous indentation level
" ----------------------------------------------------------------------------
function! s:go_indent(times, dir)
  for _ in range(a:times)
    let l = line('.')
    let x = line('$')
    let i = s:indent_len(getline(l))
    let e = empty(getline(l))

    while l >= 1 && l <= x
      let line = getline(l + a:dir)
      let l += a:dir
      if s:indent_len(line) != i || empty(line) != e
        break
      endif
    endwhile
    let l = min([max([1, l]), x])
    execute 'normal! '. l .'G^'
  endfor
endfunction
nnoremap <silent> gi :<c-u>call <SID>go_indent(v:count1, 1)<cr>
nnoremap <silent> gpi :<c-u>call <SID>go_indent(v:count1, -1)<cr>

" ----------------------------------------------------------------------------
" <leader>bs | buf-search
" ----------------------------------------------------------------------------
nnoremap <leader>bs :cex []<BAR>bufdo vimgrepadd @@g %<BAR>cw<s-left><s-left><right>

" ----------------------------------------------------------------------------
" :A
" ----------------------------------------------------------------------------
function! s:a()
  let name = expand('%:r')
  let ext = tolower(expand('%:e'))
  let sources = ['c', 'cc', 'cpp', 'cxx']
  let headers = ['h', 'hh', 'hpp', 'hxx']
  for pair in [[sources, headers], [headers, sources]]
    let [set1, set2] = pair
    if index(set1, ext) >= 0
      for h in set2
        let aname = name.'.'.h
        for a in [aname, toupper(aname)]
          if filereadable(a)
            execute 'e' a
            return
          end
        endfor
      endfor
    endif
  endfor
endfunction
command! A call s:a()

" ----------------------------------------------------------------------------
" Todo
" ----------------------------------------------------------------------------
function! s:todo() abort
  let entries = []
  for cmd in ['git grep -n -e TODO -e FIXME -e XXX 2> /dev/null',
            \ 'grep -rn -e TODO -e FIXME -e XXX * 2> /dev/null']
    let lines = split(system(cmd), '\n')
    if v:shell_error != 0 | continue | endif
    for line in lines
      let [fname, lno, text] = matchlist(line, '^\([^:]*\):\([^:]*\):\(.*\)')[1:3]
      call add(entries, { 'filename': fname, 'lnum': lno, 'text': text })
    endfor
    break
  endfor

  if !empty(entries)
    call setqflist(entries)
    copen
  endif
endfunction
command! Todo call s:todo()

" ----------------------------------------------------------------------------
" <Leader>I/A | Prepend/Append to all adjacent lines with same indentation
" ----------------------------------------------------------------------------
nmap <silent> <leader>I ^vio<C-V>I
nmap <silent> <leader>A ^vio<C-V>$A

" ----------------------------------------------------------------------------
" vim-fugitive
" ----------------------------------------------------------------------------
nmap     <Leader>g :Gstatus<CR>gg<c-n>
nnoremap <Leader>d :Gdiff<CR>

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

noremap <leader>p :let @+=expand("%:p")<CR>

map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>

map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

nmap <F7> :NERDTreeToggle<CR>
nnoremap <F8> :TagbarToggle<CR>
nnoremap <F9> :!pkill -9 -f pyclewn <CR> :Pyclewn<CR> :Csource ./.pyclewn<CR>
map <F12> :set tags+=./tags <CR> :cs reset<CR> :cs add cscope.out<CR>
map <F12> :cs add cscope.out<CR>
nnoremap <leader>y :YcmForceCompileAndDiagnostics<cr>
nnoremap <leader>g :YcmCompleter GoTo<CR>
nnoremap <leader>pd :YcmCompleter GoToDefinition<CR>
nnoremap <leader>pc :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>pf :YcmCompleter GoToDefinitionElseDeclaration<CR>

nnoremap <silent><C-p> :CtrlPMRUFiles<CR>
"Copy file name to clipboard register
nnoremap <Leader>p :let @+=@%<CR>
nmap <F2> :wa<Bar>exe "mksession! " . v:this_session<CR>
" Toggle spell checking on and off with `\s`.
nmap <silent> <leader>s :set spell!<CR>
nmap ,d :b#<bar>bd#<CR> "Remove buffer without closing the view

"nnoremap <Leader>q :call g:ClangUpdateQuickFix()<CR>
"nnoremap <Leader>r :call ClangGetReferences()<CR>
"nnoremap <Leader>d :call ClangGetDeclarations()<CR>
"nnoremap <Leader>s :call ClangGetSubclasses()<CR>
"
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
"let g:clic_filename="/media/fpwork/index/index.db"
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

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:xml_syntax_folding = 1
let g:loaded_matchparen = 1

"let g:pyclewn_terminal = "xterm, -e"
let g:pyclewn_args = "-l debug -f ~/pyclewn.log"
let g:ctrlp_cmd = 'CtrlPMRUFiles'
let g:ctrlp_working_path_mode = 'w'

let g:tagbar_autoclose=1

let g:ackprg='ack-grep\ -a\ -H\ --nocolor\ --nogroup'
"let Grep_Path='ack-grep'
"let Grep_Path='ack-grep\ -a\ -H\ --nocolor\ --nogroup'

let g:matchparen_insert_timeout=5
let g:ctrlp_map = '<c-p>'
let g:ctrlp_regexp = 0

let g:session_directory = "~/.vim/sessions/"
let g:session_autoload = "no"
let g:session_autosave = "no"
let g:session_command_aliases = 1
let g:cpp_class_scope_highlight = 1
let g:cpp_experimental_template_highlight = 1
let g:tagbar_width = 60

syntax on
let g:rainbow_active = 1

let g:ycm_always_populate_location_list = 1
let g:ycm_auto_trigger = 0
"let g:ycm_cache_omnifunc = 0
"let g:ycm_collect_identifiers_from_tags_files = 1
"let g:ycm_goto_buffer_command = 'new-tab'
"let g:ycm_key_invoke_completion = '<C-tab>'
"let g:ycm_seed_identifiers_with_syntax = 1
"let g:ycm_use_ultisnips_completer = 1
let g:ycm_error_symbol = 'EE'
let g:ycm_warning_symbol = 'WW'

" OmniCppComplete
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 1 " autocomplete after .
let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]

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
"g:airline_section_b    %{airline#util#wrap(airline#extensions#hunks#get_hunks(),0)}%{airline#util#wrap(airline#extens ions#branch#get_head(),0)}  

let g:SimpylFold_docstring_preview = 1
au BufWinEnter *.py setlocal foldexpr=SimpylFold(v:lnum) foldmethod=expr
au BufWinLeave *.py setlocal foldexpr< foldmethod<

"au BufNewFile,BufRead *.py set tabstop=4 set softtabstop=4 set shiftwidth=4 set expandtab set autoindent set fileformat=unix

let g:netrw_scp_cmd='sshpass -p piomuc scp'
"let g:deoplete#enable_at_startup = 1

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
            \ "ColumnLimit" : 100,
            \ "AlignConsecutiveDeclarations" : "true",
            \ "AlignConsecutiveAssignments" : "true",
            \ "BreakBeforeBraces" : "Allman",
            \ "ConstructorInitializerAllOnOneLineOrOnePerLine" : "true",
            \ "AlignAfterOpenBracket" : "Align" }
