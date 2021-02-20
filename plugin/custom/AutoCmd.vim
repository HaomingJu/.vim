function! SwitchInputMethod()
    silent !fcitx-remote -c
endfunc

"autocmd InsertLeave * :silent !fcitx-remote -c
"autocmd BufCreate *  :silent !fcitx-remote -c
"autocmd BufEnter *  :silent !fcitx-remote -c
"autocmd BufLeave *  :silent !fcitx-remote -c
"
autocmd InsertLeave * :call SwitchInputMethod()
autocmd BufCreate *  :call SwitchInputMethod()