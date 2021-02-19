autocmd InsertLeave * :silent !fcitx-remote -c
autocmd BufCreate *  :silent !fcitx-remote -c
autocmd BufEnter *  :silent !fcitx-remote -c
autocmd BufLeave *  :silent !fcitx-remote -c
