# vim-cpp-modern: Enhanced C++ syntax highlighting

This plugin provides additional syntax highlighting for C++11/14/17 development
in Vim. It provides highlighting of functions, as well as all types,
helper types and helper template variables in the standard library.  It further
provides syntax highlighting of C++ library concepts.

**Note:** This syntax file is based on:
[vim-cpp-enhanced-highlight](https://github.com/octol/vim-cpp-enhanced-highlight).


## Difference to vim-cpp-enhanced-highlight

- Added own C/C++ highlighting for the keywords `virtual`, `override`, `final`,
  `inline`, `explicit` and `export`. These are now under the highlight group
  `StorageClass`. The default syntax file highlights them as `Type`.
- Standard library functions have been commented out because words that end with
  parentheses are highlighted as functions anyway, so we don't have to
  explicitly list each library function in here. The only exceptions are
  standard library function templates, which sometimes must be called with
  template parameters, like `std::make_unique<Foo>(bar)`.
- Another reason why almost all functions have been commented out is because if
  someone defines his/her own type and the name collides with a library's
  function name, the type will be highlighted as a function. This can happen
  quite often when so many keywords are added to the syntax file. I have noticed
  that when implementing some metafunctions like `apply` or `find_if`.
- User-defined function templates or class members won't be highlighted. These
  features were removed because it was too slow and buggy.


## Optional features

To enable highlighting of C++ library concepts, set
```vim
let g:cpp_concepts_highlight = 1
```
If enabled, the named requirements like `MoveConstructible` will be highlighted
as standard library types.


## Installation

#### vim-plug

If [vim-plug](https://github.com/junegunn/vim-plug) is your preferred plugin
manager, add the following to your `.vimrc`
```vim
Plug 'bfrg/vim-cpp-modern'
```

#### Manual installation

Copy `cpp.vim` (and optionally `c.vim`) to `~/.vim/after/syntax`:


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
