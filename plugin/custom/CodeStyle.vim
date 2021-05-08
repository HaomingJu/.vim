"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"vim-autoformat 插件配置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" 配置的相关选项参照网址 "http://clang.llvm.org/docs/ClangFormatStyleOptions.html#"


map <F7> :ClangFormat<CR>

let g:clang_format#style_options = {
            \ "Standard": "C++11",
            \ "BreakBeforeBraces": "Allman",
            \ "AlignAfterOpenBracket": "Align",
            \ "SpaceBeforeAssignmentOperators": "true",
            \ "AlignTrailingComments": "true",
            \ "AllowAllParametersOfDeclarationOnNextLine": "false",
            \ "AllowShortCaseLabelsOnASingleLine": "false",
            \ "AllowShortIfStatementsOnASingleLine": "false",
            \ "AllowShortLoopsOnASingleLine": "false",
            \ "AlwaysBreakTemplateDeclarations": "true",
            \ "BinPackArguments": "false",
            \ "BinPackParameters": "false",
            \ "BreakBeforeBinaryOperators": "None",
            \ "BreakConstructorInitializersBeforeComma": "true",
            \ "MaxEmptyLinesToKeep": 1,
            \ "ReflowComments": "false",
            \ "SpaceAfterCStyleCast": "true",
            \ "ColumnLimit" : 120,
            \ "IndentWrappedFunctionNames": "true",
            \ "DerivePointerAlignment": "false",
            \ "AccessModifierOffset": -2,
            \ "AllowShortFunctionsOnASingleLine": "Empty",
            \ "PointerAlignment": "Left",
            \ "SpaceBeforeParens": "Never",
            \ "AlignConsecutiveDeclarations": "true",
            \ "NamespaceIndentation": "All",
            \ "FixNamespaceComments": "true"
            \}
