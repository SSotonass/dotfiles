" Install Vim Plug if not installed
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin()

Plug 'christoomey/vim-sort-motion'             " Sort object
Plug 'jiangmiao/auto-pairs'                    " Insert or delete brackets, parens, quotes in pair.
Plug 'neomake/neomake'                         " Used to run code linters
Plug 'scrooloose/nerdtree',                    " Filetree
      \ { 'on': 'NERDTreeToggle' }
Plug 'tmhedberg/SimpylFold'                    " Fold functions
Plug 'tpope/vim-commentary'                    " Comment objects
Plug 'tpope/vim-repeat'                        " Enable . repeating for more
Plug 'tpope/vim-surround'                      " Surround objects with anything
Plug 'yuttie/comfortable-motion.vim'           " Physics-based smooth scrolling
Plug 'christoomey/vim-tmux-navigator'          " Navigate seamlessly between vim and tmux
Plug 'junegunn/goyo.vim'                       " Destraction free writing
Plug 'craigemery/vim-autotag'                  " Autoupdate ctags
Plug 'junegunn/vim-easy-align'                 " Alignment on any character
Plug 'sickill/vim-pasta'                       " Context aware pasting
Plug 'Yggdroot/indentLine'                     " Indent guides
Plug 'wincent/loupe'                           " More resonable search settings
Plug 'mattn/gist-vim'                          " Create gist
Plug 'mattn/webapi-vim'                        " Interface to WEB APIs
Plug 'wincent/terminus'                        " Cursor shape change in insert and replace mode
                                               " Improved mouse support
                                               " Focus reporting (Reload buffer on focus if it has been changed externally )
                                               " Bracketed Paste mode

                                               " ABAP
Plug 'vim-scripts/ABAP.vim', 
      \ { 'for': 'abap' }

                                               " JAVASCRIPT
Plug 'jelera/vim-javascript-syntax',           " Enhanced JavaScript Syntax for Vim
      \ { 'for': ['javascript', 'javascript.jsx'] }
Plug 'othree/javascript-libraries-syntax.vim', " JavaScript highlighting
      \ { 'for': ['javascript', 'javascript.jsx'] }
Plug 'pangloss/vim-javascript',                " JavaScript highlighting
      \ { 'for': ['javascript', 'javascript.jsx'] }
Plug 'carlitux/deoplete-ternjs',               " The autocomplete dropdown
      \ { 'do': 'npm install -g tern', 
      \ 'for': ['javascript', 'javascript.jsx'] }
Plug 'othree/jspc.vim',                        " JavaScript Parameter Complete
      \ { 'for': ['javascript', 'javascript.jsx'] }

                                               " CSS
Plug 'ap/vim-css-color',                       " color colornames and codes
      \ { 'for': 'css' }

                                               " MARKDOWN
Plug 'plasticboy/vim-markdown',                " Markdown extras
      \ { 'for': 'markdown' }

                                               " TEXTOBJECTS
Plug 'kana/vim-textobj-entire'                 " Creates an object of the entire buffer
Plug 'kana/vim-textobj-indent'                 " Creates an object of the current indent level
Plug 'kana/vim-textobj-line'                   " Creates the line object to exclude whitespace before the line start
Plug 'kana/vim-textobj-user'                   " Enables the creation of new objects

                                               " AUTOCOMPLETE
Plug 'carlitux/deoplete-ternjs',               " The autocomplete dropdown
      \ { 'do': 'npm install -g tern',
      \ 'for': ['javascript', 'javascript.jsx'] }
Plug 'ternjs/tern_for_vim',                    " Tern server
      \ { 'do': 'npm install' }
Plug 'SirVer/ultisnips'                        " Snippet engine
Plug 'honza/vim-snippets'                      " Snippet library
Plug 'wokalski/autocomplete-flow'              " More autocomplete options
Plug 'fszymanski/deoplete-emoji'               " Completion of emoji codes
Plug 'wellle/tmux-complete.vim'                " Completion of words in adjacent tmux panes
Plug 'Shougo/deoplete.nvim',                   " Load last because of :UpdateReomotePlugins
      \ { 'do': ':UpdateRemotePlugins' }

                                               " FUZZY FILESEARCH
Plug 'junegunn/fzf', 
      \ { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

                                               " THEME AND STATUSLINE
Plug 'altercation/vim-colors-solarized'        " Solarized theme for vim
Plug 'vim-airline/vim-airline'                 " Status line configuration
Plug 'vim-airline/vim-airline-themes'          " Status line themes
Plug 'edkolev/tmuxline.vim'                    " Makes tmux status line match vim status line

                                               " GIT PLUGINS
Plug 'airblade/vim-gitgutter'                  " Shows changed lines compared to last git commit
Plug 'tpope/vim-fugitive'                      " Git wrapper

call plug#end()