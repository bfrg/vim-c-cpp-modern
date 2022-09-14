# vim-cpp-modern: Enhanced C and C++ syntax highlighting

Keyword and regex-based syntax highlighting for C and C++11/14/17/20/23 in Vim.

The syntax files provide highlighting of:
- Common ANSI C keywords
- C++ Standard Library namespaces, types, helper types, helper template
  variables, and constants
- C++11 [attributes][attributes]
- Latest C++20 language features like [coroutines][coroutines] and
  [concepts][concepts]
- Function declarations/definitions and function calls (basically all words
  followed by an opening parenthesis)
- Optionally a simpler (less colorful) highlighting of standard C and C++
  keywords

![out](https://user-images.githubusercontent.com/6266600/97118850-a8902f00-170c-11eb-85c9-a5d2edd938a0.png)
_Code snippet from [cppreference][cppreference] (left: default syntax file,
right: this plugin)._


## Difference to vim-cpp-enhanced-highlight

Both syntax files are based on [vim-cpp-enhanced-highlight][octol] with the
following modifications:

- The C++ keywords `virtual`, `override`, `final`, `inline`, `explicit` and
  `export` are standard C++ statements and **not** types and are therefore
  highlighted using the highlight group `Statement`.
- Highlighting of library functions is purely regex-based.
- User-defined function templates, class names in declarations, and class scopes
  are not highlighted. Their regex'es are too complicated and slow, and fail too
  often.


## Optional features

```vim
" Disable function highlighting (affects both C and C++ files)
let g:cpp_function_highlight = 0

" Enable highlighting of C++11 attributes
let g:cpp_attributes_highlight = 1

" Highlight struct/class member variables (affects both C and C++ files)
let g:cpp_member_highlight = 1

" Put all standard C and C++ keywords under Vim's highlight group 'Statement'
" (affects both C and C++ files)
let g:cpp_simple_highlight = 1
```

The last option changes the highlighting of the following keywords:
- C: `static`, `register`, `auto`, `volatile`, `extern`, `const`, `inline`,
  `__attribute__`, `restrict`, `alignas`, `alignof`, `static_assert`,
  `noreturn`, `thread_local`, `struct`, `union`, `enum`, `case`, `default`
- C++: `class`, `typename`, `template`, `namespace`, `concept`, `mutable`,
  `constexpr` `decltype`, `consteval`, `constinit`


## Installation

```bash
$ cd ~/.vim/pack/git-plugins/start
$ git clone --depth=1 https://github.com/bfrg/vim-cpp-modern
```
**Note:** The directory name `git-plugins` is arbitrary, you can pick any other
name. For more details see `:help packages`.


## License

Distributed under the same terms as Vim itself. See `:help license`.


[cppreference]: https://en.cppreference.com/w/cpp/language/coroutines
[octol]: https://github.com/octol/vim-cpp-enhanced-highlight
[attributes]: https://en.cppreference.com/w/cpp/language/attributes
[coroutines]: https://en.cppreference.com/w/cpp/language/coroutines
[concepts]: https://en.cppreference.com/w/cpp/concepts
