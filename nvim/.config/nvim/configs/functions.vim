" REQUIRED FOR LAZYGIT
" Creates a floating window with a most recent buffer to be used
function! CreateCenteredFloatingWindow()
    let width = float2nr(&columns * 0.6)
    let height = float2nr(&lines * 0.6)
    let top = ((&lines - height) / 2) - 1
    let left = (&columns - width) / 2
    let opts = {'relative': 'editor', 'row': top, 'col': left, 'width': width, 'height': height, 'style': 'minimal'}

    let top = "╭" . repeat("─", width - 2) . "╮"
    let mid = "│" . repeat(" ", width - 2) . "│"
    let bot = "╰" . repeat("─", width - 2) . "╯"
    let lines = [top] + repeat([mid], height - 2) + [bot]
    let s:buf = nvim_create_buf(v:false, v:true)
    call nvim_buf_set_lines(s:buf, 0, -1, v:true, lines)
    call nvim_open_win(s:buf, v:true, opts)
    set winhl=Normal:Floating
    let opts.row += 1
    let opts.height -= 2
    let opts.col += 2
    let opts.width -= 4
    call nvim_open_win(nvim_create_buf(v:false, v:true), v:true, opts)
    autocmd BufWipeout <buffer> exe 'bwipeout '.s:buf
endfunction

" When term starts, auto go into insert mode
autocmd TermOpen * startinsert

" Turn off line numbers etc
autocmd TermOpen * setlocal listchars= nonumber norelativenumber

function! ToggleTerm(cmd)
    if empty(bufname(a:cmd))
        call CreateCenteredFloatingWindow()
        call termopen(a:cmd, { 'on_exit': function('OnTermExit') })
    else
        bwipeout!
    endif
endfunction

" Open Project
function! ToggleProject()
    call ToggleTerm('tmuxinator-fzf-start.sh')
endfunction

function! ToggleScratchTerm()
    call ToggleTerm('bash')
endfunction

function! ToggleLazyGit()
    call ToggleTerm('lazygit')
endfunction

function! ToggleLazyDocker()
    call ToggleTerm('lazydocker')
endfunction


function! OnTermExit(job_id, code, event) dict
    if a:code == 0
        bwipeout!
    endif
endfunction

" REQUIRED FOR LAZYGIT

" Word Count
function! WordCount()
    let currentmode = mode()
    if !exists("g:lastmode_wc")
        let g:lastmode_wc = currentmode
    endif
    " if we modify file, open a new buffer, be in visual ever, or switch modes
    " since last run, we recompute.
    if &modified || !exists("b:wordcount") || currentmode =~? '\c.*v' || currentmode != g:lastmode_wc
        let g:lastmode_wc = currentmode
        let l:old_position = getpos('.')
        let l:old_status = v:statusmsg
        execute "silent normal g\<c-g>"
        if v:statusmsg == "--No lines in buffer--"
            let b:wordcount = 0
        else
            let s:split_wc = split(v:statusmsg)
            if index(s:split_wc, "Selected") < 0
                let b:wordcount = str2nr(s:split_wc[11])
            else
                let b:wordcount = str2nr(s:split_wc[5])
            endif
            let v:statusmsg = l:old_status
        endif
        call setpos('.', l:old_position)
        return b:wordcount
    else
        return b:wordcount
    endif
endfunction

" fzf search netrw history
function! MyUniq(lst)
    return filter(a:lst, 'count(a:lst, v:val) == 1')
endfunction
command! -bang Netrwhist call fzf#run(fzf#wrap('netrw_dirhist',
    \ {'source': 
    \ !exists('g:netrw_dirhist_cnt')
    \   ?"tail -n +3 ".g:netrw_home.".netrwhist | cut -d \"'\" -f2- | rev | cut -d \"'\" -f2- | rev | awk '!seen[$0]++'"
    \   :MyUniq(map(range(1,g:netrw_dirhist_cnt), 'g:netrw_dirhist_{v:val}'))
    \ }, <bang>0))
