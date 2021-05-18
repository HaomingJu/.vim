function! SwitchInputMethod()
    call job_start('fcitx-remote -c')
endfunc

"autocmd InsertLeave * :silent !fcitx-remote -c
"autocmd BufCreate *  :silent !fcitx-remote -c
"autocmd BufEnter *  :silent !fcitx-remote -c
"autocmd BufLeave *  :silent !fcitx-remote -c
"
autocmd InsertLeave * :call SwitchInputMethod()
autocmd BufCreate *  :call SwitchInputMethod()
autocmd BufEnter *  :call SwitchInputMethod()


"autocmd FileType cpp,hpp,h,c :call coc#config("suggest.autoTrigger", "none")
"autocmd FileType vim,python,tex :call coc#config("suggest.autoTrigger", "always")
