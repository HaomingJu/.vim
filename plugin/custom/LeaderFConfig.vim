" 设置LeaderF插件
noremap <C-p> :LeaderfFile<CR>
noremap <C-f> :LeaderfBufTag<CR>
noremap <C-i> :LeaderfMru<CR>
noremap <Leader>h :LeaderfHistoryCmd<CR>

noremap <C-@> :LeaderfBuffer<CR>


let g:Lf_HideHelp = 1
let g:Lf_WindowHeight=0.3
let g:Lf_StlColorscheme='powerline'
let g:Lf_ShowDevIcons=1
let g:Lf_HistoryNumber=1000
let g:Lf_DefaultExternalTool='ag'

let g:Lf_WindowPosition = 'popup'
let g:Lf_PreviewInPopup = 1
let g:Lf_WildIgnore = {
            \'dir': ['.git', 'build', '*output*'],
            \ 'file': ['*.o', '*.so', '*.py[co]', 'compile_commands.json']
            \}
