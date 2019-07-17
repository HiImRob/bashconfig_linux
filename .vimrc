" Important Stuff
set nocompatible              "must be first line

if has('gui_running')
    colorscheme slate
    set background=light
else
    colorscheme default
    set background=dark
endif

execute pathogen#infect()     
                              "ensures package engine to work

" General Stuff
filetype on
filetype plugin on            "detects file types    
filetype indent on

syntax on                     "syntax highlighting
set mouse=a                   "enables mouse

"set viewoptions=folds,options,cursor,unix,slash 
                              "better unix to windows
set virtualedit=onemore       "allow for cursor beyond last
set history=1000              "store a ton of history
set undolevels=2000
set spell                     "spell checking
set backup                    "backups are nice
set backupdir=~/.vim/backup/
set directory=~/.vim/backup/
set writebackup

" Vim UI
" color solarized               "load a colorscheme
set tabpagemax=15             "only show 15 tabs
set showmode                  "display the current mode
set cursorline                "highlight current line
hi cursorline guibg=grey  
                              "highlight bg color of current line
hi CursorColumn guibg=grey
                              "highlight cursor
set ruler                     "show the ruler
"  set rulerformat=%30(%=\\:b%n%y%m%r%w\\ %l,%c%V\\ %P%)
                              "a ruler on steroids
set showcmd                   "show partial commands in status line and
                              "selected characters/lines in visual mode

set backspace=indent,eol,start 
                              "backspace for dummys
set linespace=0               "No extra spaces between rows
set number                    "Line numbers on
set showmatch                 "show matching brackets/parenthesis
set incsearch                 "find as you type search
set hlsearch                  "highlight search terms
set ignorecase                "case insensitive search
set smartcase                 "case sensitive when uc present
set wildmenu                  "show list instead of just completing
set wildmode=list:longest,full
                              "command <Tab> completion, list matches, 
                              "then longest common part, then all.
set scrolljump=5              "lines to scroll when cursor leaves screen
set scrolloff=3               "minimum lines to keep above and below cursor
set foldenable                "auto fold code
set gdefault                  "the /g flag on :s substitutions by default
"set list
"set listchars=tab:>.,trail:.,extends:\#,nbsp:. 
                              "Highlight problematic whitespace

" Formatting
set nowrap                    "wrap long lines
"set autoindent                "indent at the same level of the previous line
set ai!
set shiftwidth=4              "use indents of 4 spaces
"set expandtab                 "tabs are spaces, not tabs
set expandtab                 "no tab characters, spaces instead except with makefiles
autocmd BufReadPost,FileReadPost,BufNewFile [Mm]ake{file,} setlocal noexpandtab
set tabstop=4                 "an indentation every four columns
set softtabstop=4             "let backspace delete indent
set smarttab
set pastetoggle=<F12>         "pastetoggle (sane indentation on pastes)
set listchars+=precedes:<,extends:>
                              "when nowrap is set-has carroots when a line
                              "extends beyond the edge

" Convenience
source $VIMRUNTIME/mswin.vim
behave mswin
"set keymodel-=stopsel

" Plugins
let g:gitgutter_enabled = 1
let g:SuperTabNoCompleteAfter = ['^', ',', '\s']
let g:SuperTabClosePreviewOnPopupClose = 1
let g:SuperTabDefaultCompletionType = "<c-n>"
let g:SuperTabContextDefaultCompletionType = "<c-n>"

let g:jedi#popup_on_dot = 0

" If you prefer the Omni-Completion tip window to close when a selection is
" made, these lines close it on movement in insert mode or when leaving
" insert mode
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

set splitbelow
set splitright

if &term =~ '^screen'
    " tmux will send xterm-style keys when its xterm-keys option is on
    execute "set <xUp>=\e[1;*A"
    execute "set <xDown>=\e[1;*B"
    execute "set <xRight>=\e[1;*C"
    execute "set <xLeft>=\e[1;*D"
endif

inoremap <NL> <Esc>mz:SlimuxREPLSendLine<CR>`za
nnoremap <NL> mz:SlimuxREPLSendLine<CR>`za
vnoremap <NL> mz:SlimuxREPLSendLine<CR>`za

inoremap <C-N> <Esc>:tabnew<CR>i<NL><NL><NL>
nnoremap <C-N> <Esc>:tabnew<CR>i
vnoremap <C-N> <Esc>:tabnew<CR>i

"autocmd BufNewFile * $r ~/proj/learnpython/newline.txt
autocmd InsertEnter * $r ~/.vim//newline.nlhx
autocmd BufWritePre * %s#\($\n\s*\)\+\%$##

"inoremap <ESC>[1;3D <ESC>I
"inoremap <ESC>[1;3C <ESC>A
"vnoremap <ESC>[1;3D <ESC>I
"vnoremap <ESC>[1;3C <ESC>A
"nnoremap <ESC>[1;3D <ESC>I
"nnoremap <ESC>[1;3C <ESC>A

set completeopt-=preview
