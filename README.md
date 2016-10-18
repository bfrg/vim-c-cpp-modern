# vim-cpp-modern: Enhanced C++ syntax highlighting

This plugin provides improved syntax highlighting for C++11/14/17 development in
Vim. It adds additional highlighting of functions, template functions as well as
all types, helper types and helper template variables in the standard library.
It further provides highlighting of C++ library concepts.

**Note:** This project started as a fork of
[vim-cpp-enhanced-highlight](https://github.com/octol/vim-cpp-enhanced-highlight).
If you want the original, follow the link.

#### What is different from the original vim-cpp-enhanced-highlight version?

- Added own C/C++ highlighting for the keywords `virtual`, `override`, `final`,
  `inline`, `explicit` and `export`. These are now under the highlight group
  `StorageClass`.
- Almost all standard library functions have been commented out because
  everything that ends with parentheses is highlighted as a function anyway,
  so we don't have to explicitly list each library function. The only exceptions
  are function templates, which sometimes must be called with template
  parameters, like `std::make_unique<Foo>(blah)`. Another reason why almost all
  functions have been commented out is because if a user defines his/her own
  type (or something else) and the name collides with a library's function name,
  the type will be highlighted as a function. If this happens too often
  throughout the code, the highlighting will be "too colorful" and thus more
  distracting than useful (IMO). I have noticed this quite often when I
  implemented metafunctions like `apply`, `find_if`, etc.


## Optional features

Highlighting of class scope is disabled by default. To enable, set
```vim
let g:cpp_class_scope_highlight = 1
```

Highlighting of template functions is enabled by setting
```vim
let g:cpp_experimental_template_highlight = 1
```

_Note: C++ template syntax is notoriously difficult to parse, so don't expect
this feature to be perfect._ See for instance
[issue #6](https://github.com/octol/vim-cpp-enhanced-highlight/issues/6) in the
original repository.

Highlighting of member variable names is enabled by setting
```vim
let g:cpp_class_member_highlight = 1
```
This will highlight class members in the same way as functions. Note that this
option requires `c.vim` in your `~/.vim/after/syntax` directory. If you are
using a plugin manager, you don't have to worry about anything.


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
Plug 'bfrg/vim-cpp-enhanced-highlight'
```
Reload the file and run `:PlugInstall`.

#### Manual installation

Just copy `cpp.vim` (and optionally `c.vim`) to `~/.vim/after/syntax`:
```sh
git clone https://github.com/bfrg/vim-cpp-enhanced-highlight.git /tmp/vim-cpp-enhanced-highlight
mkdir -p ~/.vim/after/syntax/
mv /tmp/vim-cpp-enhanced-highlight/after/syntax/cpp.vim ~/.vim/after/syntax/cpp.vim
rm -rf /tmp/vim-cpp-enhanced-highlight
```


## Issues

Vim tends to a have issues with flagging braces inside brackets as invalid
syntax such as in the following example:
```cpp
std::map<std::pair<int, int>, int> m;
m[{1, 2}] = 3;
```

As a workaround set
```vim
let c_no_curly_error=1
```


## Resources

- https://github.com/octol/vim-cpp-enhanced-highlight
- http://stackoverflow.com/q/736701
- http://www.vim.org/scripts/script.php?script_id=4293
- http://www.vim.org/scripts/script.php?script_id=2224
- http://www.vim.org/scripts/script.php?script_id=1640
- http://www.vim.org/scripts/script.php?script_id=3064
- https://github.com/vim-jp/vim-cpp/issues/16

