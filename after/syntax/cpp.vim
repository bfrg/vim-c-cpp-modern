" ==============================================================================
" Vim syntax file
" Language:        C++ (Standard library including C++11/14/17/20)
" Original Author: Jon Haggblad <https://github.com/octol>
" Maintainer:      bfrg <bfrg@users.noreply.github.com>
" Website:         https://github.com/bfrg/vim-cpp-modern
" Last Change:     Aug 25, 2019
"
" This syntax file is based on:
" https://github.com/octol/vim-cpp-enhanced-highlight
" ==============================================================================


" Standard library types {{{1
" Based on the syntax vim script by Mizuchi <ytj000@gmail.com>
" http://www.vim.org/scripts/script.php?script_id=4293

syntax keyword cppSTLconstant MB_CUR_MAX
syntax keyword cppSTLconstant MB_LEN_MAX
syntax keyword cppSTLconstant WCHAR_MAX
syntax keyword cppSTLconstant WCHAR_MIN
syntax keyword cppSTLconstant WEOF
syntax keyword cppSTLconstant __STDC_UTF_16__
syntax keyword cppSTLconstant __STDC_UTF_32__
syntax keyword cppSTLconstant badbit
syntax keyword cppSTLVariable cerr
syntax keyword cppSTLVariable cin
syntax keyword cppSTLVariable clog
syntax keyword cppSTLVariable cout
syntax keyword cppSTLconstant digits
syntax keyword cppSTLconstant digits10
syntax keyword cppSTLconstant eofbit
syntax keyword cppSTLconstant failbit
syntax keyword cppSTLconstant goodbit
syntax keyword cppSTLconstant has_denorm
syntax keyword cppSTLconstant has_denorm_loss
syntax keyword cppSTLconstant has_infinity
syntax keyword cppSTLconstant has_quiet_NaN
syntax keyword cppSTLconstant has_signaling_NaN
syntax keyword cppSTLconstant is_bounded
syntax keyword cppSTLconstant is_exact
syntax keyword cppSTLconstant is_iec559
syntax keyword cppSTLconstant is_integer
syntax keyword cppSTLconstant is_modulo
syntax keyword cppSTLconstant is_signed
syntax keyword cppSTLconstant is_specialized
syntax keyword cppSTLconstant max_exponent
syntax keyword cppSTLconstant max_exponent10
syntax keyword cppSTLconstant min_exponent
syntax keyword cppSTLconstant min_exponent10
syntax keyword cppSTLconstant nothrow
syntax keyword cppSTLconstant npos
syntax keyword cppSTLconstant radix
syntax keyword cppSTLconstant round_style
syntax keyword cppSTLconstant tinyness_before
syntax keyword cppSTLconstant traps
syntax keyword cppSTLVariable wcerr
syntax keyword cppSTLVariable wcin
syntax keyword cppSTLVariable wclog
syntax keyword cppSTLVariable wcout

syntax keyword cppSTLexception bad_alloc
syntax keyword cppSTLexception bad_exception
syntax keyword cppSTLexception bad_typeid bad_cast
syntax keyword cppSTLexception domain_error
syntax keyword cppSTLexception exception
syntax keyword cppSTLexception invalid_argument
syntax keyword cppSTLexception length_error
syntax keyword cppSTLexception logic_error
syntax keyword cppSTLexception out_of_range
syntax keyword cppSTLexception overflow_error
syntax keyword cppSTLexception range_error
syntax keyword cppSTLexception runtime_error
syntax keyword cppSTLexception underflow_error
syntax keyword cppSTLexception failure

syntax keyword cppSTLfunctional binary_function
syntax keyword cppSTLfunctional binary_negate
syntax keyword cppSTLfunctional bit_and
syntax keyword cppSTLfunctional bit_not
syntax keyword cppSTLfunctional bit_or
syntax keyword cppSTLfunctional divides
syntax keyword cppSTLfunctional equal_to
syntax keyword cppSTLfunctional greater
syntax keyword cppSTLfunctional greater_equal
syntax keyword cppSTLfunctional less
syntax keyword cppSTLfunctional less_equal
syntax keyword cppSTLfunctional logical_and
syntax keyword cppSTLfunctional logical_not
syntax keyword cppSTLfunctional logical_or
syntax keyword cppSTLfunctional minus
syntax keyword cppSTLfunctional modulus
syntax keyword cppSTLfunctional multiplies
syntax keyword cppSTLfunctional negate
syntax keyword cppSTLfunctional not_equal_to
syntax keyword cppSTLfunctional plus
syntax keyword cppSTLfunctional unary_function
syntax keyword cppSTLfunctional unary_negate

syntax keyword cppSTLios resetiosflags
syntax keyword cppSTLios setiosflags
syntax keyword cppSTLios setbase
syntax keyword cppSTLios setfill
syntax keyword cppSTLios setprecision
syntax keyword cppSTLios setw
syntax keyword cppSTLios endl
syntax keyword cppSTLios ends
syntax keyword cppSTLios flush
" syntax keyword cppSTLios ws

syntax keyword cppSTLios boolalpha noboolalpha
syntax keyword cppSTLios showbase noshowbase
syntax keyword cppSTLios showpoint noshowpoint
syntax keyword cppSTLios showpos noshowpos
syntax keyword cppSTLios skipws noskipws
syntax keyword cppSTLios uppercase nouppercase
syntax keyword cppSTLios unitbuf nounitbuf
syntax keyword cppSTLios internal left right
syntax keyword cppSTLios dec hex oct
syntax keyword cppSTLios fixed scientific hexfloat defaultfloat

syntax keyword cppSTLtype fmtflags
syntax keyword cppSTLtype iostate
syntax keyword cppSTLtype openmode

" syntax keyword cppSTLconstant dec oct hex basefield
" syntax keyword cppSTLconstant left right internal adjustfield
" syntax keyword cppSTLconstant scientific fixed floatfield
" syntax keyword cppSTLconstant boolalpha
" syntax keyword cppSTLconstant showbase showpoint showpos
" syntax keyword cppSTLconstant skipws
" syntax keyword cppSTLconstant unitbuf
" syntax keyword cppSTLconstant uppercase
" syntax keyword cppSTLconstant app binary in out trunc ate

syntax keyword cppSTLiterator back_insert_iterator
syntax keyword cppSTLiterator bidirectional_iterator
syntax keyword cppSTLiterator const_iterator
syntax keyword cppSTLiterator const_reverse_iterator
syntax keyword cppSTLiterator forward_iterator
syntax keyword cppSTLiterator front_insert_iterator
syntax keyword cppSTLiterator input_iterator
syntax keyword cppSTLiterator insert_iterator
syntax keyword cppSTLiterator istream_iterator
syntax keyword cppSTLiterator istreambuf_iterator
syntax keyword cppSTLiterator ostreambuf_iterator
syntax keyword cppSTLiterator iterator
syntax keyword cppSTLiterator ostream_iterator
syntax keyword cppSTLiterator output_iterator
syntax keyword cppSTLiterator random_access_iterator
syntax keyword cppSTLiterator raw_storage_iterator
syntax keyword cppSTLiterator reverse_bidirectional_iterator
syntax keyword cppSTLiterator reverse_iterator

syntax keyword cppSTLiterator_tag bidirectional_iterator_tag
syntax keyword cppSTLiterator_tag forward_iterator_tag
syntax keyword cppSTLiterator_tag input_iterator_tag
syntax keyword cppSTLiterator_tag output_iterator_tag
syntax keyword cppSTLiterator_tag random_access_iterator_tag

syntax keyword cppSTLnamespace rel_ops
syntax keyword cppSTLnamespace std
syntax keyword cppSTLnamespace experimental

syntax keyword cppSTLtype Init
syntax keyword cppSTLtype event_callback
syntax keyword cppSTLtype allocator
syntax keyword cppSTLtype auto_ptr
syntax keyword cppSTLtype basic_filebuf
syntax keyword cppSTLtype basic_fstream
syntax keyword cppSTLtype basic_ifstream
syntax keyword cppSTLtype basic_iostream
syntax keyword cppSTLtype basic_istream
syntax keyword cppSTLtype basic_istringstream
syntax keyword cppSTLtype basic_ofstream
syntax keyword cppSTLtype basic_ostream
syntax keyword cppSTLtype basic_ostringstream
syntax keyword cppSTLtype basic_streambuf
syntax keyword cppSTLtype basic_string
syntax keyword cppSTLtype basic_stringbuf
syntax keyword cppSTLtype basic_stringstream
syntax keyword cppSTLtype binary_compose
syntax keyword cppSTLtype binder1st
syntax keyword cppSTLtype binder2nd
syntax keyword cppSTLtype bitset
syntax keyword cppSTLtype char_traits
syntax keyword cppSTLtype char_type
syntax keyword cppSTLtype pos_type
syntax keyword cppSTLtype off_type
syntax keyword cppSTLtype state_type
syntax keyword cppSTLtype const_mem_fun1_t
syntax keyword cppSTLtype const_mem_fun_ref1_t
syntax keyword cppSTLtype const_mem_fun_ref_t
syntax keyword cppSTLtype const_mem_fun_t
syntax keyword cppSTLtype const_pointer
syntax keyword cppSTLtype const_reference
syntax keyword cppSTLtype container_type
syntax keyword cppSTLtype deque
syntax keyword cppSTLtype difference_type
syntax keyword cppSTLtype iterator_category
syntax keyword cppSTLtype div_t
syntax keyword cppSTLtype double_t
syntax keyword cppSTLtype filebuf
syntax keyword cppSTLtype first_type
syntax keyword cppSTLtype float_denorm_style
syntax keyword cppSTLtype float_round_style
syntax keyword cppSTLtype float_t
syntax keyword cppSTLtype fstream
syntax keyword cppSTLtype gslice_array
syntax keyword cppSTLtype ifstream
syntax keyword cppSTLtype imaxdiv_t
syntax keyword cppSTLtype indirect_array
syntax keyword cppSTLtype int_type
syntax keyword cppSTLtype ios_base
syntax keyword cppSTLtype basic_ios
syntax keyword cppSTLtype fpos
syntax keyword cppSTLtype ios
syntax keyword cppSTLtype iostream
syntax keyword cppSTLtype istream
syntax keyword cppSTLtype istringstream
syntax keyword cppSTLtype istrstream
syntax keyword cppSTLtype iterator_traits
syntax keyword cppSTLtype key_compare
syntax keyword cppSTLtype key_type
syntax keyword cppSTLtype ldiv_t
syntax keyword cppSTLtype list
syntax keyword cppSTLtype lldiv_t
syntax keyword cppSTLtype map
syntax keyword cppSTLtype mapped_type
syntax keyword cppSTLtype mask_array
syntax keyword cppSTLtype mbstate_t
syntax keyword cppSTLtype mem_fun1_t
syntax keyword cppSTLtype mem_fun_ref1_t
syntax keyword cppSTLtype mem_fun_ref_t
syntax keyword cppSTLtype mem_fun_t
syntax keyword cppSTLtype multimap
syntax keyword cppSTLtype multiset
syntax keyword cppSTLtype nothrow_t
syntax keyword cppSTLtype numeric_limits
syntax keyword cppSTLtype off_type
syntax keyword cppSTLtype ofstream
syntax keyword cppSTLtype ostream
syntax keyword cppSTLtype ostringstream
syntax keyword cppSTLtype ostrstream
syntax keyword cppSTLtype pair
syntax keyword cppSTLtype pointer
syntax keyword cppSTLtype pointer_to_binary_function
syntax keyword cppSTLtype pointer_to_unary_function
syntax keyword cppSTLtype pos_type
syntax keyword cppSTLtype priority_queue
syntax keyword cppSTLtype queue
syntax keyword cppSTLtype reference
syntax keyword cppSTLtype second_type
syntax keyword cppSTLtype seekdir
syntax keyword cppSTLtype sequence_buffer
syntax keyword cppSTLtype set
syntax keyword cppSTLtype sig_atomic_t
syntax keyword cppSTLtype size_type
syntax keyword cppSTLtype slice_array
syntax keyword cppSTLtype stack
syntax keyword cppSTLtype stream
syntax keyword cppSTLtype streambuf
syntax keyword cppSTLtype streamoff
syntax keyword cppSTLtype streampos
syntax keyword cppSTLtype streamsize
syntax keyword cppSTLtype string
syntax keyword cppSTLtype stringbuf
syntax keyword cppSTLtype stringstream
syntax keyword cppSTLtype strstream
syntax keyword cppSTLtype strstreambuf
syntax keyword cppSTLtype temporary_buffer
syntax keyword cppSTLtype test_type
syntax keyword cppSTLtype time_t
syntax keyword cppSTLtype tm
syntax keyword cppSTLtype traits_type
syntax keyword cppSTLtype type_info
syntax keyword cppSTLtype u16string
syntax keyword cppSTLtype u32string
syntax keyword cppSTLtype unary_compose
syntax keyword cppSTLtype unary_negate
syntax keyword cppSTLtype valarray
syntax keyword cppSTLtype value_compare
syntax keyword cppSTLtype value_type
syntax keyword cppSTLtype vector
syntax keyword cppSTLtype wctrans_t
syntax keyword cppSTLtype wctype_t
syntax keyword cppSTLtype wfilebuf
syntax keyword cppSTLtype wfstream
syntax keyword cppSTLtype wifstream
syntax keyword cppSTLtype wint_t
syntax keyword cppSTLtype wios
syntax keyword cppSTLtype wiostream
syntax keyword cppSTLtype wistream
syntax keyword cppSTLtype wistringstream
syntax keyword cppSTLtype wofstream
syntax keyword cppSTLtype wostream
syntax keyword cppSTLtype wostringstream
syntax keyword cppSTLtype wstreambuf
syntax keyword cppSTLtype wstreampos
syntax keyword cppSTLtype wstring
syntax keyword cppSTLtype wstringbuf
syntax keyword cppSTLtype wstringstream

" locale
syntax keyword cppSTLtype locale
syntax keyword cppSTLtype ctype_base
syntax keyword cppSTLtype codecvt_base
syntax keyword cppSTLtype messages_base
syntax keyword cppSTLtype time_base
syntax keyword cppSTLtype money_base
syntax keyword cppSTLtype ctype
syntax keyword cppSTLtype codecvt
syntax keyword cppSTLtype collate
syntax keyword cppSTLtype messages
syntax keyword cppSTLtype time_get
syntax keyword cppSTLtype time_put
syntax keyword cppSTLtype num_get
syntax keyword cppSTLtype num_put
syntax keyword cppSTLtype numpunct
syntax keyword cppSTLtype money_get
syntax keyword cppSTLtype money_put
syntax keyword cppSTLtype moneypunct
syntax keyword cppSTLtype ctype_byname
syntax keyword cppSTLtype codecvt_byname
syntax keyword cppSTLtype messages_byname
syntax keyword cppSTLtype collate_byname
syntax keyword cppSTLtype time_get_byname
syntax keyword cppSTLtype time_put_byname
syntax keyword cppSTLtype numpunct_byname
syntax keyword cppSTLtype moneypunct_byname

" template functions that are called with template parameters, like
" std::use_facet<std::moneypunct<char, true>>(loc).curr_symbol()
syntax keyword cppSTLfunction use_facet
syntax keyword cppSTLfunction has_facet

" std::get is a template function, so when called as std::get<N>(t), we want it
" to be highlighted as a function
syntax keyword cppSTLfunction get


" C++11 extensions {{{1

if !exists('cpp_no_cpp11')
    syntax keyword cppSTLconstant nullptr

    " containers (array, vector, list, map, set, ...) {{{2
    syntax keyword cppSTLtype array

    " atomic {{{2
    syntax keyword cppSTLtype atomic
    syntax keyword cppSTLtype atomic_flag
    syntax keyword cppSTLtype atomic_bool
    syntax keyword cppSTLtype atomic_char
    syntax keyword cppSTLtype atomic_schar
    syntax keyword cppSTLtype atomic_uchar
    syntax keyword cppSTLtype atomic_short
    syntax keyword cppSTLtype atomic_ushort
    syntax keyword cppSTLtype atomic_int
    syntax keyword cppSTLtype atomic_uint
    syntax keyword cppSTLtype atomic_long
    syntax keyword cppSTLtype atomic_ulong
    syntax keyword cppSTLtype atomic_llong
    syntax keyword cppSTLtype atomic_ullong
    syntax keyword cppSTLtype atomic_char16_t
    syntax keyword cppSTLtype atomic_char32_t
    syntax keyword cppSTLtype atomic_wchar_t
    syntax keyword cppSTLtype atomic_int_least8_t
    syntax keyword cppSTLtype atomic_uint_least8_t
    syntax keyword cppSTLtype atomic_int_least16_t
    syntax keyword cppSTLtype atomic_uint_least16_t
    syntax keyword cppSTLtype atomic_int_least32_t
    syntax keyword cppSTLtype atomic_uint_least32_t
    syntax keyword cppSTLtype atomic_int_least64_t
    syntax keyword cppSTLtype atomic_uint_least64_t
    syntax keyword cppSTLtype atomic_int_fast8_t
    syntax keyword cppSTLtype atomic_uint_fast8_t
    syntax keyword cppSTLtype atomic_int_fast16_t
    syntax keyword cppSTLtype atomic_uint_fast16_t
    syntax keyword cppSTLtype atomic_int_fast32_t
    syntax keyword cppSTLtype atomic_uint_fast32_t
    syntax keyword cppSTLtype atomic_int_fast64_t
    syntax keyword cppSTLtype atomic_uint_fast64_t
    syntax keyword cppSTLtype atomic_intptr_t
    syntax keyword cppSTLtype atomic_uintptr_t
    syntax keyword cppSTLtype atomic_size_t
    syntax keyword cppSTLtype atomic_ptrdiff_t
    syntax keyword cppSTLtype atomic_intmax_t
    syntax keyword cppSTLtype atomic_uintmax_t
    syntax keyword cppSTLconstant ATOMIC_FLAG_INIT
    syntax keyword cppSTLenum memory_order

    " chrono {{{2
    syntax keyword cppSTLnamespace chrono
    syntax keyword cppSTLcast duration_cast
    syntax keyword cppSTLcast time_point_cast
    syntax keyword cppSTLtype duration
    syntax keyword cppSTLtype system_clock
    syntax keyword cppSTLtype steady_clock
    syntax keyword cppSTLtype high_resolution_clock
    syntax keyword cppSTLtype time_point
    syntax keyword cppSTLtype nanoseconds
    syntax keyword cppSTLtype microseconds
    syntax keyword cppSTLtype milliseconds
    syntax keyword cppSTLtype seconds
    syntax keyword cppSTLtype minutes
    syntax keyword cppSTLtype hours
    syntax keyword cppSTLtype treat_as_floating_point
    syntax keyword cppSTLtype duration_values

    " condition_variable {{{2
    syntax keyword cppSTLtype condition_variable

    " cstddef {{{2
    syntax keyword cppSTLtype nullptr_t max_align_t

    " exception {{{2
    syntax keyword cppSTLtype exception_ptr
    syntax keyword cppSTLtype nested_exception

    " functional {{{2
    syntax keyword cppSTLexception bad_function_call
    syntax keyword cppSTLfunctional function
    syntax keyword cppSTLconstant _1 _2 _3 _4 _5 _6 _7 _8 _9
    syntax keyword cppSTLtype hash
    syntax keyword cppSTLtype is_bind_expression
    syntax keyword cppSTLtype is_placeholder
    syntax keyword cppSTLtype reference_wrapper

    " iterator {{{2
    syntax keyword cppSTLiterator move_iterator

    " forward_list {{{2
    syntax keyword cppSTLtype forward_list

    " future {{{2
    syntax keyword cppSTLtype future
    syntax keyword cppSTLtype packaged_task
    syntax keyword cppSTLtype promise
    syntax keyword cppSTLtype shared_future
    syntax keyword cppSTLenum future_status
    syntax keyword cppSTLenum future_errc
    syntax keyword cppSTLenum launch
    syntax keyword cppSTLexception future_error

    " initializer_list {{{2
    syntax keyword cppSTLtype initializer_list

    " ios {{{2
    syntax keyword cppSTLenum io_errc
    " syntax keyword cppSTLtype is_error_code_enum

    " limits {{{2
    syntax keyword cppSTLconstant max_digits10

    " locale {{{2
    syntax keyword cppSTLtype wstring_convert
    syntax keyword cppSTLtype wbuffer_convert
    syntax keyword cppSTLtype codecvt_utf8
    syntax keyword cppSTLtype codecvt_utf16
    syntax keyword cppSTLtype codecvt_utf8_utf16
    syntax keyword cppSTLtype codecvt_mode
    syntax keyword cppSTLfunction isblank

    " memory {{{2
    syntax keyword cppSTLtype unique_ptr
    syntax keyword cppSTLtype shared_ptr
    syntax keyword cppSTLtype weak_ptr
    syntax keyword cppSTLtype owner_less
    syntax keyword cppSTLtype enable_shared_from_this
    syntax keyword cppSTLtype default_delete
    syntax keyword cppSTLtype allocator_traits
    syntax keyword cppSTLtype allocator_type
    syntax keyword cppSTLtype void_pointer const_void_pointer
    syntax keyword cppSTLtype propagate_on_container_copy_assignment
    syntax keyword cppSTLtype propagate_on_container_move_assignment
    syntax keyword cppSTLtype propagate_on_container_swap
    syntax keyword cppSTLtype is_always_equal
    syntax keyword cppSTLtype rebind_alloc rebind_traits
    syntax keyword cppSTLtype allocator_arg_t
    syntax keyword cppSTLtype uses_allocator
    syntax keyword cppSTLtype pointer_safety
    syntax keyword cppSTLtype pointer_traits
    syntax keyword cppSTLconstant allocator_arg
    syntax keyword cppSTLexception bad_weak_ptr
    syntax keyword cppSTLcast static_pointer_cast
    syntax keyword cppSTLcast dynamic_pointer_cast
    syntax keyword cppSTLcast const_pointer_cast
    syntax keyword cppSTLfunction make_shared
    syntax keyword cppSTLfunction allocate_shared

    " mutex {{{2
    syntax keyword cppSTLtype mutex
    syntax keyword cppSTLtype timed_mutex
    syntax keyword cppSTLtype recursive_mutex
    syntax keyword cppSTLtype recursive_timed_mutex
    syntax keyword cppSTLtype lock_guard
    syntax keyword cppSTLtype unique_lock
    syntax keyword cppSTLtype defer_lock_t
    syntax keyword cppSTLtype try_to_lock_t
    syntax keyword cppSTLtype adopt_lock_t
    syntax keyword cppSTLtype once_flag
    syntax keyword cppSTLtype condition_variable_any
    syntax keyword cppSTLenum cv_status
    syntax keyword cppSTLconstant defer_lock try_to_lock adopt_lock

    " new {{{2
    syntax keyword cppSTLexception bad_array_new_length

    " numerics, cmath {{{2
    syntax keyword cppSTLconstant HUGE_VALF
    syntax keyword cppSTLconstant HUGE_VALL
    syntax keyword cppSTLconstant INFINITY
    syntax keyword cppSTLconstant NAN
    syntax keyword cppSTLconstant math_errhandling
    syntax keyword cppSTLconstant MATH_ERRNO
    syntax keyword cppSTLconstant MATH_ERREXCEPT
    syntax keyword cppSTLconstant FP_NORMAL
    syntax keyword cppSTLconstant FP_SUBNORMAL
    syntax keyword cppSTLconstant FP_ZERO
    syntax keyword cppSTLconstant FP_INFINITE
    syntax keyword cppSTLconstant FP_NAN
    syntax keyword cppSTLconstant FLT_EVAL_METHOD

    " random {{{2
    syntax keyword cppSTLtype linear_congruential_engine
    syntax keyword cppSTLtype mersenne_twister_engine
    syntax keyword cppSTLtype subtract_with_carry_engine
    syntax keyword cppSTLtype discard_block_engine
    syntax keyword cppSTLtype independent_bits_engine
    syntax keyword cppSTLtype shuffle_order_engine
    syntax keyword cppSTLtype random_device
    syntax keyword cppSTLtype default_random_engine
    syntax keyword cppSTLtype minstd_rand0
    syntax keyword cppSTLtype minstd_rand
    syntax keyword cppSTLtype mt19937
    syntax keyword cppSTLtype mt19937_64
    syntax keyword cppSTLtype ranlux24_base
    syntax keyword cppSTLtype ranlux48_base
    syntax keyword cppSTLtype ranlux24
    syntax keyword cppSTLtype ranlux48
    syntax keyword cppSTLtype knuth_b
    syntax keyword cppSTLtype uniform_int_distribution
    syntax keyword cppSTLtype uniform_real_distribution
    syntax keyword cppSTLtype bernoulli_distribution
    syntax keyword cppSTLtype binomial_distribution
    syntax keyword cppSTLtype negative_binomial_distribution
    syntax keyword cppSTLtype geometric_distribution
    syntax keyword cppSTLtype poisson_distribution
    syntax keyword cppSTLtype exponential_distribution
    syntax keyword cppSTLtype gamma_distribution
    syntax keyword cppSTLtype weibull_distribution
    syntax keyword cppSTLtype extreme_value_distribution
    syntax keyword cppSTLtype normal_distribution
    syntax keyword cppSTLtype lognormal_distribution
    syntax keyword cppSTLtype chi_squared_distribution
    syntax keyword cppSTLtype cauchy_distribution
    syntax keyword cppSTLtype fisher_f_distribution
    syntax keyword cppSTLtype student_t_distribution
    syntax keyword cppSTLtype discrete_distribution
    syntax keyword cppSTLtype piecewise_constant_distribution
    syntax keyword cppSTLtype piecewise_linear_distribution
    syntax keyword cppSTLtype seed_seq
    syntax keyword cppSTLfunction generate_canonical

    " ratio {{{2
    syntax keyword cppSTLtype ratio
    syntax keyword cppSTLtype yocto
    syntax keyword cppSTLtype zepto
    syntax keyword cppSTLtype atto
    syntax keyword cppSTLtype femto
    syntax keyword cppSTLtype pico
    syntax keyword cppSTLtype nano
    syntax keyword cppSTLtype micro
    syntax keyword cppSTLtype milli
    syntax keyword cppSTLtype centi
    syntax keyword cppSTLtype deci
    syntax keyword cppSTLtype deca
    syntax keyword cppSTLtype hecto
    syntax keyword cppSTLtype kilo
    syntax keyword cppSTLtype mega
    syntax keyword cppSTLtype giga
    syntax keyword cppSTLtype tera
    syntax keyword cppSTLtype peta
    syntax keyword cppSTLtype exa
    syntax keyword cppSTLtype zetta
    syntax keyword cppSTLtype yotta
    syntax keyword cppSTLtype ratio_add
    syntax keyword cppSTLtype ratio_subtract
    syntax keyword cppSTLtype ratio_multiply
    syntax keyword cppSTLtype ratio_divide
    syntax keyword cppSTLtype ratio_equal
    syntax keyword cppSTLtype ratio_not_equal
    syntax keyword cppSTLtype ratio_less
    syntax keyword cppSTLtype ratio_less_equal
    syntax keyword cppSTLtype ratio_greater
    syntax keyword cppSTLtype ratio_greater_equal

    " regex {{{2
    syntax keyword cppSTLtype basic_regex
    syntax keyword cppSTLtype sub_match
    syntax keyword cppSTLtype match_results
    syntax keyword cppSTLtype regex_traits
    syntax keyword cppSTLiterator regex_iterator
    syntax keyword cppSTLiterator regex_token_iterator
    syntax keyword cppSTLexception regex_error
    syntax keyword cppSTLtype syntax_option_type match_flag_type error_type

    " scoped_allocator {{{2
    syntax keyword cppSTLtype scoped_allocator_adaptor
    syntax keyword cppSTLtype outer_allocator_type inner_allocator_type

    " system_error {{{2
    syntax keyword cppSTLenum errc
    syntax keyword cppSTLexception system_error
    syntax keyword cppSTLtype error_code
    syntax keyword cppSTLtype error_condition
    syntax keyword cppSTLtype error_category
    syntax keyword cppSTLtype is_error_code_enum
    syntax keyword cppSTLtype is_error_condition_enum

    " thread {{{2
    syntax keyword cppSTLnamespace this_thread
    syntax keyword cppSTLtype thread

    " tuple {{{2
    syntax keyword cppSTLtype tuple
    syntax keyword cppSTLtype tuple_size
    syntax keyword cppSTLtype tuple_element
    syntax keyword cppSTLfunction make_tuple
    syntax keyword cppSTLfunction tie
    syntax keyword cppSTLfunction forward_as_tuple
    syntax keyword cppSTLfunction tuple_cat
    " Note: 'ignore' is already set as cppSTLfunction
    " syntax keyword cppSTLconstant ignore

    " typeindex {{{2
    syntax keyword cppSTLtype type_index

    " type_traits {{{2
    syntax keyword cppSTLtype is_void
    syntax keyword cppSTLtype is_integral
    syntax keyword cppSTLtype is_floating_point
    syntax keyword cppSTLtype is_array
    syntax keyword cppSTLtype is_enum
    syntax keyword cppSTLtype is_union
    syntax keyword cppSTLtype is_class
    syntax keyword cppSTLtype is_function
    syntax keyword cppSTLtype is_pointer
    syntax keyword cppSTLtype is_lvalue_reference
    syntax keyword cppSTLtype is_rvalue_reference
    syntax keyword cppSTLtype is_member_object_pointer
    syntax keyword cppSTLtype is_member_function_pointer
    syntax keyword cppSTLtype is_fundamental
    syntax keyword cppSTLtype is_arithmetic
    syntax keyword cppSTLtype is_scalar
    syntax keyword cppSTLtype is_object
    syntax keyword cppSTLtype is_compound
    syntax keyword cppSTLtype is_reference
    syntax keyword cppSTLtype is_member_pointer
    syntax keyword cppSTLtype is_const
    syntax keyword cppSTLtype is_volatile
    syntax keyword cppSTLtype is_trivial
    syntax keyword cppSTLtype is_trivially_copyable
    syntax keyword cppSTLtype is_standard_layout
    syntax keyword cppSTLtype is_pod
    syntax keyword cppSTLtype is_literal_type
    syntax keyword cppSTLtype is_empty
    syntax keyword cppSTLtype is_polymorphic
    syntax keyword cppSTLtype is_abstract
    syntax keyword cppSTLtype is_signed
    syntax keyword cppSTLtype is_unsigned
    syntax keyword cppSTLtype is_constructible
    syntax keyword cppSTLtype is_trivially_constructible
    syntax keyword cppSTLtype is_nothrow_constructible
    syntax keyword cppSTLtype is_default_constructible
    syntax keyword cppSTLtype is_trivially_default_constructible
    syntax keyword cppSTLtype is_nothrow_default_constructible
    syntax keyword cppSTLtype is_copy_constructible
    syntax keyword cppSTLtype is_trivially_copy_constructible
    syntax keyword cppSTLtype is_nothrow_copy_constructible
    syntax keyword cppSTLtype is_move_constructible
    syntax keyword cppSTLtype is_trivially_move_constructible
    syntax keyword cppSTLtype is_nothrow_move_constructible
    syntax keyword cppSTLtype is_assignable
    syntax keyword cppSTLtype is_trivially_assignable
    syntax keyword cppSTLtype is_nothrow_assignable
    syntax keyword cppSTLtype is_copy_assignable
    syntax keyword cppSTLtype is_trivially_copy_assignable
    syntax keyword cppSTLtype is_nothrow_copy_assignable
    syntax keyword cppSTLtype is_move_assignable
    syntax keyword cppSTLtype is_trivially_move_assignable
    syntax keyword cppSTLtype is_nothrow_move_assignable
    syntax keyword cppSTLtype is_destructible
    syntax keyword cppSTLtype is_trivially_destructible
    syntax keyword cppSTLtype is_nothrow_destructible
    syntax keyword cppSTLtype has_virtual_destructor
    syntax keyword cppSTLtype alignment_of
    syntax keyword cppSTLtype rank
    syntax keyword cppSTLtype extent
    syntax keyword cppSTLtype is_same
    syntax keyword cppSTLtype is_base_of
    syntax keyword cppSTLtype is_convertible
    syntax keyword cppSTLtype remove_cv
    syntax keyword cppSTLtype remove_const
    syntax keyword cppSTLtype remove_volatile
    syntax keyword cppSTLtype add_cv
    syntax keyword cppSTLtype add_const
    syntax keyword cppSTLtype add_volatile
    syntax keyword cppSTLtype remove_reference
    syntax keyword cppSTLtype add_lvalue_reference
    syntax keyword cppSTLtype add_rvalue_reference
    syntax keyword cppSTLtype remove_pointer
    syntax keyword cppSTLtype add_pointer
    syntax keyword cppSTLtype make_signed
    syntax keyword cppSTLtype make_unsigned
    syntax keyword cppSTLtype remove_extent
    syntax keyword cppSTLtype remove_all_extents
    syntax keyword cppSTLtype aligned_storage
    syntax keyword cppSTLtype aligned_union
    syntax keyword cppSTLtype decay
    syntax keyword cppSTLtype enable_if
    syntax keyword cppSTLtype conditional
    syntax keyword cppSTLtype common_type
    syntax keyword cppSTLtype underlying_type
    syntax keyword cppSTLtype result_of
    syntax keyword cppSTLtype integral_constant
    syntax keyword cppSTLtype true_type
    syntax keyword cppSTLtype false_type

    " unordered_map, unordered_set, unordered_multimap, unordered_multiset {{{2
    syntax keyword cppSTLtype unordered_map
    syntax keyword cppSTLtype unordered_set
    syntax keyword cppSTLtype unordered_multimap
    syntax keyword cppSTLtype unordered_multiset
    syntax keyword cppSTLtype hasher
    syntax keyword cppSTLtype key_equal
    syntax keyword cppSTLiterator local_iterator
    syntax keyword cppSTLiterator const_local_iterator

    " utility {{{2
    syntax keyword cppSTLtype piecewise_construct_t
    syntax keyword cppSTLconstant piecewise_construct
    syntax keyword cppSTLfunction declval
    syntax keyword cppSTLfunction forward
    syntax keyword cppSTLfunction move
    syntax keyword cppSTLfunction move_if_noexcept

    " raw string literals {{{2
    syntax region cppRawString matchgroup=cppRawDelimiter start=@\%(u8\|[uLU]\)\=R"\z([[:alnum:]_{}[\]#<>%:;.?*\+\-/\^&|~!=,"']\{,16}\)(@ end=/)\z1"/ contains=@Spell
    syn match cNumber "0b[01]\+"
    " }}}
endif " C++11


" C++14 extensions {{{1

if !exists('cpp_no_cpp14')
    " chrono {{{2
    syntax keyword cppSTLnamespace literals
    syntax keyword cppSTLnamespace chrono_literals

    " memory {{{2
    syntax keyword cppSTLfunction make_unique

    " utility {{{2
    syntax keyword cppSTLtype integer_sequence
    syntax keyword cppSTLtype index_sequence
    syntax keyword cppSTLtype make_integer_sequence
    syntax keyword cppSTLtype make_index_sequence
    syntax keyword cppSTLtype index_sequence_for

    " shared_mutex {{{2
    syntax keyword cppSTLtype shared_timed_mutex
    syntax keyword cppSTLtype shared_lock

    " string {{{2
    syntax keyword cppSTLnamespace string_literals

    " tuple {{{2
    syntax keyword cppSTLtype tuple_element_t

    " type_traits {{{2
    syntax keyword cppSTLtype is_null_pointer
    syntax keyword cppSTLtype remove_cv_t
    syntax keyword cppSTLtype remove_const_t
    syntax keyword cppSTLtype remove_volatile_t
    syntax keyword cppSTLtype add_cv_t
    syntax keyword cppSTLtype add_const_t
    syntax keyword cppSTLtype add_volatile_t
    syntax keyword cppSTLtype remove_reference_t
    syntax keyword cppSTLtype add_lvalue_reference_t
    syntax keyword cppSTLtype add_rvalue_reference_t
    syntax keyword cppSTLtype remove_pointer_t
    syntax keyword cppSTLtype add_pointer_t
    syntax keyword cppSTLtype make_signed_t
    syntax keyword cppSTLtype make_unsigned_t
    syntax keyword cppSTLtype remove_extent_t
    syntax keyword cppSTLtype remove_all_extents_t
    syntax keyword cppSTLtype aligned_storage_t
    syntax keyword cppSTLtype aligned_union_t
    syntax keyword cppSTLtype decay_t
    syntax keyword cppSTLtype enable_if_t
    syntax keyword cppSTLtype conditional_t
    syntax keyword cppSTLtype common_type_t
    syntax keyword cppSTLtype underlying_type_t
    syntax keyword cppSTLtype result_of_t
    " }}}
endif " C++14


" C++17 extensions {{{1

if !exists('cpp_no_cpp17')
    " any {{{2
    syntax keyword cppSTLtype any
    syntax keyword cppSTLexception bad_any_cast
    syntax keyword cppSTLcast any_cast

    " atomic {{{2
    syntax keyword cppSTLconstant is_always_lock_free

    " chrono {{{2
    syntax keyword cppSTLbool treat_as_floating_point_v

    " execution {{{2
    syntax keyword cppSTLnamespace execution
    syntax keyword cppSTLconstant seq par par_unseq
    syntax keyword cppSTLbool is_execution_policy_v
    syntax keyword cppSTLtype sequenced_policy
    syntax keyword cppSTLtype parallel_policy
    syntax keyword cppSTLtype parallel_unsequenced_policy
    syntax keyword cppSTLtype is_execution_policy

    " filesystem {{{2
    syntax keyword cppSTLnamespace filesystem
    syntax keyword cppSTLexception filesystem_error
    syntax keyword cppSTLtype path
    syntax keyword cppSTLtype directory_entry
    syntax keyword cppSTLtype directory_iterator
    syntax keyword cppSTLtype recursive_directory_iterator
    syntax keyword cppSTLtype file_status
    syntax keyword cppSTLtype space_info
    syntax keyword cppSTLtype file_time_type
    syntax keyword cppSTLenum file_type
    syntax keyword cppSTLenum perms
    syntax keyword cppSTLenum perm_options
    syntax keyword cppSTLenum copy_options
    syntax keyword cppSTLenum directory_options
    syntax keyword cppSTLenum format
    syntax keyword cppSTLconstant native_format generic_format auto_format
    syntax keyword cppSTLconstant preferred_separator
    syntax keyword cppSTLconstant skip_existing
    syntax keyword cppSTLconstant overwrite_existing
    syntax keyword cppSTLconstant update_existing
    syntax keyword cppSTLconstant recursive
    syntax keyword cppSTLconstant copy_symlinks
    syntax keyword cppSTLconstant skip_symlinks
    syntax keyword cppSTLconstant directories_only
    syntax keyword cppSTLconstant create_symlinks
    syntax keyword cppSTLconstant create_hard_links
    syntax keyword cppSTLconstant owner_read owner_write owner_exec owner_all
    syntax keyword cppSTLconstant group_read group_write group_exec group_all
    syntax keyword cppSTLconstant others_read others_write others_exec others_all
    syntax keyword cppSTLconstant set_uid set_gid sticky_bit
    syntax keyword cppSTLconstant follow_directory_symlink skip_permission_denied
    " Note: following keywords are very likely to coincide with some user-defined variables
    " syntax keyword cppSTLconstant all mask unknown
    " syntax keyword cppSTLconstant replace add remove nofollow
    " syntax keyword cppSTLconstant none
    " syntax keyword cppSTLconstant not_found
    " syntax keyword cppSTLconstant regular
    " syntax keyword cppSTLconstant directory
    " syntax keyword cppSTLconstant symlink
    " syntax keyword cppSTLconstant block
    " syntax keyword cppSTLconstant character
    " syntax keyword cppSTLconstant fifo
    " syntax keyword cppSTLconstant socket
    " syntax keyword cppSTLconstant unknown

    " Note: 'capacity' and 'free' are already set as cppSTLfunction
    " syntax keyword cppSTLconstant capacity
    " syntax keyword cppSTLconstant free
    " syntax keyword cppSTLconstant available

    " functional {{{2
    syntax keyword cppSTLtype default_order
    syntax keyword cppSTLtype default_order_t
    syntax keyword cppSTLtype default_searcher
    syntax keyword cppSTLtype boyer_moore_searcher
    syntax keyword cppSTLtype boyer_moore_horspool_searcher
    syntax keyword cppSTLbool is_bind_expression_v
    syntax keyword cppSTLbool is_placeholder_v

    " memory {{{2
    syntax keyword cppSTLcast reinterpret_pointer_cast
    syntax keyword cppSTLconstant uses_allocator_v

    " memory_resource {{{2
    syntax keyword cppSTLtype polymorphic_allocator
    syntax keyword cppSTLtype memory_resource
    syntax keyword cppSTLtype synchronized_pool_resource
    syntax keyword cppSTLtype unsynchronized_pool_resource
    syntax keyword cppSTLtype pool_options
    syntax keyword cppSTLtype monotonic_buffer_resource

    " mutex {{{2
    syntax keyword cppSTLtype scoped_lock

    " new {{{2
    syntax keyword cppSTLconstant hardware_destructive_interference_size
    syntax keyword cppSTLconstant hardware_constructive_interference_size

    " optional {{{2
    syntax keyword cppSTLtype optional
    syntax keyword cppSTLtype nullopt_t
    syntax keyword cppSTLexception bad_optional_access
    syntax keyword cppSTLconstant nullopt
    syntax keyword cppSTLfunction make_optional

    " shared_mutex {{{2
    syntax keyword cppSTLtype shared_mutex

    " string_view {{{2
    syntax keyword cppSTLtype basic_string_view
    syntax keyword cppSTLtype string_view
    syntax keyword cppSTLtype wstring_view
    syntax keyword cppSTLtype u16string_view
    syntax keyword cppSTLtype u32string_view

    " system_error {{{2
    syntax keyword cppSTLbool is_error_code_enum_v
    syntax keyword cppSTLbool is_error_condition_enum_v

    " tuple {{{2
    syntax keyword cppSTLconstant tuple_size_v
    syntax keyword cppSTLfunction make_from_tuple

    " type_traits {{{2
    syntax keyword cppSTLbool is_void_v
    syntax keyword cppSTLbool is_null_pointer_v
    syntax keyword cppSTLbool is_integral_v
    syntax keyword cppSTLbool is_floating_point_v
    syntax keyword cppSTLbool is_array_v
    syntax keyword cppSTLbool is_enum_v
    syntax keyword cppSTLbool is_union_v
    syntax keyword cppSTLbool is_class_v
    syntax keyword cppSTLbool is_function_v
    syntax keyword cppSTLbool is_pointer_v
    syntax keyword cppSTLbool is_lvalue_reference_v
    syntax keyword cppSTLbool is_rvalue_reference_v
    syntax keyword cppSTLbool is_member_object_pointer_v
    syntax keyword cppSTLbool is_member_function_pointer_v
    syntax keyword cppSTLbool is_fundamental_v
    syntax keyword cppSTLbool is_arithmetic_v
    syntax keyword cppSTLbool is_scalar_v
    syntax keyword cppSTLbool is_object_v
    syntax keyword cppSTLbool is_compound_v
    syntax keyword cppSTLbool is_reference_v
    syntax keyword cppSTLbool is_member_pointer_v
    syntax keyword cppSTLbool is_const_v
    syntax keyword cppSTLbool is_volatile_v
    syntax keyword cppSTLbool is_trivial_v
    syntax keyword cppSTLbool is_trivially_copyable_v
    syntax keyword cppSTLbool is_standard_layout_v
    syntax keyword cppSTLbool is_pod_v
    syntax keyword cppSTLbool is_literal_type_v
    syntax keyword cppSTLbool is_empty_v
    syntax keyword cppSTLbool is_polymorphic_v
    syntax keyword cppSTLbool is_abstract_v
    syntax keyword cppSTLbool is_signed_v
    syntax keyword cppSTLbool is_unsigned_v
    syntax keyword cppSTLbool is_constructible_v
    syntax keyword cppSTLbool is_trivially_constructible_v
    syntax keyword cppSTLbool is_nothrow_constructible_v
    syntax keyword cppSTLbool is_default_constructible_v
    syntax keyword cppSTLbool is_trivially_default_constructible_v
    syntax keyword cppSTLbool is_nothrow_default_constructible_v
    syntax keyword cppSTLbool is_copy_constructible_v
    syntax keyword cppSTLbool is_trivially_copy_constructible_v
    syntax keyword cppSTLbool is_nothrow_copy_constructible_v
    syntax keyword cppSTLbool is_move_constructible_v
    syntax keyword cppSTLbool is_trivially_move_constructible_v
    syntax keyword cppSTLbool is_nothrow_move_constructible_v
    syntax keyword cppSTLbool is_assignable_v
    syntax keyword cppSTLbool is_trivially_assignable_v
    syntax keyword cppSTLbool is_nothrow_assignable_v
    syntax keyword cppSTLbool is_copy_assignable_v
    syntax keyword cppSTLbool is_trivially_copy_assignable_v
    syntax keyword cppSTLbool is_nothrow_copy_assignable_v
    syntax keyword cppSTLbool is_move_assignable_v
    syntax keyword cppSTLbool is_trivially_move_assignable_v
    syntax keyword cppSTLbool is_nothrow_move_assignable_v
    syntax keyword cppSTLbool is_destructible_v
    syntax keyword cppSTLbool is_trivially_destructible_v
    syntax keyword cppSTLbool is_nothrow_destructible_v
    syntax keyword cppSTLbool has_virtual_destructor_v
    syntax keyword cppSTLbool is_same_v
    syntax keyword cppSTLbool is_base_of_v
    syntax keyword cppSTLbool is_convertible_v
    syntax keyword cppSTLbool is_callable_v
    syntax keyword cppSTLbool is_nowthrow_callable_v
    syntax keyword cppSTLbool conjunction_v
    syntax keyword cppSTLbool disjunction_v
    syntax keyword cppSTLbool negation_v
    syntax keyword cppSTLbool has_unique_object_representations_v
    syntax keyword cppSTLbool is_swappable_v
    syntax keyword cppSTLbool is_swappable_with_v
    syntax keyword cppSTLbool is_nothrow_swappable_v
    syntax keyword cppSTLbool is_nothrow_swappable_with_v
    syntax keyword cppSTLbool is_invocable_v
    syntax keyword cppSTLbool is_invocable_r_v
    syntax keyword cppSTLbool is_nothrow_invocable_v
    syntax keyword cppSTLbool is_nothrow_invocable_r_v
    syntax keyword cppSTLbool is_aggregate_v
    syntax keyword cppSTLconstant alignment_of_v
    syntax keyword cppSTLconstant rank_v
    syntax keyword cppSTLconstant extent_v
    syntax keyword cppSTLtype bool_constant
    syntax keyword cppSTLtype is_callable
    syntax keyword cppSTLtype is_nowthrow_callable
    syntax keyword cppSTLtype conjunction
    syntax keyword cppSTLtype disjunction
    syntax keyword cppSTLtype negation
    syntax keyword cppSTLtype void_t
    syntax keyword cppSTLtype has_unique_object_representations
    syntax keyword cppSTLtype is_swappable
    syntax keyword cppSTLtype is_swappable_with
    syntax keyword cppSTLtype is_nothrow_swappable
    syntax keyword cppSTLtype is_nothrow_swappable_with
    syntax keyword cppSTLtype is_invocable
    syntax keyword cppSTLtype is_invocable_r
    syntax keyword cppSTLtype is_nothrow_invocable
    syntax keyword cppSTLtype is_nothrow_invocable_r
    syntax keyword cppSTLtype invoke_result
    syntax keyword cppSTLtype invoke_result_t
    syntax keyword cppSTLtype is_aggregate

    " unordered_map, unordered_set, unordered_multimap, unordered_multiset {{{2
    syntax keyword cppSTLtype node_type
    syntax keyword cppSTLtype insert_return_type

    " utility {{{2
    syntax keyword cppSTLtype in_place_tag
    syntax keyword cppSTLtype in_place_t
    syntax keyword cppSTLtype in_place_type_t
    syntax keyword cppSTLtype in_place_index_t

    " variant {{{2
    syntax keyword cppSTLtype variant
    syntax keyword cppSTLtype monostate
    syntax keyword cppSTLtype variant_size
    syntax keyword cppSTLtype variant_alternative
    syntax keyword cppSTLtype variant_alternative_t
    syntax keyword cppSTLconstant variant_size_v
    syntax keyword cppSTLconstant variant_npos
    syntax keyword cppSTLexception bad_variant_access
    " }}}
endif " C++17


" C++20 extensions {{{1

if !exists('cpp_no_cpp20')
    syntax keyword cppStatement consteval
    syntax keyword cppStatement concept requires
    syntax keyword cppStatement co_yield co_return
    syntax keyword cppOperator co_await

    " memory {{{2
    syntax keyword cppSTLfunction make_unique_default_init make_shared_default_init
    syntax keyword cppSTLfunction allocate_shared_default_init
    syntax keyword cppSTLfunction uses_allocator_construction_args
    syntax keyword cppSTLfunction make_obj_using_allocator

    " type_traits {{{2
    syntax keyword cppSTLtype remove_cvref remove_cvref_t
    syntax keyword cppSTLtype is_bounded_array is_unbounded_array
    syntax keyword cppSTLbool is_bounded_array_v is_unbounded_array_v
    syntax keyword cppSTLtype is_nothrow_convertible
    syntax keyword cppSTLbool is_nothrow_convertible_v
    " syntax keyword cppSTLtype endian

    " atomic {{{2
    syntax keyword cppSTLtype atomic_ref

    " compare {{{2
    syntax keyword cppSTLtype weak_ordering strong_ordering partial_ordering
    syntax keyword cppSTLtype weak_equality strong_equality
    syntax keyword cppSTLtype common_comparison_category common_comparison_category_t

    " concepts {{{2
    " From: https://en.cppreference.com/w/cpp/concepts
    syntax keyword cppSTLconcept Same
    syntax keyword cppSTLconcept DerivedFrom
    syntax keyword cppSTLconcept ConvertibleTo
    syntax keyword cppSTLconcept CommonReference
    syntax keyword cppSTLconcept Common
    syntax keyword cppSTLconcept Integral
    syntax keyword cppSTLconcept SignedIntegral
    syntax keyword cppSTLconcept UnsignedIntegral
    syntax keyword cppSTLconcept Assignable
    syntax keyword cppSTLconcept Swappable
    syntax keyword cppSTLconcept SwappableWith
    syntax keyword cppSTLconcept Destructible
    syntax keyword cppSTLconcept Constructible
    syntax keyword cppSTLconcept DefaultConstructible
    syntax keyword cppSTLconcept MoveConstructible
    syntax keyword cppSTLconcept CopyConstructible
    syntax keyword cppSTLconcept Boolean
    syntax keyword cppSTLconcept EqualityComparable
    syntax keyword cppSTLconcept EqualityComparableWith
    syntax keyword cppSTLconcept StrictTotallyOrdered
    syntax keyword cppSTLconcept StrictTotallyOrderedWith
    syntax keyword cppSTLconcept Movable
    syntax keyword cppSTLconcept Copyable
    syntax keyword cppSTLconcept Semiregular
    syntax keyword cppSTLconcept Regular
    syntax keyword cppSTLconcept Invocable
    syntax keyword cppSTLconcept RegularInvocable
    syntax keyword cppSTLconcept Predicate
    syntax keyword cppSTLconcept Relation
    syntax keyword cppSTLconcept StrictWeakOrder

    " concepts - named requirements {{{2
    " Those are concepts that haven't made it into the C++ standard yet
    " https://en.cppreference.com/w/cpp/named_req
    " http://en.cppreference.com/w/cpp/language/constraints
    if exists('g:cpp_named_requirements_highlight') && g:cpp_named_requirements_highlight
        syntax keyword cppSTLNamedReq MoveAssignable
        syntax keyword cppSTLNamedReq CopyAssignable
        syntax keyword cppSTLNamedReq TriviallyCopyable
        syntax keyword cppSTLNamedReq TrivialType
        syntax keyword cppSTLNamedReq StandardLayoutType
        syntax keyword cppSTLNamedReq PODType
        syntax keyword cppSTLNamedReq LessThanComparable
        syntax keyword cppSTLNamedReq ValueSwappable
        syntax keyword cppSTLNamedReq NullablePointer
        syntax keyword cppSTLNamedReq Hash
        syntax keyword cppSTLNamedReq Allocator
        syntax keyword cppSTLNamedReq FunctionObject
        syntax keyword cppSTLNamedReq Callable
        syntax keyword cppSTLNamedReq BinaryPredicate
        syntax keyword cppSTLNamedReq Compare
        syntax keyword cppSTLNamedReq Container
        syntax keyword cppSTLNamedReq ReversibleContainer
        syntax keyword cppSTLNamedReq AllocatorAwareContainer
        syntax keyword cppSTLNamedReq SequenceContainer
        syntax keyword cppSTLNamedReq ContiguousContainer
        syntax keyword cppSTLNamedReq AssociativeContainer
        syntax keyword cppSTLNamedReq UnorderedAssociativeContainer
        syntax keyword cppSTLNamedReq DefaultInsertable
        syntax keyword cppSTLNamedReq CopyInsertable
        syntax keyword cppSTLNamedReq CopyInsertable
        syntax keyword cppSTLNamedReq MoveInsertable
        syntax keyword cppSTLNamedReq EmplaceConstructible
        syntax keyword cppSTLNamedReq Erasable
        syntax keyword cppSTLNamedReq Iterator
        syntax keyword cppSTLNamedReq InputIterator
        syntax keyword cppSTLNamedReq OutputIterator
        syntax keyword cppSTLNamedReq ForwardIterator
        syntax keyword cppSTLNamedReq BidirectionalIterator
        syntax keyword cppSTLNamedReq RandomAccessIterator
        syntax keyword cppSTLNamedReq ContiguousIterator
        syntax keyword cppSTLNamedReq ConstExprIterator
        syntax keyword cppSTLNamedReq UnformattedInputFunction
        syntax keyword cppSTLNamedReq FormattedInputFunction
        syntax keyword cppSTLNamedReq UnformattedOutputFunction
        syntax keyword cppSTLNamedReq FormattedOutputFunction
        syntax keyword cppSTLNamedReq SeedSequence
        syntax keyword cppSTLNamedReq UniformRandomBitGenerator
        syntax keyword cppSTLNamedReq RandomNumberEngine
        syntax keyword cppSTLNamedReq RandomNumberEngineAdaptor
        syntax keyword cppSTLNamedReq RandomNumberDistribution
        syntax keyword cppSTLNamedReq BasicLockable
        syntax keyword cppSTLNamedReq Lockable
        syntax keyword cppSTLNamedReq TimedLockable
        syntax keyword cppSTLNamedReq Mutex
        syntax keyword cppSTLNamedReq TimedMutex
        syntax keyword cppSTLNamedReq SharedMutex
        syntax keyword cppSTLNamedReq SharedTimedMutex
        syntax keyword cppSTLNamedReq UnaryTypeTrait
        syntax keyword cppSTLNamedReq BinaryTypeTrait
        syntax keyword cppSTLNamedReq TransformationTrait
        syntax keyword cppSTLNamedReq Clock
        syntax keyword cppSTLNamedReq TrivialClock
        syntax keyword cppSTLNamedReq CharTraits
        syntax keyword cppSTLNamedReq BitmaskType
        syntax keyword cppSTLNamedReq NumericType
        syntax keyword cppSTLNamedReq RegexTraits
        syntax keyword cppSTLNamedReq LiteralType
        hi def link cppSTLNamedReq Typedef
    endif " C++ named requirements

    " contract {{{2
    syntax keyword cppSTLtype contract_violation

    " coroutines {{{2
    syntax keyword cppSTLtype coroutine_traits coroutine_handle
    syntax keyword cppSTLtype noop_coroutine_handle noop_coroutine_promise
    syntax keyword cppSTLtype suspend_never suspend_always

    " ranges {{{2
    syntax keyword cppSTLconcept Range SizedRange View InputRange OutputRange ForwardRange
    syntax keyword cppSTLconcept BidirectionalRange RandomAccessRange ContiguousRange
    syntax keyword cppSTLconcept CommonRange ViewableRange
    syntax keyword cppSTLtype iterator_t sentinel_t dangling
    syntax keyword cppSTLtype safe_iterator_t safe_subrange_t
    syntax keyword cppSTLtype ref_view filter_view transform_view iota_view join_view empty_view
    syntax keyword cppSTLtype single_view split_view common_view reverse_view view_interface
    syntax keyword cppSTLnamespace ranges
    " syntax keyword cppSTLnamespace view

    " span {{{2
    syntax keyword cppSTLtype span

    " syncstream {{{2
    syntax keyword cppSTLtype basic_syncbuf basic_osyncstream
    syntax keyword cppSTLtype syncbuf wsyncbuf osyncstream wosyncstream
    " }}}
endif " C++20


" Boost extensions {{{1
if !exists('cpp_no_boost')
    syntax keyword cppSTLnamespace boost
    syntax keyword cppSTLcast lexical_cast
endif


" Default highlighting {{{1
hi def link cppSTLbool         Boolean
hi def link cppStatement       Statement
hi def link cppSTLfunction     Function
hi def link cppSTLfunctional   Typedef
hi def link cppSTLconstant     Constant
hi def link cppSTLnamespace    Constant
hi def link cppSTLtype         Typedef
hi def link cppSTLexception    Exception
hi def link cppSTLiterator     Typedef
hi def link cppSTLiterator_tag Typedef
hi def link cppSTLenum         Typedef
hi def link cppSTLios          Function
hi def link cppSTLcast         Statement
hi def link cppRawString       String
hi def link cppRawDelimiter    Delimiter
hi def link cppSTLconcept      Typedef
hi def link cppSTLVariable     Identifier

" The keywords {inline, virtual, explicit, export, override, final} are
" standard C++ keywords and NOT types!
hi link cppModifier Statement


" Optional highlighting {{{1
" Highlight all standard C++ keywords as Statement
if exists('g:cpp_simple_highlight') && g:cpp_simple_highlight
    hi link cppStructure    Statement
    hi link cppExceptions   Statement
    hi link cppStorageClass Statement
    hi link cppSTLexception Typedef
endif
