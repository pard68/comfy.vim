
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


"-----------------------------------------------------------------------------
"-- completions --------------------------------------------------------------
"-----------------------------------------------------------------------------
" Snippets for ultisnips
Plug 'honza/vim-snippets'

" Auto pairs
Plug 'jiangmiao/auto-pairs'

" COC
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Emoji support
Plug 'junegunn/vim-emoji'


"-----------------------------------------------------------------------------
"-- display ------------------------------------------------------------------
"-----------------------------------------------------------------------------
" Custom start page
Plug 'mhinz/vim-startify'

" Status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" forest night theme
Plug 'sainnhe/vim-color-forest-night'

" Add DevIcons
Plug 'ryanoasis/vim-devicons'

" Window Tiling
Plug 'zhamlin/tiler.vim'

" The below is for "writing" mode
" goyo distraction free mode
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'


"-----------------------------------------------------------------------------
"-- file ---------------------------------------------------------------------
"-----------------------------------------------------------------------------
Plug 'tpope/vim-eunuch'
"Plug 'tpope/vim-vinegar'
"Plug 'junegunn/fzf', { 'do': { -> fzf#install()  } }
Plug 'junegunn/fzf.vim'

"Dirvish
Plug 'justinmk/vim-dirvish'
Plug 'bounceme/remote-viewer'
Plug 'kristijanhusak/vim-dirvish-git'
"Plug 'fsharpasharp/vim-dirvinist'

Plug 'chrisbra/Recover.vim'


"-----------------------------------------------------------------------------
"-- git ----------------------------------------------------------------------
"-----------------------------------------------------------------------------
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-rhubarb'


"-----------------------------------------------------------------------------
"-- qol ----------------------------------------------------------------------
"-----------------------------------------------------------------------------
" Comfy scroll
Plug 'yuttie/comfortable-motion.vim'

" Vim Surround
Plug 'tpope/vim-surround'

" Vim session saving
Plug 'tpope/vim-obsession'

"A llows viewing contents of register from " or @ in normal mode and Ctrl R in insert mode
Plug 'junegunn/vim-peekaboo'

" Markdown Preview
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }

" Comment quickly
Plug 'tpope/vim-commentary'

" Tagbar
Plug 'liuchengxu/vista.vim'

" Unimpaired
Plug 'tpope/vim-unimpaired'

Plug 'bagrat/vim-buffet'

" Seemless navigation between vim and tmux
Plug 'christoomey/vim-tmux-navigator'

" vim chords

" Leader Guide, like emacs' guide
" https://github.com/hecal3/vim-leader-guide
" This is a wip, going to require a sit-down to review
" keymappings and register them with this plugin.
"Plug 'hecal3/vim-leader-guide'

"-----------------------------------------------------------------------------
"-- syntax -------------------------------------------------------------------
"-----------------------------------------------------------------------------
" web dev *shudders*
Plug 'pangloss/vim-javascript'
Plug 'othree/html5.vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'ap/vim-css-color'

" Language Packs
Plug 'sheerun/vim-polyglot'

" LaTeX support
Plug 'lervag/vimtex'

" tmux.conf syntax highlighting and other such goodies
Plug 'tmux-plugins/vim-tmux'

" Tmuxline.vim, sync tmux and vim lines
Plug 'edkolev/tmuxline.vim'

"" Indent guides
Plug 'Yggdroot/indentLine'

" Tabular auto-align
Plug 'godlygeek/tabular'

Plug 'tpope/vim-repeat'

Plug 'tommcdo/vim-exchange'

" Go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }


"-----------------------------------------------------------------------------
"-- vimwiki ------------------------------------------------------------------
"-----------------------------------------------------------------------------
 " A personal wiki for Vim
Plug 'vimwiki/vimwiki'

 " todo addon for vimwiki
Plug 'tbabej/taskwiki'

 " taskwarrior support for vimwiki
Plug 'farseer90718/vim-taskwarrior'

 " Color support for charts
Plug 'powerman/vim-plugin-AnsiEsc'

 " taskwiki file navigation
Plug 'majutsushi/tagbar'


call plug#end()
