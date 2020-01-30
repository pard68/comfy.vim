
"#####################################################################################################
"                           ____     __                     _                 
"                          / __ \   / /  __  __   ____ _   (_)   ____    _____
"                         / /_/ /  / /  / / / /  / __ `/  / /   / __ \  / ___/
"                        / ____/  / /  / /_/ /  / /_/ /  / /   / / / / (__  ) 
"                       /_/      /_/   \__,_/   \__, /  /_/   /_/ /_/ /____/  
"                                              /____/
"######################################################################################################

" Install vim-plugged if not already installed
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
    silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin('~/.vim/plugged')

" Git wrapper
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-rhubarb'

" Nerd Commenter
Plug 'scrooloose/nerdcommenter'

" Code Snippets Engine
" Plug 'SirVer/ultisnips'

" Snippets for ultisnips
Plug 'honza/vim-snippets'

" Vim Surround
Plug 'tpope/vim-surround'

" Auto pairs
Plug 'jiangmiao/auto-pairs'

" Multiple Cursors
Plug 'terryma/vim-multiple-cursors'

"" Indent guides
Plug 'Yggdroot/indentLine'

" COC
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Smart completion (to work with CoC)
"Plug 'zxqfl/tabnine-vim'

" Custom start page
Plug 'mhinz/vim-startify'

" web dev *shudders*
Plug 'pangloss/vim-javascript'
Plug 'othree/html5.vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'ap/vim-css-color'

" Language Packs
Plug 'sheerun/vim-polyglot'

" Status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Tabular auto-align
Plug 'godlygeek/tabular'

" Comfy scroll
Plug 'yuttie/comfortable-motion.vim'

" Add DevIcons
Plug 'ryanoasis/vim-devicons'

" Tagbar
Plug 'liuchengxu/vista.vim'

" NERDTree
Plug 'scrooloose/nerdtree', { 'on': [ 'NERDTreeToggle', 'NERDTreeFind' ] }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" Emoji support
Plug 'junegunn/vim-emoji'

" goyo distraction free mode
Plug 'junegunn/goyo.vim'

" LaTeX support
Plug 'lervag/vimtex'

" dracula theme
" Plug 'dracula/vim', { 'as': 'dracula' }

" forest night theme
Plug 'sainnhe/vim-color-forest-night'

" Tmuxline.vim, sync tmux and vim lines
Plug 'edkolev/tmuxline.vim'

" Translator
Plug 'voldikss/vim-translator'

" Markdown Preview
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }

"A llows viewing contents of register from " or @ in normal mode and Ctrl R in insert mode
Plug 'junegunn/vim-peekaboo'

 " A personal wiki for Vim
 Plug 'vimwiki/vimwiki'

 " todo addon for vimwiki
 Plug 'tbabej/taskwiki'

 " Color support for charts
 Plug 'powerman/vim-plugin-AnsiEsc'

 " taskwiki file navigation
 Plug 'majutsushi/tagbar'

 " taskwarrior support for vimwiki
 Plug 'farseer90718/vim-taskwarrior'

call plug#end()
