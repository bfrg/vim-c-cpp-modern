# vim-cpp-modern: Enhanced C and C++ syntax highlighting

This plugin provides additional syntax highlighting for C and C++11/14/17
development in Vim. It provides highlighting of user-defined functions, as well
as all types, helper types and helper template variables in the C++ standard
library. It further provides syntax highlighting of C++ library concepts.

**Note:** This syntax file is based on:
[vim-cpp-enhanced-highlight](https://github.com/octol/vim-cpp-enhanced-highlight).


## Difference to vim-cpp-enhanced-highlight

- I added my own C/C++ highlighting for the keywords `virtual`, `override`,
  `final`, `inline`, `explicit` and `export`. These are now under the
  highlighting group `StorageClass` (Vim's default syntax file puts them under
  `Type`).
- Almost all C++ standard library functions have been commented out because
  words that end with parentheses are highlighted as functions anyway. So we
  don't have to explicitly list each library function in here. The only
  exceptions are function templates, which sometimes must be called with
  template parameters. Example: `std::make_unique<Foo>(bar)`.
- Another reason why almost all functions have been commented out is because if
  someone defines his/her own type and the name collides with a library's
  function name, the type will be highlighted as a function. This can happen
  quite often when so many keywords are added to the syntax file. I have noticed
  this when implementing some metafunctions like `apply` or `find_if`.
- User-defined function templates or class members won't be highlighted. These
  features were removed because they were too slow and never worked 100%.


## Optional features

To disable function highlighting, set
```vim
let g:cpp_no_function_highlight = 1
```
**Note:** this will affect both C and C++ files.

To enable highlighting of C++ library concepts, set
```vim
let g:cpp_concepts_highlight = 1
```
This will highlight the keywords `concept` and `requires`. All named
requirements like `MoveConstructible` will be highlighted as standard library
types.


## Installation

#### vim-plug

If [vim-plug](https://github.com/junegunn/vim-plug) is your preferred plugin
manager, add the following to your `.vimrc`
```vim
Plug 'bfrg/vim-cpp-modern'
```

#### Manual installation

Copy `cpp.vim` (and optionally `c.vim`) to `~/.vim/after/syntax`.


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
