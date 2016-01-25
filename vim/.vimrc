" Interface
syntax enable	"syntax highlighting
set number		"show line numbering
set so=7		"leave some lines when scrolling


" Indent
set tabstop=4
set smartindent autoindent

" Search
set incsearch	"search as you type
set hlsearch	"highlight search
set ignorecase	"ignore case when searching
set smartcase

" Behaviour
set mouse=a		"enable mouse
set wildmenu	"enable autocompletion

" Backup files
set backup
set undofile
set backupdir=~/.vim/backup
set undodir=~/.vim/undo
set directory=~/.vim/tmp


" Sage is just python with math
autocmd BufRead,BufNewFile *.sage,*.pyx,*.spyx set filetype=python
