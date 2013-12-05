fun! TestCase_extract_class_from_the_same_file_when_line_referes_to_this()
    let path = expand('%:p:h')."/"."fixtures/GetClassName/foo.class.php"
    below 1new
    exe ":silent! edit ".path

    exe ':6'
    let classname = phpcomplete#GetClassName(6, '$this->', '\', {})
    call VUAssertEquals('FooClass', classname)

    let classname = phpcomplete#GetClassName(6, '$this->', 'Foo', {})
    call VUAssertEquals('Foo\FooClass', classname)

    exe ':7'
    let classname = phpcomplete#GetClassName(7, 'self::', '\', {})
    call VUAssertEquals('FooClass', classname)

    silent! bw! %

    " detection should work with extra whitespace
    " around keywords or uppercase keywords
    let path = expand('%:p:h')."/"."fixtures/GetClassName/foo_with_whitespace.class.php"
    below 1new
    exe ":silent! edit ".path
    exe ':10'

    let classname = phpcomplete#GetClassName(10, '$this->', '\', {})
    call VUAssertEquals('FooClass', classname)

    exe ':11'
    let classname = phpcomplete#GetClassName(11, 'self::', '\', {})
    call VUAssertEquals('FooClass', classname)

    silent! bw! %
endf

fun! TestCase_returns_empty_when_sees_curlyclose_on_line_start()
    let path = expand('%:p:h')."/"."fixtures/GetClassName/foo_outside.class.php"
    below 1new
    exe ":silent! edit ".path
    exe ':6'

    let classname = phpcomplete#GetClassName(6, '$this->', '\', {})
    call VUAssertEquals('', classname)

    exe ':7'
    let classname = phpcomplete#GetClassName(7, 'self::', '\', {})
    call VUAssertEquals('', classname)

    silent! bw! %
endf

fun! TestCase_finds_abstract_classes()
    let path = expand('%:p:h')."/"."fixtures/GetClassName/foo_abstract.class.php"
    below 1new
    exe ":silent! edit ".path
    exe ':6'

    let classname = phpcomplete#GetClassName(6, '$this->', '\', {})
    call VUAssertEquals('FooAbstract', classname)

    exe ':7'
    let classname = phpcomplete#GetClassName(7, 'self::', '\', {})
    call VUAssertEquals('FooAbstract', classname)

    silent! bw! %

    " detection should work with extra whitespace
    " around keywords or uppercase keywords
    let path = expand('%:p:h')."/"."fixtures/GetClassName/foo_abstract_with_whitespace.class.php"
    below 1new
    exe ":silent! edit ".path
    exe ':10'

    let classname = phpcomplete#GetClassName(10, '$this->', '\', {})
    call VUAssertEquals('FooAbstract', classname)

    exe ':11'
    let classname = phpcomplete#GetClassName(11, 'self::', '\', {})
    call VUAssertEquals('FooAbstract', classname)

    silent! bw! %
endf

fun! TestCase_finds_new_keyword_instantiations_in_parentheses_from_php5_4()
    let classname = phpcomplete#GetClassName(1, '$a = (new FooClass)->', '\', {})
    call VUAssertEquals('FooClass', classname)

    let classname = phpcomplete#GetClassName(1, '$a = (new \Foo\FooClass)->', 'Bar', {})
    call VUAssertEquals('Foo\FooClass', classname)

    let classname = phpcomplete#GetClassName(1, '$a = (new FooClass)->', 'Bar', {})
    call VUAssertEquals('Bar\FooClass', classname)
endf

fun! TestCase_finds_variables_marked_with_AT_VAR_comments()
    let path = expand('%:p:h')."/"."fixtures/GetClassName/var_comment_mark.php"
    below 1new
    exe ":silent! edit ".path

    exe ':3'
    let classname = phpcomplete#GetClassName(3, '$bar->', '\', {})
    call VUAssertEquals('FooClass', classname)

    exe ':6'
    let classname = phpcomplete#GetClassName(6, '$bar2->', '\', {})
    call VUAssertEquals('FooClass', classname)

    let classname = phpcomplete#GetClassName(6, '$bar2->', 'Bar', {})
    call VUAssertEquals('Bar\FooClass', classname)

    exe ':9'
    let classname = phpcomplete#GetClassName(9, '$bar3->', '\', {'Renamed': {'name': 'OriginalFoo', 'kind': 'c', 'builtin':0,}})
    call VUAssertEquals('OriginalFoo', classname)

    exe ':13'
    let classname = phpcomplete#GetClassName(13, '$foo_conflicting_sources->', '\', {})
    call VUAssertEquals('Foo', classname, 'when multiple sources available for the class name, explicit marker takes precedence')

    silent! bw! %
endf

fun! TestCase_finds_classes_from_variable_equals_new_class_lines()
    let path = expand('%:p:h')."/"."fixtures/GetClassName/foo_equals_new_foo.php"
    below 1new
    exe ":silent! edit ".path

    exe ':4'
    let classname = phpcomplete#GetClassName(4, '$foo->', '\', {})
    call VUAssertEquals('FooClass', classname)

    exe ':4'
    let classname = phpcomplete#GetClassName(4, '$foo->', 'Bar', {})
    call VUAssertEquals('Bar\FooClass', classname)

    exe ':8'
    let classname = phpcomplete#GetClassName(8, '$foo->', '\', {'RenamedFoo': {'name': 'OriginalFoo', 'kind': 'c', 'builtin':0,}})
    call VUAssertEquals('OriginalFoo', classname)

    silent! bw! %
endf

fun! TestCase_finds_common_singleton_getInstance_calls()
    let path = expand('%:p:h')."/"."fixtures/GetClassName/singleton_getinstance.php"
    below 1new
    exe ":silent! edit ".path

    exe ':4'
    let classname = phpcomplete#GetClassName(4, '$foo->', '\', {})
    call VUAssertEquals('FooClass', classname)

    exe ':4'
    let classname = phpcomplete#GetClassName(4, '$foo->', 'Bar', {})
    call VUAssertEquals('Bar\FooClass', classname)

    exe ':8'
    let classname = phpcomplete#GetClassName(8, '$foo->', '\', {'RenamedFoo': {'name': 'OriginalFoo', 'kind': 'c', 'builtin':0,}})
    call VUAssertEquals('OriginalFoo', classname)

    silent! bw! %
endf

fun! TestCase_returns_return_type_of_built_in_objects_static_methods()
    let path = expand('%:p:h')."/"."fixtures/GetClassName/builtin_static_return_type.php"
    below 1new
    exe ":silent! edit ".path

    exe ':4'
    call phpcomplete#LoadData()
    let classname = phpcomplete#GetClassName(4, '$d->', '\', {})
    call VUAssertEquals('DateTime', classname)

    " built in class return values should not be affected by current namespace
    exe ':4'
    call phpcomplete#LoadData()
    let classname = phpcomplete#GetClassName(4, '$d->', 'Bar', {})
    call VUAssertEquals('DateTime', classname)

    exe ':7'
    call phpcomplete#LoadData()
    let classname = phpcomplete#GetClassName(7, '$d->', '\', {'DT': {'name': 'DateTime', 'kind': 'c', 'builtin':1,}})
    call VUAssertEquals('DateTime', classname)

    silent! bw! %
endf

fun! TestCase_returns_class_from_static_method_call()
    let classname = phpcomplete#GetClassName(1, 'FooClass::', '\', {})
    call VUAssertEquals('FooClass', classname)

    let classname = phpcomplete#GetClassName(1, 'FooClass::', 'Bar', {})
    call VUAssertEquals('Bar\FooClass', classname)

    let classname = phpcomplete#GetClassName(1, 'RenamedFoo::', '\', {'RenamedFoo': {'name': 'OriginalFoo', 'kind': 'c', 'builtin':0,}})
    call VUAssertEquals('OriginalFoo', classname)
endf

fun! TestCase_returns_class_from_tags_with_tag_of_v_kind_and_a_new_equals_class_cmd()
    " see TAGS file in the tests/fixtures/GetClassName directory
    exe 'set tags='.expand('%:p:h')."/".'fixtures/GetClassName/TAGS'

    let path = expand('%:p:h')."/"."fixtures/GetClassName/foo_only_from_tags.php"
    below 1new
    exe ":silent! edit ".path

    exe ':3'
    let classname = phpcomplete#GetClassName(3, '$foo_only_in_tags->', '\', {})
    call VUAssertEquals('FooClass', classname)

    " TODO
    " exe ':5'
    " let classname = phpcomplete#GetClassName('$foo_only_in_tags::')
    " call VUAssertEquals('FooClass', classname)
    silent! bw! %
endf

fun! TestCase_extract_typehint_from_function_calls()
    call phpcomplete#LoadData()
    let path = expand('%:p:h')."/"."fixtures/GetClassName/typehinted_functions.php"
    below 1new
    exe ":silent! edit ".path

    exe ':4'
    let classname = phpcomplete#GetClassName(4, '$bar->', '\', {})
    call VUAssertEquals('FooClass1', classname)

    " typehinds are affected by current namespace as everyting else
    let classname = phpcomplete#GetClassName(4, '$bar->', 'Bar', {})
    call VUAssertEquals('Bar\FooClass1', classname)

    exe ':8'
    let classname = phpcomplete#GetClassName(8, '$bar->', '\', {})
    call VUAssertEquals('FooClass2', classname)

    exe ':12'
    let classname = phpcomplete#GetClassName(12, '$bar->', '\', {})
    call VUAssertEquals('FooClass3', classname)

    exe ':16'
    let classname = phpcomplete#GetClassName(16, '$bar->', '\', {})
    call VUAssertEquals('FooClass4', classname)

    exe ':20'
    let classname = phpcomplete#GetClassName(20, '$bar->', '\', {})
    call VUAssertEquals('FooClass5', classname)

    exe ':24'
    let classname = phpcomplete#GetClassName(24, '$bar->', '\', {})
    call VUAssertEquals('FooClass6', classname)

    exe ':28'
    let classname = phpcomplete#GetClassName(28, '$bar->', '\', {})
    call VUAssertEquals('FooClass7', classname)

    exe ':33'
    let classname = phpcomplete#GetClassName(33, '$bar->', '\', {})
    call VUAssertEquals('FooClass8', classname)

    exe ':40'
    let classname = phpcomplete#GetClassName(40, '$bar->', '\', {})
    call VUAssertEquals('FooClass9', classname, 'expect $baz to use type-hinting from class method')

    exe ':45'
    let classname = phpcomplete#GetClassName(45, '$baz->', '\', {})
    call VUAssertEquals('FooClass10', classname, 'expect $baz to use type-hinting from class method')

    exe ':50'
    let classname = phpcomplete#GetClassName(50, '$bar->', '\', {'RenamedFoo': {'name': 'OriginalFoo', 'kind': 'c', 'builtin':0,}})
    call VUAssertEquals('OriginalFoo', classname)

    silent! bw! %
endf

fun! TestCase_extract_parameter_type_from_docblock()
    let path = expand('%:p:h')."/"."fixtures/GetClassName/function_docblock.php"
    below 1new
    exe ":silent! edit ".path

    exe ':11'
    let classname = phpcomplete#GetClassName(11, '$bar1->', '\', {})
    call VUAssertEquals('BarClass1', classname)

    exe ':11'
    let classname = phpcomplete#GetClassName(11, '$bar1->', 'Bar', {})
    call VUAssertEquals('Bar\BarClass1', classname)

    exe ':27'
    let classname = phpcomplete#GetClassName(27, '$bar2->', '\', {})
    call VUAssertEquals('BarClass2', classname)

    exe ':39'
    let classname = phpcomplete#GetClassName(39, '$bar3->', '\', {})
    call VUAssertEquals('BarClass3', classname)

    silent! bw! %
endf

fun! TestCase_returns_static_function_calls_return_type()
    exe 'set tags='.expand('%:p:h')."/".'fixtures/GetClassName/static_docblock_return_tags'
    let path = expand('%:p:h').'/'.'fixtures/GetClassName/static_docblock_return.php'
    below 1new
    exe ":silent! edit ".path

    exe ':15'
    let classname = phpcomplete#GetClassName(15, '$u->', '\', {})
    call VUAssertEquals('User', classname)

    silent! bw! %
endf

fun! TestCase_returns_static_function_calls_retun_type_with_namespaces()
    let imports = {'P':{'name': 'Foo\Page', 'builtin': 0, 'kind': 'c'}, 'RenamedFoo':{'name': 'Foo', 'kind': 'n', 'builtin': 0, }}
    let g:php_builtin_classes = {}
    let g:php_builtin_classnames = {}
    exe 'set tags='.expand('%:p:h').'/'.'fixtures/GetClassName/static_docblock_return_tags'
    let path = expand('%:p:h').'/'.'fixtures/GetClassName/static_docblock_namespaced.php'
    below 1new
    exe ":silent! edit ".path

    exe ':32'
    let classname = phpcomplete#GetClassName(32, '$p->', 'Foo', imports)
    call VUAssertEquals('Foo\Page', classname)

    exe ':35'
    let classname = phpcomplete#GetClassName(35, '$p->', 'Foo', imports)
    call VUAssertEquals('Foo\Page', classname)

    exe ':38'
    let classname = phpcomplete#GetClassName(38, '$p->', 'Foo', imports)
    call VUAssertEquals('Foo\Page', classname)

    exe ':41'
    let classname = phpcomplete#GetClassName(41, '$p->', 'Foo', imports)
    call VUAssertEquals('Foo\Page', classname)

    exe ':44'
    let classname = phpcomplete#GetClassName(44, '$p->', 'Foo', imports)
    call VUAssertEquals('Foo\Page', classname)

    exe ':47'
    let classname = phpcomplete#GetClassName(47, '$p->', 'Foo', imports)
    call VUAssertEquals('Foo\Page', classname)

    exe ':50'
    let classname = phpcomplete#GetClassName(50, '$p->', 'Foo', imports)
    call VUAssertEquals('Foo\Page', classname)

    silent! bw! %
endf

fun! TestCase_resolves_call_chains_return_type_with_this()
	let g:php_builtin_classes = {}
	let g:php_builtin_classnames = {}

	let path = expand('%:p:h')."/"."fixtures/GetClassName/foo_method_chains.php"
    below 1new
    exe ":silent! edit ".path

    exe ':89'
    let classname = phpcomplete#GetClassName(89, '$this->', 'FooNS', {})
    call VUAssertEquals('FooNS\Foo', classname)

    exe ':85'
    let classname = phpcomplete#GetClassName(85, '$this->getSomething()->', 'FooNS', {})
    call VUAssertEquals('FooNS\SomethingNS\Something', classname)

    exe ':53'
    let classname = phpcomplete#GetClassName(53, '$this->getSomething()->', 'FooNS\SubNameSpace', {})
    call VUAssertEquals('FooNS\SomethingNS\Something', classname)

    silent! bw! %
endf

fun! TestCase_resolves_call_chains_return_type_with_tags()
	let g:php_builtin_classes = {}
	let g:php_builtin_classnames = {}

    exe 'set tags='.expand('%:p:h')."/".'fixtures/GetClassName/tags_inheritance'
	let path = expand('%:p:h')."/"."fixtures/GetClassName/foo_inheritance_level1.php"
    below 1new
    exe ":silent! edit ".path

    exe ':13'
    let classname = phpcomplete#GetClassName(13, '$this->', 'NS1\SubNS2', {})
    call VUAssertEquals('NS1\SubNS2\Level1', classname)

    exe ':14'
    let classname = phpcomplete#GetClassName(14, '$this->getLevel31Instance()->', 'NS1\SubNS2', {})
    call VUAssertEquals('NS31\SubNS\Level31', classname)

    exe ':15'
    let classname = phpcomplete#GetClassName(15, '$this->getAnother31Instance()->', 'NS1\SubNS2', {})
    call VUAssertEquals('NS31\SubNS\Level31', classname)

    silent! bw! %
endf

fun! TestCase_resolves_call_chains_return_type_with_php5_4_new()
	let g:php_builtin_classes = {}
	let g:php_builtin_classnames = {}

	let path = expand('%:p:h')."/"."fixtures/GetClassName/foo_new_oneline_chain.php"

    below 1new
    exe ":silent! edit ".path

    exe ':18'
    let classname = phpcomplete#GetClassName(18, '(new Foo)->return_bar()->', '\', {})
    call VUAssertEquals('Bar', classname)

    silent! bw! %
endf

fun! TestCase_resolves_call_chains_return_type_with_when_chain_head_class_detectable()
	let g:php_builtin_classes = {}
	let g:php_builtin_classnames = {}

	let path = expand('%:p:h')."/"."fixtures/GetClassName/call_chains.php"

    below 1new
    exe ":silent! edit ".path

    exe ':68'
    let classname = phpcomplete#GetClassName(68, '$foo->return_bar()->return_foo()->return_bar()->', '\', {})
    call VUAssertEquals('Bar', classname)

    exe ':71'
    let classname = phpcomplete#GetClassName(71, '$foo->return_bar()->return_foo()->return_bar()->', '\', {})
    call VUAssertEquals('Bar', classname)

    exe ':74'
    let classname = phpcomplete#GetClassName(74, '$foo->return_bar()->return_foo()->return_bar()->', '\', {})
    call VUAssertEquals('Bar', classname)

    exe ':77'
    let classname = phpcomplete#GetClassName(77, '$foo->bar->', '\', {})
    call VUAssertEquals('Bar', classname)

    exe ':78'
    let classname = phpcomplete#GetClassName(78, '$foo->bar->', '\', {})
    call VUAssertEquals('Bar', classname)

    exe ':79'
    let classname = phpcomplete#GetClassName(79, '$foo->bar->', '\', {})
    call VUAssertEquals('Bar', classname)

    exe ':80'
    let classname = phpcomplete#GetClassName(80, '$foo->bar->foo->', '\', {})
    call VUAssertEquals('Foo', classname)

    silent! bw! %
endf

fun! TestCase_resolves_call_chains_return_type_with_when_chain_head_class_detectable_with_builtin_types()
    call phpcomplete#LoadData()
    let path = expand('%:p:h')."/"."fixtures/GetClassName/call_chains.php"

    below 1new
    exe ":silent! edit ".path

    exe ':87'
    let classname = phpcomplete#GetClassName(87, '$doc->createAttribute()->ownerElement->', '\', {})
    call VUAssertEquals('DOMElement', classname)

    exe ':90'
    let classname = phpcomplete#GetClassName(90, '$d->add()->getTimezone()->', '\', {})
    call VUAssertEquals('DateTimeZone', classname)

    exe ':94'
    let classname = phpcomplete#GetClassName(94, '$tz->', '\', {})
    call VUAssertEquals('DateTimeZone', classname)

    exe ':98'
    let classname = phpcomplete#GetClassName(98, '$foobar->', '\', {})
    call VUAssertEquals('Foo', classname)

    " set up place of the opening <?php, this would be set up from the main
    " completion function for the current completion
    exe 'let b:phpbegin = [0, 0]'
    exe ':105'
    let classname = phpcomplete#GetClassName(105, '$bar2->', '\', {})
    call VUAssertEquals('Bar', classname)

    exe ':109'
    let classname = phpcomplete#GetClassName(109, '$bar3->return_foo()->', '\', {})
    call VUAssertEquals('Foo', classname)

    silent! bw! %
endf
