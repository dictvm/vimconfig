call plug#begin('~/.config/nvim/plugged')

Plug 'chase/vim-ansible-yaml'
Plug 'editorconfig/editorconfig-vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'monochromegane/the_platinum_searcher'
Plug 'edkolev/tmuxline.vim'
Plug 'DataWraith/auto_mkdir'
Plug 'vim-scripts/groovy.vim'
Plug 'roxma/vim-tmux-clipboard'
Plug 'tpope/vim-obsession'
Plug 'ngmy/vim-rubocop'
Plug 'jiangmiao/auto-pairs'
Plug 'godlygeek/tabular'
Plug 'tpope/vim-fugitive'
Plug 'hashivim/vim-terraform'

" Colorschemes
Plug 'tomasr/molokai'
Plug 'dracula/vim'
Plug 'liuchengxu/space-vim-dark'
" Plug 'AnsiEsc.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sjl/badwolf'
Plug 'tomasr/molokai'
Plug 'morhetz/gruvbox'
Plug 'junegunn/limelight.vim'
Plug 'mkarmona/colorsbox'
Plug 'romainl/Apprentice'
Plug 'Lokaltog/vim-distinguished'
Plug 'chriskempson/base16-vim'
Plug 'w0ng/vim-hybrid'
Plug 'AlessandroYorba/Sierra'
Plug 'effkay/argonaut.vim'
Plug 'atelierbram/Base2Tone-vim'

" Utility
Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'
Plug 'ervandew/supertab'
" Plug 'BufOnly.vim'
Plug 'wesQ3/vim-windowswap'
Plug 'SirVer/ultisnips'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf'
Plug 'godlygeek/tabular'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'benmills/vimux'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'gilsondev/searchtasks.vim'
Plug 'tpope/vim-dispatch'
Plug 'Shougo/deoplete.nvim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'majutsushi/tagbar'

" Generic Programming Support
Plug 'jakedouglas/exuberant-ctags'
Plug 'stephpy/vim-yaml'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
Plug 'honza/vim-snippets'
Plug 'Townk/vim-autoclose'
Plug 'tomtom/tcomment_vim'
Plug 'tobyS/vmustache'
Plug 'janko-m/vim-test'
Plug 'maksimr/vim-jsbeautify'
Plug 'vim-syntastic/syntastic'
Plug 'neomake/neomake'
Plug 'w0rp/ale'

" Python
Plug 'zchee/deoplete-jedi'
Plug 'google/yapf'
Plug 'python-mode/python-mode'

" Git
Plug 'tpope/vim-fugitive'

" Markdown / Writing
Plug 'reedes/vim-pencil'
Plug 'tpope/vim-markdown'
Plug 'jtratner/vim-flavored-markdown'

call plug#end()

" Syntastic Configuration
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1

" Vim-Airline Configuration
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='hybrid'
let g:hybrid_custom_term_colors = 1
let g:hybrid_reduced_contrast = 1
" Neocomplete Settings
let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_keyword_length = 3

" Fzf Configuration
" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" Theme
set background=dark

" Default fzf layout
" - down / up / left / right
let g:fzf_layout = { 'down': '~40%' }

" In Neovim, you can set up fzf window using a Vim command
let g:fzf_layout = { 'window': 'enew' }
let g:fzf_layout = { 'window': '-tabnew' }

" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" Markdown Syntax Support
augroup markdown
    au!
    au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown

" General
colorscheme dracula
set nocompatible                  " We don't care about vi
syntax on                         " Enable syntax highlighting
set number                        " Show line numbers
set nohidden
"set relativenumber
set numberwidth=5
set encoding=utf-8
" set linebreak                     " Break lines at word (requires Wrap lines)
set showbreak=->                  " Wrap-broken line prefix
set textwidth=80                  " Line wrap (number of cols)
set showmatch                     " Highlight matching brace
set visualbell                    " Use visual bell (no beeping)

" Search
set hlsearch                      " Highlight all search results
set smartcase                     " Enable smart-case search
set ignorecase                    " Always case-insensitive
set incsearch                     " Searches for strings incrementally

" Format
set autoindent                    " Auto-indent new lines
set expandtab                     " Use spaces instead of tabs
set shiftwidth=2                  " Number of auto-indent spaces
set smartindent                   " Enable smart-indent
set smarttab                      " Enable smart-tabs
set softtabstop=2                 " Number of spaces per Tab
set tabstop=2
set listchars=tab:▸\ ,eol:¬

" Highlight trailing whitespace
:highlight ExtraWhitespace ctermbg=grey guibg=grey

" Filetypes
filetype on                       " Enable filetype detection
filetype plugin on                " Enable filetype-specific plugins
filetype indent on                " Enable filetype-specific indenting

" Advanced
set ruler                         " Show row and column ruler information
set cmdheight=2                   " Command line height
" set backupdir=~/tmp             " Backup directories
set undolevels=1000               " Number of undo levels
set backspace=indent,eol,start    " Backspace behaviour
set undofile                      " Enable undo
set undodir=$HOME/.config/nvim/undo  " Undo store

" Remove trailing whitespace
autocmd BufWritePre * %s/\s\+$//e

" Splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitbelow
set splitright

" Tab triggers buffer-name auto-completion
set wildchar=<Tab> wildmenu wildmode=full

let mapleader = ","

map <Leader>t :CommandT<Return>
map <Leader>a :bprev<Return>
map <Leader>s :bnext<Return>
map <Leader>d :bd<Return>
map <Leader>f :b

" Show the buffer number in the status line.
set laststatus=2 statusline=%02n:%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P

" Strip trailing whitespace
fun! <SID>StripTrailingWhitespaces()
   let l = line(".")
   let c = col(".")
   %s/\s\+$//e
   call cursor(l, c)
endfun

set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_working_path_mode='ra'
let g:ctrlp_cmd = 'CtrlPMixed'
set autochdir

" Use Tab for autocompletion
function! Tab_Or_Complete()
  if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
    return "\<C-P>"
  else
    return "\<Tab>"
  endif
endfunction
:inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>

" nerdtree
nmap " :NERDTreeToggle<CR>
map <C-n> :NERDTreeToggle<CR>

" comfortable motion
let g:comfortable_motion_scroll_down_key = "j"
let g:comfortable_motion_scroll_up_key = "k"

"Max out the height of the current split
" ctrl + w _
"
" "Max out the width of the current split
" ctrl + w |
"
" "Normalize all split sizes, which is very handy when resizing terminal
" ctrl + w =
"
" "Swap top/bottom or left/right split
" Ctrl+W R
"
" "Break out current window into a new tabview
" Ctrl+W T
"
" "Close every window in the current tabview but the current one
" Ctrl+W o
