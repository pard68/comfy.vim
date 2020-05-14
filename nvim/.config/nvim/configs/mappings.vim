"###################################################################################
"       __  ___                      _                    
"      /  |/  /____ _ ____   ____   (_)____   ____ _ _____
"     / /|_/ // __ `// __ \ / __ \ / // __ \ / __ `// ___/
"    / /  / // /_/ // /_/ // /_/ // // / / // /_/ /(__  ) 
"   /_/  /_/ \__,_// .___// .___//_//_/ /_/ \__, //____/  
"                 /_/    /_/               /____/         
"
"###################################################################################

"***********************************************************************************

" Main Vim Keybinds

"***********************************************************************************


" Set leader to space bar
let mapleader = " "
let maplocalleader = " "

" Window Navigation
" Navigate to left window.
nnoremap <C-h> <C-w>h
" Navigate to down window.
nnoremap <C-j> <C-w>j
" Navigate to top window.
nnoremap <C-k> <C-w>k
" Navigate to right window.
nnoremap <C-l> <C-w>l
" Horizontal split then move to bottom window.
nnoremap <Leader>- <C-w>s
" Vertical split then move to right window.
nnoremap <Leader>\| <C-w>v<C-w>l
" Cycle tabs with Tab and Shift+Tab
nnoremap<silent> <Tab> :bnext<CR>
nnoremap<silent> <S-Tab> :bprevious<CR>
" Kill buffer with Space+bk
nnoremap<silent> <Space>bk :bdelete<CR> 

"Faster ESC.
inoremap jk <ESC>
inoremap kj <ESC>

" Indent controls
" Reselect text ater indent/unindent.
vnoremap < <gv
vnoremap > >gv
" Tab to indent in visual mode.
vnoremap <Tab> >gv
" Shift+Tab to unindent in visual mode.
vnoremap <S-Tab> <gv

" Text alignment
nnoremap <Leader>Al :left<CR>
nnoremap <Leader>Ac :center<CR>
nnoremap <Leader>Ar :right<CR>
vnoremap <Leader>Al :left<CR>
vnoremap <Leader>Ac :center<CR>
vnoremap <Leader>Ar :right<CR>

" Hard Mode: Unmap arrow keys
no <down> <Nop>
no <up> <Nop>
no <left> <Nop>
no <right> <Nop>
ino <down> <Nop>
ino <up> <Nop>
ino <left> <Nop>
ino <right> <Nop>
vno <down> <Nop>
vno <up> <Nop>
vno <left> <Nop>
vno <right> <Nop>

nmap <leader>y "+y<CR>
nmap <leader>p "+o<CR>

" stop highlighting search results
nnoremap <leader><space> :nohlsearch<CR>

" Insert date/time stamps
nmap <leader>d :put =strftime('%Y/%m/%d')<CR>
nmap <leader>d- :put =strftime('%Y-%m-%d')<CR>
nmap <leader>d. :put =strftime('%Y.%m.%d')<CR>
nmap <leader>t :put =strftime('%T')<CR>
nmap <leader>dt :put =strftime('%Y/%m/%d - %T (%Z)')<CR>
nmap <leader>d-t :put =strftime('%Y-%m-%d - %T (%Z)')<CR>
nmap <leader>d.t :put =strftime('%Y.%m.%d - %T (%Z)')<CR>

"***********************************************************************************

" Plugin specific keybinds

"***********************************************************************************
 
" COC Keybinds
" Remap keys for gotos
map <leader>cd <Plug>(coc-definition)
nmap <leader>ct <Plug>(coc-type-definition)
nmap <leader>ci <Plug>(coc-implementation)
map <leader>cr <Plug>(coc-references)
" Remap for rename current word
nmap <leader>crn <Plug>(coc-rename)
" Remap for format selected region
xmap <leader>cf <Plug>(coc-format-selected)
nmap <leader>cf <Plug>(coc-format-selected)
" Fix current line
nmap <leader>cfl  <Plug>(coc-fix-current)
" Using CocList
" Show all diagnostics
nnoremap  <Leader>cdi  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap  <Leader>ce  :<C-u>CocList extensions<cr>
" Show commands
nnoremap  <Leader>cc  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <Leader>co  :<C-u>CocList outline<cr>
" Completion keybinds

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

" shift+tab cycles backwards 
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Enter to confirm completion
inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"


" Git keybinds
" Git status
nnoremap  <Leader>gs  :Gstatus<cr>
" Git diff in split window
nnoremap  <Leader>gd  :Gdiffsplit<cr>
" Git commit
nnoremap  <Leader>gc  :Gcommit<cr>
" Git push 
nnoremap  <Leader>gP  :Gpush<cr>
" Git pull 
nnoremap  <Leader>gp  :Gpull<cr>
" Git move 
nnoremap  <Leader>gm  :Gmove<cr>
" Git merge 
nnoremap  <Leader>gM  :Gmerge<cr>
" browse current file on web
nnoremap  <Leader>gb  :Gbrowse<cr>
" browse current line on web
nnoremap  <Leader>gbl  :CocCommand git.browserOpen<cr>
" View chunk information in preview window. 
nnoremap  <Leader>gh  :CocCommand git.chunkInfo<cr>
" View commit information in preview window. 
nnoremap  <Leader>gsc  :CocCommand git.showCommit<cr>
" Toggle git gutter sign columns
nnoremap  <Leader>gg  :CocCommand git.toggleGutters<cr>
" Lazygit
nnoremap <silent> <Leader>lg :call ToggleLazyGit()<CR>


" Vista
" Floating tag finder
nnoremap  <Leader>ft  :Vista finder coc<cr>
" Opens tagbar on right side of screen
nmap <F8> :Vista!!<CR>


" Lazydocker
nnoremap <silent> <Leader>ld :call ToggleLazyDocker()<CR>

" Vimtex
nmap <silent> <Leader>lc :VimtexCompile<cr>
vmap <silent> <Leader>ls :VimtexCompileSelected<cr>
nmap <silent> <Leader>li :VimtexInfo<cr>
nmap <silent> <Leader>lt :VimtexTocToggle<cr>
nmap <silent> <Leader>lv :VimtexView<cr>


" Markdown preview
nmap <Leader>md <Plug>MarkdownPreviewToggle


" vim buffest
nmap <leader>1 <Plug>BuffetSwitch(1)
nmap <leader>2 <Plug>BuffetSwitch(2)
nmap <leader>3 <Plug>BuffetSwitch(3)
nmap <leader>4 <Plug>BuffetSwitch(4)
nmap <leader>5 <Plug>BuffetSwitch(5)
nmap <leader>6 <Plug>BuffetSwitch(6)
nmap <leader>7 <Plug>BuffetSwitch(7)
nmap <leader>8 <Plug>BuffetSwitch(8)
nmap <leader>9 <Plug>BuffetSwitch(9)
nmap <leader>0 <Plug>BuffetSwitch(10)
noremap <Tab> :bn<CR>
noremap <S-Tab> :bp<CR>
noremap <Leader><Tab> :Bw<CR>
noremap <Leader><S-Tab> :Bw!<CR>
noremap <C-t> :tabnew split<CR>

" tiler
nmap <C-W>n <plug>TilerNew
nmap <C-W>c <plug>TilerClose
nmap <C-W>. <plug>TilerRotateForwards
nmap <C-W>, <plug>TilerRotateBackwards

nmap <C-w><space> <Plug>TilerZoom
nmap <C-Space> <Plug>TilerFocus

nmap <C-W>k <Plug>TilerAddMaster
nmap <C-W>j <Plug>TilerDelMaster
nmap <C-W>l <Plug>TilerRotateLayoutR
nmap <C-W>h <Plug>TilerRotateLayoutL

" ----------------------------------------------------------------------------
" -- leader mappings ---------------------------------------------------------
" ----------------------------------------------------------------------------

" -- file --------------------------------------------------------------------
augroup dirvish_config
  autocmd!
  " Map `t` to open in new tab.
  autocmd FileType dirvish
    \  nnoremap <silent><buffer> t :call dirvish#open('tabedit', 0)<CR>
    \ |xnoremap <silent><buffer> t :call dirvish#open('tabedit', 0)<CR>

  " Map `gr` to reload.
  autocmd FileType dirvish nnoremap <silent><buffer>
    \ gr :<C-U>Dirvish %<CR>

  " Map `gh` to hide dot-prefixed files.  Press `R` to "toggle" (reload).
  autocmd FileType dirvish nnoremap <silent><buffer>
    \ gh :silent keeppatterns g@\v/\.[^\/]+/?$@d _<cr>:setl cole=3<cr>
augroup END

nnoremap <leader>f :Rg!<CR>
nnoremap <leader>ff :Files!<CR>
nnoremap <leader>fl :BLines!<CR>
nnoremap <leader>fc :BCommits!<CR>

nmap <leader>wg :Goyo<CR>

nmap f <Plug>(coc-smartf-forward)
nmap F <Plug>(coc-smartf-backward)
nmap ; <Plug>(coc-smartf-repeat)
nmap , <Plug>(coc-smartf-repeat-opposite)

"""""""""""""""""
"Comfy-Scroll   "
"""""""""""""""""
noremap <silent> <ScrollWheelDown> :call comfortable_motion#flick(40)<CR>
noremap <silent> <ScrollWheelUp>   :call comfortable_motion#flick(-40)<CR>
