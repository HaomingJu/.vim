"Coc 插件

call coc#add_extension('coc-json', 'coc-cmake', 'coc-clangd', 'coc-snippets', 'coc-tsserver', 'coc-python', 'coc-html')

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
