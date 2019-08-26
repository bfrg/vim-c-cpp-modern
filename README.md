# vim-cpp-modern: Enhanced C and C++ syntax highlighting

Keyword and regex-based syntax highlighting for C and C++11/14/17/20 in Vim.

The syntax files provide highlighting of:
- Common ANSI C keywords
- C++ Standard Library namespaces, types, helper types, helper template
  variables, constants
- Latest C++20 language features like Coroutines or Concepts
- Function declarations/definitions and function calls (basically all words
  followed by an opening parenthesis)
- Optionally a simpler (less colorful) highlighting of standard C and C++
  keywords


## Difference to vim-cpp-enhanced-highlight

Both syntax files are based on [vim-cpp-enhanced-highlight][1] with a few
modifications:

- The C++ keywords `virtual`, `override`, `final`, `inline`, `explicit` and
  `export` are standard C++ statements and **not** types and are therefore put
  under the highlighting group `Statement`.
- Highlighting of library functions is purely regex-based.
- User-defined function templates or class members are not highlighted. Their
  regex'es are too complicated and slow, and fail too often.


## Optional features

```vim
" Disable function highlighting (affects both C and C++ files)
let g:cpp_no_function_highlight = 1

" Put all standard C and C++ keywords under Vim's highlight group 'Statement'
" (affects both C and C++ files)
let g:cpp_simple_highlight = 1

" Enable highlighting of named requirements (C++20 library concepts)
let g:cpp_named_requirements_highlight = 1
```

The last option will highlight all C++ [named requirements][2] (concepts that
haven't made it into the C++ standard yet) as standard library types.


## Installation

Copy both `c.vim` and `cpp.vim` into your `~/.vim/after/syntax` directory, or
use your preferred plugin manager.


## Issues

Vim tends to a have issues with flagging braces inside brackets as invalid
syntax such as in the following example:
```cpp
std::map<std::pair<int, int>, int> m;
m[{1, 2}] = 3;
```

As a workaround set
```vim
let c_no_curly_error = 1
```
See also `:help ft-c-syntax` for further options.


## License

Distributed under the same terms as Vim itself. See `:help license`.


[1]: https://github.com/octol/vim-cpp-enhanced-highlight
[2]: https://en.cppreference.com/w/cpp/named_req
