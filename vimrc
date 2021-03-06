
if &compatible
  set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('flazz/vim-colorschemes')
  call dein#add('Shougo/deoplete.nvim')
  call dein#add("pangloss/vim-javascript")
  call dein#add("mxw/vim-jsx")
  call dein#add('myint/clang-complete')
  call dein#add('SirVer/ultisnips')
  call dein#add('airblade/vim-gitgutter')
  call dein#add('ctrlpvim/ctrlp.vim')
  call dein#add('davidhalter/jedi-vim')
  call dein#add('ekalinin/Dockerfile.vim')
  call dein#add('ervandew/supertab')
  call dein#add('fatih/vim-go')
  call dein#add('gcorne/vim-sass-lint')
  call dein#add('gregsexton/gitv')
  call dein#add('hail2u/vim-css3-syntax')
  call dein#add('honza/vim-snippets')
  call dein#add('hynek/vim-python-pep8-indent')
  call dein#add('itchyny/vim-haskell-indent')
  call dein#add('jmcantrell/vim-virtualenv')
"  call dein#add('lepture/vim-jinja')
  call dein#add('Valloric/YouCompleteMe')
" NeoBundle 'lukerandall/haskellmode-vim'
  call dein#add('majutsushi/tagbar')
  call dein#add('mileszs/ack.vim')
  call dein#add('neovimhaskell/haskell-vim')
  call dein#add('othree/html5.vim')
  call dein#add('othree/html5-syntax.vim')
  call dein#add('scrooloose/nerdcommenter')
  call dein#add('scrooloose/nerdtree')
  call dein#add('scrooloose/syntastic')
  call dein#add('sukima/xmledit')
  call dein#add('tpope/vim-fugitive')
  call dein#add('tpope/vim-surround')
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')
  call dein#add('iamcco/markdown-preview.vim')

  call dein#add('vim-scripts/L9')
  call dein#add('vim-scripts/IndentAnything')
  call dein#add('vim-scripts/c.vim')
  call dein#add('vim-scripts/bufexplorer.zip')
  call dein#add('vim-scripts/matchit.zip')
  call dein#add('vim-scripts/python.vim')

  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" source $VIMRUNTIME/mswin.vim

" Sets how many lines of history VIM has to remember
set history=300

" Set to auto read when a file is changed from the outside
set autoread
set autowrite

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

set wildignore+=node_modules
" Fast saving
nmap <leader>w :w!<cr>

" Fast editing of the .vimrc
map <leader>e :e! ~/.vimrc<cr>

" When vimrc is edited, reload it
" autocmd! bufwritepost vimrc source ~/.vimrc

"set autochdir "auto change current dir to file's dir
"autocmd BufEnter * lcd %:p:h

set backupcopy=yes

set completeopt=menu,longest

set confirm
set display=lastline
set formatoptions=tcqro " auto prifix new comment line with space and *
set mouse=a
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 7 lines to the curors - when moving vertical..
set so=7

set wildmenu "Turn on WiLd menu

set ruler "Always show current position

set cmdheight=2 "The commandbar height

set hid "Change buffer - without saving

" Set backspace config
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

set ignorecase "Ignore case when searching

set hlsearch "Highlight search things

set incsearch "Make search act like search in modern browsers

set magic "Set magic on, for regular expressions

set showmatch "Show matching bracets when text indicator is over them
set mat=2 "How many tenths of a second to blink

" No sound on errors
set noerrorbells
set novisualbell
set t_vb=

set lazyredraw
set updatetime=500

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable "Enable syntax hl

set encoding=utf8
set fileencodings=utf8,cp936,latin1,default
set ambiwidth=double

if has("win32") || has("win64")
    set gfn=Consolas:h12:w7:cANSI
    "set guifontwide=Microsoft\ YaHei:b:h12:cGB2312
    "set guifontwide=Microsoft\ YaHei\ 12
elseif has("mac")
    set gfn=Monaco:h14
else
    set guifontwide=Microsoft\ Yahei\ 12,WenQuanYi\ Zen\ Hei\ 12
    set shell=/bin/bash
endif

if has("gui_running")
    set guioptions-=T
    if !has("mac")
        au GUIEnter * simalt ~x
    else
        set lines=30
        set columns=120
    endif

    "colorscheme molokai
    set background=dark
    colorscheme solarized
    set nu
else
    "colorscheme molokai
    set background=dark
    colorscheme solarized
    set nu
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files and backups
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set ff=unix
set ffs=unix,dos,mac

" Turn backup off, since most stuff is in SVN, git anyway...
set nobackup
set nowb
set noswapfile

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set expandtab
set shiftwidth=4
set tabstop=4
set smarttab

set lbr
set tw=500

set ai "Auto indent
set cindent cinoptions=g0,:0
set si "Smart indet
set nowrap "Wrap lines


""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""
" Really useful!
"  In visual mode when you press * or # to search for the current selection
vnoremap <silent> * :call VisualSearch('f')<CR>
vnoremap <silent> # :call VisualSearch('b')<CR>

" When you press gv you vimgrep after the selected text
vnoremap <silent> gv :call VisualSearch('gv')<CR>


function! CmdLine(str)
    exe "menu Foo.Bar :" . a:str
    emenu Foo.Bar
    unmenu Foo
endfunction

" From an idea by Michael Naumann
function! VisualSearch(direction) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", '\\/.*$^~[]')
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'b'
        execute "normal ?" . l:pattern . "^M"
    elseif a:direction == 'gv'
        call CmdLine("vimgrep " . '/'. l:pattern . '/' . ' **/*.')
    elseif a:direction == 'f'
        execute "normal /" . l:pattern . "^M"
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Command mode related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Bash like keys for the command line
cnoremap <C-A>		<Home>
cnoremap <C-E>		<End>
cnoremap <C-K>		<C-U>

cnoremap <C-P> <Up>
cnoremap <C-N> <Down>


func! Cwd()
  let cwd = getcwd()
  return "e " . cwd
endfunc

func! DeleteTillSlash()
  let g:cmd = getcmdline()
  "if MySys() == "linux" || MySys() == "mac"
    let g:cmd_edited = substitute(g:cmd, "\\(.*\[/\]\\).*", "\\1", "")
  "else
  "  let g:cmd_edited = substitute(g:cmd, "\\(.*\[\\\\]\\).*", "\\1", "")
  "endif
  if g:cmd == g:cmd_edited
    "if MySys() == "linux" || MySys() == "mac"
      let g:cmd_edited = substitute(g:cmd, "\\(.*\[/\]\\).*/", "\\1", "")
    "else
    "  let g:cmd_edited = substitute(g:cmd, "\\(.*\[\\\\\]\\).*\[\\\\\]", "\\1", "")
    "endif
  endif
  return g:cmd_edited
endfunc

func! CurrentFileDir(cmd)
  return a:cmd . " " . expand("%:p:h") . "/"
endfunc


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Map space to / (search) and c-space to ? (backgwards search)
map <space> <C-D>
"map <c-space> ?
"map <silent> <leader><cr> :noh<cr>

" Smart way to move btw. windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Close the current buffer
map <leader>bd :Bclose<cr>

" Close all the buffers
map <leader>ba :1,300 bd!<cr>

" Use the arrows to something usefull
map <leader>bn :bn<cr>
map <leader>bp :bp<cr>

" Tab configuration
map <leader>tn :tabn<cr>
map <leader>tp :tabp<cr>
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

" When pressing <leader>cd switch to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>


command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
   let l:currentBufNum = bufnr("%")
   let l:alternateBufNum = bufnr("#")

   if buflisted(l:alternateBufNum)
     buffer #
   else
     bnext
   endif

   if bufnr("%") == l:currentBufNum
     new
   endif

   if buflisted(l:currentBufNum)
     execute("bdelete! ".l:currentBufNum)
   endif
endfunction

" Specify the behavior when switching between buffers
try
  set switchbuf=usetab
  set stal=2
catch
endtry


""""""""""""""""""""""""""""""
" => Statusline
""""""""""""""""""""""""""""""
" Always hide the statusline
set laststatus=2

" Format the statusline
" set statusline=\ %F%m%r%h[%{&ff},%{&fenc}]\ %w\ \ CWD:\ %r%{CurDir()}%h\ \ \ Line:\ %l/%L:%c\ \ \ Branch:%{fugitive#statusline()}\ \ \ GA:%b\ 0x%B
let g:airline_section_a = '%{CurDir()}'
" let g:airline_section_b = '%{fugitive#statusline()}'
let g:airline_section_x = 'GA:%b 0x%B'
let g:airline_section_y = '%{&ft}|%{&fenc}|%{&ff}'
let g:airline_section_z = '%p%%:%L:%c'


function! CurDir()
    let curdir = substitute(getcwd(), '/Users/wilbur/', "~/", "g")
    return curdir
endfunction


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General Abbrevs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
iab xdate <c-r>=strftime("%d/%m/%y %H:%M:%S")<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Delete trailing white space, useful for Python ;)
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite *.py,*.js,*.jsx :call DeleteTrailingWS()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Cope
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Do :help cope if you are unsure what cope is. It's super useful!
map <leader>cc :botright cope<cr>
map <leader>nn :cn<cr>
map <leader>p :cp<cr>


""""""""""""""""""""""""""""""
" => bufExplorer plugin
""""""""""""""""""""""""""""""
let g:bufExplorerDefaultHelp=0
let g:bufExplorerShowRelativePath=1
let g:bufExplorerSortBy = "mru"


""""""""""""""""""""""""""""""
" => Python section
""""""""""""""""""""""""""""""
au FileType python set nocindent
au FileType python set nosmartindent
let python_highlight_all = 1
au FileType python syn keyword pythonDecorator True None False self
autocmd FileType python setlocal completeopt=menu,longest

""""""""""""""""""""""""""""""
" => Vim grep
""""""""""""""""""""""""""""""
let Grep_Skip_Dirs = 'RCS CVS SCCS .svn generated'
set grepprg=grep\ -nIH\ --exclude=tags\ --exclude=cscope.*\ --exclude-dir=.git


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => MISC
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

"Quickly open a buffer for scripbble
map <leader>q :q<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" my functions
map <F5> :call Run()<CR>
func! Run()
	exec "w"
	if &ft == 'cpp'
		exec "! g++ -g -Wall -o %< % && ./%<"
	elseif &ft == 'c'
		exec "! gcc -g -Wall -o %< % && ./%<"
	elseif &ft == 'sh'
		exec "! chmod +x % && ./%"
	elseif &ft == 'python'
		exec "!python %"
	elseif &ft == 'php'
		exec "!php %"
    elseif &ft == 'racket'
        exec "!racket %"
    elseif &ft == 'ruby'
        exec "!ruby %"
    elseif &ft == 'hs'
        exec '!runhaskell %'
	endif
endfunc

if has("cscope")
    "set csprg=/usr/bin/cscope
    set csto=0
    set cst
    set nocsverb
    " add any database in current directory
    if filereadable("cscope.out")
        cs add cscope.out
    " else add database pointed to by environment
    elseif $CSCOPE_DB != ""
        cs add $CSCOPE_DB
    endif
    set csverb
endif

nmap <leader>cfs :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <leader>cfg :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <leader>cfc :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <leader>cft :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <leader>cfe :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <leader>cff :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <leader>cfi :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <leader>cfd :cs find d <C-R>=expand("<cword>")<CR><CR>

if(has("win32") || has("win95") || has("win64") || has("win16"))
    let g:iswindows=1
else
    let g:iswindows=0
endif

map <F10> :call Do_ctags()<CR>
function Do_ctags()
    let dir = getcwd()
    if filereadable("tags")
        if(g:iswindows==1)
            let tagsdeleted=delete(dir."\\"."tags")
        else
            let tagsdeleted=delete("./"."tags")
        endif
        if(tagsdeleted!=0)
            echohl WarningMsg | echo "Fail to do tags! I cannot delete the tags" | echohl None
            return
        endif
    endif
    if has("cscope")
        silent! execute "cs kill -1"
    endif
    if filereadable("cscope.files")
        if(g:iswindows==1)
            let csfilesdeleted=delete(dir."\\"."cscope.files")
        else
            let csfilesdeleted=delete("./"."cscope.files")
        endif
        if(csfilesdeleted!=0)
            echohl WarningMsg | echo "Fail to do cscope! I cannot delete the cscope.files" | echohl None
            return
        endif
    endif
    if filereadable("cscope.out")
        if(g:iswindows==1)
            let csoutdeleted=delete(dir."\\"."cscope.out")
        else
            let csoutdeleted=delete("./"."cscope.out")
        endif
        if(csoutdeleted!=0)
            echohl WarningMsg | echo "Fail to do cscope! I cannot delete the cscope.out" | echohl None
            return
        endif
    endif
    if(executable('ctags'))
        "silent! execute "!ctags -R --c-types=+p --fields=+S *"
        silent! execute "!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q --extra=+q --exclude=static/ckeditor --exclude=static/mathjax --exclude=static/node_modules ."
    endif
    if(executable('cscope') && has("cscope") )
        if(g:iswindows!=1)
            silent! execute "!find . -name '*.h' -o -name '*.c' -o -name '*.cpp' -o -name '*.java' -o -name '*.cs' -o -name '*.py' > cscope.files"
        else
            silent! execute "!dir /s/b *.c,*.cpp,*.h,*.java,*.cs,*.py >> cscope.files"
        endif
        silent! execute "!cscope -b"
        execute "normal :"
        if filereadable("cscope.out")
            execute "cs add cscope.out"
        endif
    endif
endfunction
set cscopequickfix=s-,c-,d-,i-,t-,e-

map <leader>ch :call SetColorColumn()<CR>
function! SetColorColumn()
    let col_num = virtcol(".")
    let cc_list = split(&cc, ',')
    if count(cc_list, string(col_num)) <= 0
        execute "set cc+=".col_num
    else
        execute "set cc-=".col_num
    endif
endfunction

if g:iswindows == 1
    let g:clang_complete_loaded = 1  "disable
endif
let g:clang_complete_auto = 0
let s:clang_library_path='/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib'
if isdirectory(s:clang_library_path)
    let g:clang_library_path=s:clang_library_path
endif
"let g:clang_snippets_engine = "snipmate"

"let g:SuperTabDefaultCompletionType = "context"
"let g:SuperTabContextDefaultCompletionType = "<c-p>"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => haskell mode
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"au BufEnter *.hs compiler ghc
"let g:haddock_browser = "open"
"let g:haddock_browser_callformat = "%s %s"
"let g:haddock_docdir="/usr/local/share/doc/ghc/html/"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => syntastic
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:syntastic_check_on_wq=0
let g:syntastic_check_on_open = 1
let g:syntastic_always_populate_loc_list=1

let g:syntastic_python_checkers=['flake8']

let g:syntastic_cpp_checkers = ['gcc', 'cppcheck']
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_no_default_include_dirs = 1

let g:syntastic_sass_checkers=["sass_lint"]
let g:syntastic_scss_checkers=["sass_lint"]

let g:syntastic_javascript_checkers=["eslint"]
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => xml / html
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
au FileType html,jinja,htmlja setlocal shiftwidth=2
au FileType html,jinja,htmlja setlocal tabstop=2

let xml_use_xhtml = 1

" XML formatter
function! DoFormatXML() range
	" Save the file type
	let l:origft = &ft

	" Clean the file type
	set ft=

	" Add fake initial tag (so we can process multiple top-level elements)
	exe ":let l:beforeFirstLine=" . a:firstline . "-1"
	if l:beforeFirstLine < 0
		let l:beforeFirstLine=0
	endif
	exe a:lastline . "put ='</PrettyXML>'"
	exe l:beforeFirstLine . "put ='<PrettyXML>'"
	exe ":let l:newLastLine=" . a:lastline . "+2"
	if l:newLastLine > line('$')
		let l:newLastLine=line('$')
	endif

	" Remove XML header
	exe ":" . a:firstline . "," . a:lastline . "s/<\?xml\\_.*\?>\\_s*//e"

	" Recalculate last line of the edited code
	let l:newLastLine=search('</PrettyXML>')

	" Execute external formatter
	exe ":silent " . a:firstline . "," . l:newLastLine . "!xmllint --noblanks --format --recover -"

	" Recalculate first and last lines of the edited code
	let l:newFirstLine=search('<PrettyXML>')
	let l:newLastLine=search('</PrettyXML>')

	" Get inner range
	let l:innerFirstLine=l:newFirstLine+1
	let l:innerLastLine=l:newLastLine-1

	" Remove extra unnecessary indentation
	exe ":silent " . l:innerFirstLine . "," . l:innerLastLine "s/^  //e"

	" Remove fake tag
	exe l:newLastLine . "d"
	exe l:newFirstLine . "d"

	" Put the cursor at the first line of the edited code
	exe ":" . l:newFirstLine

	" Restore the file type
	exe "set ft=" . l:origft
endfunction
command! -range=% FormatXML <line1>,<line2>call DoFormatXML()

nmap <silent> <leader>x :%FormatXML<CR>
vmap <silent> <leader>x :FormatXML<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => UltiSnips
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-f>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => go
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
au FileType go nmap <leader>gr <Plug>(go-run)
au FileType go nmap <leader>gb <Plug>(go-build)
au FileType go nmap <leader>gt <Plug>(go-test)
au FileType go nmap <leader>gc <Plug>(go-coverage)

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => misc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:jedi#use_tabs_not_buffers = 0

"au BufEnter *.cpp set ft=cpp11

let NERDTreeIgnore=['\.o$', '\.d$', '\.pyc$', '\.d$', '__pycache__']

set makeprg=make\ -w\ -j5

au FileType markdown set wrap
let vim_markdown_preview_hotkey='<C-m>'
let g:mkdp_path_to_chrome = "/Applications/Google\\ Chrome.app/Contents/MacOS/Google\\ Chrome"
let g:mkdp_refresh_slow = 1

" netrw setting
let g:netrw_winsize = 30
"nmap <silent> <leader>fe :Sexplore!<cr>
nmap <silent> <leader>nt :NERDTree<cr>
"let loaded_taglist = 1
nmap <F8> :TagbarToggle<CR>

let g:ack_default_options = " -s -H --nocolor --nogroup --column --ignore-file='match:/cscope..*$' --ignore-file='match:/^tags$/'"
