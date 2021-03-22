" 函数区
" 使得vim支持Alt组合键
function! Terminal_MetaMode(mode)
    if has('nvim') || has('gui_running')
        return
    endif
    function! s:metacode(mode, key)
        if a:mode == 0
            exec "set <M-".a:key.">=\e".a:key
        else
            exec "set <M-".a:key.">=\e]{0}".a:key."~"
        endif
    endfunc
    for i in range(10)
        call s:metacode(a:mode, nr2char(char2nr('0') + i))
    endfor
    for i in range(26)
        call s:metacode(a:mode, nr2char(char2nr('a') + i))
        call s:metacode(a:mode, nr2char(char2nr('A') + i))
    endfor
    if a:mode != 0
        for c in [',', '.', '/', ';', '[', ']', '{', '}']
            call s:metacode(a:mode, c)
        endfor
        for c in ['?', ':', '-', '_']
            call s:metacode(a:mode, c)
        endfor
    else
        for c in [',', '.', '/', ';', '{', '}']
            call s:metacode(a:mode, c)
        endfor
        for c in ['?', ':', '-', '_']
            call s:metacode(a:mode, c)
        endfor
    endif
    set ttimeout
    if $TMUX != ''
        set ttimeoutlen=30
    elseif &ttimeoutlen > 80 || &ttimeoutlen <= 0
        set ttimeoutlen=30
    endif
endfunc



" 依据时间选择颜色主题 8:00-18:00 light 18:00-8:00 dark
function! SwitchColor()
    " jackguo380/vim-lsp-cxx-highlight 配置变量, C++变量颜色渲染
    let g:lsp_cxx_hl_use_text_props = 1
    set t_Co=256
    let colorscheme_time=strftime("H")
    if colorscheme_time < 8
        "使用molakai配色方案
        let g:molokai_original=1
        colorscheme molokai
        set background=dark
    elseif colorscheme_time < 18
        "使用solarized配色方案
        colorscheme solarized
        set background=light
    else
        "使用molakai配色方案
        let g:molokai_original=1
        colorscheme molokai
        set background=dark
    endif
endfunc
