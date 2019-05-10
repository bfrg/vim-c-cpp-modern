# vim-cpp-modern: Enhanced C and C++ syntax highlighting

This plugin provides additional syntax highlighting for C and C++11/14/17/20
development in Vim. It provides highlighting of functions, as well as all types,
helper types and helper template variables in the C++ standard library. It also
adds syntax highlighting of C++20 library concepts.

The syntax file is based on [vim-cpp-enhanced-highlight](https://github.com/octol/vim-cpp-enhanced-highlight).


## Difference to vim-cpp-enhanced-highlight

- The C++ keywords `virtual`, `override`, `final`, `inline`, `explicit` and
  `export` are standard C++ statements and *not* types and are therefore
  put under the highlighting group `Statement`.
- Almost all C++ standard library functions have been commented out because
  words followed by an opening parenthesis are highlighted as functions anyway.
  So we don't have to explicitly list each library function in here. The only
  exceptions are function templates, which sometimes must be called with
  template parameters, like `std::make_unique<Foo>(bar)`.
- Another reason why almost all library functions have been commented out is
  because if someone had defined his/her own type and the name collided with a
  library's function name, the type would have been highlighted as a function.
  This can happen quite often when too many keywords are added to the syntax
  file. I have noticed this when implementing metafunctions like `apply` or
  `find_if`.
- User-defined function templates or class members won't be highlighted. Both
  features were removed because they made scrolling very slow and never worked
  100%.


## Optional features

```vim
" Disable function highlighting (affects both C and C++ files)
let g:cpp_no_function_highlight = 1

" Put all standard C and C++ keywords under Vim's highlight group `Statement`
" (affects both C and C++ files)
let g:cpp_simple_highlight = 1

" Enable highlighting of named requirements (C++20 library concepts)
let g:cpp_named_requirements_highlight = 1
```

The last option will highlight all C++
[named requirements](https://en.cppreference.com/w/cpp/named_req) (concepts
that haven't made it into the C++ standard yet) as standard library types.


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


## Resources

- https://github.com/octol/vim-cpp-enhanced-highlight
- http://stackoverflow.com/q/736701
- http://www.vim.org/scripts/script.php?script_id=4293
- http://www.vim.org/scripts/script.php?script_id=2224
- http://www.vim.org/scripts/script.php?script_id=1640
- http://www.vim.org/scripts/script.php?script_id=3064
- https://github.com/vim-jp/vim-cpp/issues/16


## License

Distributed under the same terms as Vim itself. See `:help license`.
