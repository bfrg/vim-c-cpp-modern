" ==============================================================================
" Vim syntax file
" Language:        C Additions
" Original Author: Mikhail Wolfson <mywolfson@gmail.com>
" Maintainer:      bfrg <bfrg@users.noreply.github.com>
" Website:         https://github.com/bfrg/vim-cpp-modern
" Last Change:     Aug 25, 2019
"
" Extended C syntax highlighting including highlighting of user-defined
" functions.
"
" This syntax file is based on:
" https://github.com/octol/vim-cpp-enhanced-highlight
" ==============================================================================


" Highlight some additional keywords in the comments
syn keyword cTodo contained BUG NOTE


" Highlight function names
if !exists('g:cpp_no_function_highlight')
    syn match cUserFunction "\<\h\w*\>\(\s\|\n\)*("me=e-1 contains=cParen,cCppParen
    hi def link cUserFunction Function
endif


" Common ANSI-standard Names
syn keyword cAnsiName PRId8 PRIi16 PRIo32 PRIu64
syn keyword cAnsiName PRId16 PRIi32 PRIo64 PRIuLEAST8
syn keyword cAnsiName PRId32 PRIi64 PRIoLEAST8 PRIuLEAST16
syn keyword cAnsiName PRId64 PRIiLEAST8 PRIoLEAST16 PRIuLEAST32
syn keyword cAnsiName PRIdLEAST8 PRIiLEAST16 PRIoLEAST32 PRIuLEAST64
syn keyword cAnsiName PRIdLEAST16 PRIiLEAST32 PRIoLEAST64 PRIuFAST8
syn keyword cAnsiName PRIdLEAST32 PRIiLEAST64 PRIoFAST8 PRIuFAST16
syn keyword cAnsiName PRIdLEAST64 PRIiFAST8 PRIoFAST16 PRIuFAST32
syn keyword cAnsiName PRIdFAST8 PRIiFAST16 PRIoFAST32 PRIuFAST64
syn keyword cAnsiName PRIdFAST16 PRIiFAST32 PRIoFAST64 PRIuMAX
syn keyword cAnsiName PRIdFAST32 PRIiFAST64 PRIoMAX PRIuPTR
syn keyword cAnsiName PRIdFAST64 PRIiMAX PRIoPTR PRIx8
syn keyword cAnsiName PRIdMAX PRIiPTR PRIu8 PRIx16
syn keyword cAnsiName PRIdPTR PRIo8 PRIu16 PRIx32
syn keyword cAnsiName PRIi8 PRIo16 PRIu32 PRIx64
syn keyword cAnsiName PRIxLEAST8 SCNd8 SCNiFAST32 SCNuLEAST32
syn keyword cAnsiName PRIxLEAST16 SCNd16 SCNiFAST64 SCNuLEAST64
syn keyword cAnsiName PRIxLEAST32 SCNd32 SCNiMAX SCNuFAST8
syn keyword cAnsiName PRIxLEAST64 SCNd64 SCNiPTR SCNuFAST16
syn keyword cAnsiName PRIxFAST8 SCNdLEAST8 SCNo8 SCNuFAST32
syn keyword cAnsiName PRIxFAST16 SCNdLEAST16 SCNo16 SCNuFAST64
syn keyword cAnsiName PRIxFAST32 SCNdLEAST32 SCNo32 SCNuMAX
syn keyword cAnsiName PRIxFAST64 SCNdLEAST64 SCNo64 SCNuPTR
syn keyword cAnsiName PRIxMAX SCNdFAST8 SCNoLEAST8 SCNx8
syn keyword cAnsiName PRIxPTR SCNdFAST16 SCNoLEAST16 SCNx16
syn keyword cAnsiName PRIX8 SCNdFAST32 SCNoLEAST32 SCNx32
syn keyword cAnsiName PRIX16 SCNdFAST64 SCNoLEAST64 SCNx64
syn keyword cAnsiName PRIX32 SCNdMAX SCNoFAST8 SCNxLEAST8
syn keyword cAnsiName PRIX64 SCNdPTR SCNoFAST16 SCNxLEAST16
syn keyword cAnsiName PRIXLEAST8 SCNi8 SCNoFAST32 SCNxLEAST32
syn keyword cAnsiName PRIXLEAST16 SCNi16 SCNoFAST64 SCNxLEAST64
syn keyword cAnsiName PRIXLEAST32 SCNi32 SCNoMAX SCNxFAST8
syn keyword cAnsiName PRIXLEAST64 SCNi64 SCNoPTR SCNxFAST16
syn keyword cAnsiName PRIXFAST8 SCNiLEAST8 SCNu8 SCNxFAST32
syn keyword cAnsiName PRIXFAST16 SCNiLEAST16 SCNu16 SCNxFAST64
syn keyword cAnsiName PRIXFAST32 SCNiLEAST32 SCNu32 SCNxMAX
syn keyword cAnsiName PRIXFAST64 SCNiLEAST64 SCNu64 SCNxPTR
syn keyword cAnsiName PRIXMAX SCNiFAST8 SCNuLEAST8
syn keyword cAnsiName PRIXPTR SCNiFAST16 SCNuLEAST16
syn keyword cAnsiName errno environ
syn keyword cAnsiName STDC CX_LIMITED_RANGE
syn keyword cAnsiName STDC FENV_ACCESS
syn keyword cAnsiName STDC FP_CONTRACT
syn keyword cAnsiName and bitor not_eq xor
syn keyword cAnsiName and_eq compl or xor_eq
syn keyword cAnsiName bitand not or_eq

" Booleans
syn keyword cBoolean true false TRUE FALSE


" Default highlighting
hi def link cBoolean     Boolean
hi def link cAnsiName    cIdentifier
hi def link cIdentifier  Identifier


" Highlight all standard C keywords as Statement
" This is very similar to what other IDEs and editors do
if exists('g:cpp_simple_highlight') && g:cpp_simple_highlight
    hi link cStorageClass Statement
    hi link cStructure    Statement
    hi link cLabel        Statement
endif


" ------------------------------------------------------------------------------
" Additional optional highlighting
" From: http://www.vim.org/scripts/script.php?script_id=3064
" ------------------------------------------------------------------------------

" Operators
" syn match cOperator "\(<<\|>>\|[-+*/%&^|<>!=]\)="
" syn match cOperator "<<\|>>\|&&\|||\|++\|--\|->"
" syn match cOperator "[.!~*&%<>^|=,+-]"
" syn match cOperator "/[^/*=]"me=e-1
" syn match cOperator "/$"
" syn match cOperator "&&\|||"
" syn match cOperator "[][]"

" Preprocessor
" syn keyword cDefined defined contained containedin=cDefine
" hi def link cDefined cDefine

" Delimiters
" syn match cDelimiter    "[();\\]"
" hi def link cDelimiter Delimiter
" foldmethod=syntax fix, courtesy of Ivan Freitas
" syn match cBraces display "[{}]"
" hi def link cBraces Delimiter
