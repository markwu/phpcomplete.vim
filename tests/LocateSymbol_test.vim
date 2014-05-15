fun! SetUp()
    " normalize g:phpcomplete_min_num_of_chars_for_namespace_completion option
    let g:phpcomplete_min_num_of_chars_for_namespace_completion = 2
    " disable built-in classes
    let g:php_builtin_classnames = {}
    let g:php_builtin_classes = {}
    " disable built-in interfaces
    let g:php_builtin_interfaces = {}
    let g:php_builtin_interfacenames = {}
    " disable built-in functions
    let g:php_builtin_functions = {}
    " disable tags
    exe ':set tags='
endf

fun! TestCase_returns_empty_strings_when_symbol_not_found()
	call SetUp()

	let res = phpcomplete#LocateSymbol('no_such_thing', '', '', {})
	call VUAssertEquals(['', '', ''], res)
endf

fun! TestCase_returns_symbol_locations()
	call SetUp()

	let path =  expand('%:p:h')."/".'fixtures/GetCurrentSymbolWithContext/foo.php'
    below 1new
    exe ":silent! edit ".path

	let res = phpcomplete#LocateSymbol('get_foo', '', '', {})
	call VUAssertEquals([path, 15, 10], res)

	let res = phpcomplete#LocateSymbol('baz', 'get_foo()->', '', {})
	call VUAssertEquals([path, 4, 18], res)

	let res = phpcomplete#LocateSymbol('Foo', '', '', {})
	call VUAssertEquals([path, 2, 7], res)

	let res = phpcomplete#LocateSymbol('baz', 'Foo::', '', {})
	call VUAssertEquals([path, 4, 18], res)

	silent! bw! %
endf

fun! TestCase_returns_symbol_locations_with_namespaces()
	call SetUp()

    exe ':set tags='.expand('%:p:h').'/'.'fixtures/GetCurrentSymbolWithContext/namespaced_tags'

	let foo2_path = 'fixtures/GetCurrentSymbolWithContext/namespaced_foo2.php'
	let path = expand('%:p:h')."/".'fixtures/GetCurrentSymbolWithContext/namespaced_foo.php'
    below 1new
    exe ":silent! edit ".path

	let res = phpcomplete#LocateSymbol('returnFoo2', '$f2->returnBaz2()->', 'NS1', {})
	call VUAssertEquals([foo2_path, 22, 18], res)

	let res = phpcomplete#LocateSymbol('returnBaz2', '$f2->', 'NS1', {})
	call VUAssertEquals([foo2_path, 11, 18], res)

	silent! bw! %
endf
