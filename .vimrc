filetype plugin indent on  " Automatically detect file types.
set nocompatible  " We don't want vi compatibility.
filetype off
" Add recently accessed projects menu (project plugin)

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" Plugins installed
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'tpope/vim-rails'
let g:jsx_ext_required = 0

Plugin 'valloric/MatchTagAlways'
let g:mta_filetypes = {
	\'javascript.jsx': 1,
\}

Plugin 'vim-scripts/Align'

let g:javascript_plugin_flow = 1
" Minibuffer Explorer Settings
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1
let g:miniBufExplMaxHeight = 1

" alt+n or alt+p to navigate between entries in QuickFix
map <silent> <M-p> :cp <CR>
map <silent> <M-n> :cn <CR>

" Change which file opens after executing :Rails command
let g:rails_default_file='config/database.yml'

syntax enable

syntax on
syntax enable
set laststatus=2
set statusline=%<%F\ %h%m%r%=%-14.(%l,%c%V%)\ %P
" Disable syntax highlighting for a moment
"syntax clear
" Stop syntax highlighting from being completely used
"syntax off
"
" Make sure that vim knows that ur terminal supports colors
" use $setenv TERM xterm-color
"
" Enable filetype detection
" detects the type of the file by checking the filename and sometimes the
" contents of the file for specific text.
filetype indent on

" use this if you have started with an empty file and typed text that makes
" it possible to detect the type of text
filetype detect

" Text Formating --
" Make sure that long lines wrap around the screen
set wrap
"
" To display all the tabs ^I and newlines $
":set list
"
" set tab to 8 spaces... to ensure uniformity in indentation
" usually we should restrict ourselves to not more than 3 levels of indentation
"
" To display the line number in front of every line
"set number
" To switch this off
"set nonumber
"
" To display ruler. Cursor position in the lower right corner
set ruler
" To turn this off
"set noruler
"
" vim uses the indent of the previous line for a newly created line
set autoindent
" set cindent autoindents + comments the next line if prev line was a comment
"
" how many cmd's and search patterns have to be kept in the history
set history=256
"
" Display an incomplete command in the lower right corner of vim window
set showcmd
set directory=~/.vim/tmp
"
" Backing-up Files --
"set backup
" The name of the backup file is the original file with ~ added to the end
" If ur file is data.txt; then backup file is data.txt~
" now data.txt is saved as data.txt.bak
"set backupext=.bak
" List of directories for the backup file, otherwise it is stored in current
" directory. The backup file will be created in the first directory in the list
" where it is possible
"set backupdir=/tmp/vimbackup,/var/vimbackup
" Backup files are written each time ur original source file is written. Thus a
" backup file will only contain the previous version of the file not the first
" version
" To make vim keep the original file i.e the first backup file use...
"set patchmode=.org

" Searching --
" Easy searching of a word in text by saving on the typing
" position the cursor on the word and use '*' command. Vim will grab the word
" under the cursor and use it as a search string
" '#' does the same thing but in the other direction
"
" Ignoring case while searching
" case insensitive searches and replaces
set ic
" case sensitive searches and replaces
"set noic
" Searching for whole words
" delineate words using markers
" 	start-of-word marker: \<
" 	end-of-word marker: \>
" Highlighting matches
set hlsearch
" to remove highlighting
"set nohlsearch	":nohl
" we can disable highlighting using :nohlsearch. This doesnot reset highlighting" ,but as soon as we execute search cmd the highlighting will be used again.
"
" Tuning searches
" To allow vim to display a match for a string while you are still typing it
" displays the pattern when halfway typing it.
set incsearch
" By default searching wraps around the end of the file
" to stop the search at the end-of-the-file or start-of-the-file use..
"set nowrapscan
"
" When a bracket is inserted, briefly jump to the matching one.
set showmatch

" Automatic Writing --
" When moving around files and making changes one has to remember to use :w,
" else it would complain. If u are sure to always write the modified files u
" can tell vim to automatically do it
"set autowrite
" U can switch off the automatic writing using...
"set noautowrite

"Setting the tag file --
"set tag=/sys_debug/tags,/sys_ws30/tags,/sys_rs52/tags
"set tag=/sys_rs52/tags
"set tag=/var/main/rs_52/Src/pe/tags
" set tag=/usr/sys_trial/tags


" Inserting the contents of a file or output of a command
" Insert content of file <file> below the cursor
":r <file> 
" Insert output of command <cmd> below the cursor
":r! <cmd>

" Lookup the keyword under the cursor with man
" K

" To redirect the ouput to a file [assuming the file as a script]
":redir>f

" my key mappings ... @manju
"
" vim autocomplete feature
" usage:
" iab <key to be expanded> <actual-expansion>
" warning: sometimes may lead to unnecessary expansions.
iab #i #include  " ...typing #d and space will expand this to #define
iab #d #define 
iab teh the

" In insert mode hitting CTRL-P and CTRL-N would attempt to autocomplete. The 
" former would search upwards while the latter would search downwards in the 
" current buffer.
" The options to be checked for completion
" complete -- specifies how the insertion mode completion should work
" dictionary -- list of dictionary files for keyword completion
"
"
" Replacing text in a file
" help :s
" :%s/<replaced-string>/<replacing-string>/g<CR>
"
" :help tutor
" The above command actually maps to the program 'vimtutor'
"
"
nmap <F1> :ls<CR>:e #
nmap <C-Q> :ls<CR>:e #
nmap <C-C> :nohlsearch<C-M>
nmap <C-S> :shell<C-M>

set bs=2
"@manju 05/26/04
"~/.vim/colors 
"Screen shots of various colorschemes
"http://www-2.cs.cmu.edu/~maverick/VimColorSchemeTest/index-c.html
"Colorschemes to choose from the packed one's (good ones) -- 
"pablo
"koehler
"desert
"darkblue 
"torte
"elflord (best when doing perl)
"murphy
"zellner 
"
"let g:lightline = {
"			\ 'colorscheme': 'onedark',
"			\ }
"let g:onedark_termcolors=256
colorscheme dracula
":colorscheme navajo-night
"downloaded one's --
"astronaut 
"xterm16 
"elflord
"oceandeep
"dawn
"dusk
"oceanblack
"Bookstream 
"tomatosoup 
"denim
"darkslategray
"navajo 
"matrix

" vim plugins - take over the functionality of vim macros
filetype plugin on " turning on the file type plugin

" ctags.vim - 'bar' at the bottom of my view window, showing the file-name,
" row number, col number
" Before sourcing the script do:
    let g:ctags_path='/usr/local/bin/ctags'
    let g:ctags_args='-I __declspec+'
"        (or whatever other additional arguments you want to pass to ctags)
    let g:ctags_title=1		" To show tag name in title bar.
    let g:ctags_statusline=1	" To show tag name in status line.
"    let generate_tags=1	" To start automatically when a supported
"				" file is opened.

imap <C-E> <Esc>:w<CR>li
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif
nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>r :!ruby % --name <C-R>=expand("<cword>")<CR><CR>
" nmap <C-]> :cs find g <C-R>=expand("<cword>")<CR><CR>

set viminfo='100,f1,<1000,\/50,:20,%,n~/.viminfo,!
set tabstop=8
set noexpandtab
"set tags=/home/akshat/nssrc/main/TOT/vpnc/mac/10.4/Source/tags

" used by show block name plugin
" autocmd FuncUndefined * exe 'runtime autoload/' . expand('<afile>') . '.vim'
" au CursorHold * call ShowBlockName('quiet')
" map <silent> g[[ :call ShowBlockName()<CR>
" map <silent> g]] :call ShowBlockName('OFF')<CR>
" nnoremap [d :call ShowBlockName('[d')<CR>
" nnoremap [i :call ShowBlockName('[i')<CR>
nmap <C-\>p :call ShowBlockName()<CR>


imap <C-K> <Esc>lbi
imap <C-L> <Esc>lwi
imap <C-O> <Esc>:w<CR>li
imap <C-J> <Esc>ldwi
imap <C-Z> <Esc>ui
imap <C-\>] <Esc>l]}i
" imap <C-\>[ <Esc>l[{i
imap <C-\>( <Esc>l[(i
imap <C-\>) <Esc>l])i
imap <C-\>p <Esc>l%i
nmap <C-\>a :ts <C-R>=expand("<cword>")<CR><CR>
cs add cscope.out
"sutocmd FuncUndefined * exe 'runtime autoload/' . expand('<afile>') . '.vim'ilent! ruby nil
let g:netrw_ftp_cmd = 'pftp'
au BufNewFile,BufRead *.less set filetype=less

autocmd FileType php setlocal noeol binary fileformat=dos

" execute pathogen#infect()
let g:gitgutter_enabled = 0
set noerrorbells
set visualbell
set t_vb=
nore ; :
nore , ;
let g:ctrlp_cmd = 'CtrlP .'
let g:ctrlp_by_filename = 1
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.hg$\|\.svn$\|bvFiles$\|log$\|tmpFiles$\|tmpblogs$\|tmp$\|store$\|phantomjs$\|node_modules$\|logs$\|db$',
  \ 'file': '\.exe$\|\.so$\|\.dll$\|\.zip$\|\.log$',
  \ }
set tabstop=2
set notimeout
set smartindent
set smarttab
set autoindent
set shiftwidth=2

set runtimepath^=~/.vim/bundle/ctrlp.vim
