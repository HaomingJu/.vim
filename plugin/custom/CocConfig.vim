"Coc 插件

call coc#add_extension('coc-json', 'coc-cmake', 'coc-snippets', 'coc-tsserver', 'coc-python', 'coc-html', 'coc-translator', 'coc-pairs')

" Coc补全, Tab触发
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

" 取消<C-e>原有功能, 将其置为expand展开功能
map <C-e> <NOP>
inoremap <silent><expr> <C-e>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

let g:coc_snippet_next = '<tab>'

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
				\: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" coc-translator 英文翻译
nmap <Leader>t <Plug>(coc-translator-p)
vmap <Leader>t <Plug>(coc-translator-pv)

" 跳转至定义处
nmap <Leader>d <Plug>(coc-definition)
"nmap <Leader>c <Plug>(coc-declaration)
"nmap <Leader>i <Plug>(coc-implementation)
