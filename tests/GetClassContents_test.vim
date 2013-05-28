fun! TestCase_reads_in_the_class_from_the_list_of_lines()
    let location =  expand('%:p:h')."/".'fixtures/GetClassContents/foo.class.php'
    let contents = phpcomplete#GetClassContents(readfile(location), 'FooClass')
    let expected = join(readfile(location)[1:], "\n")
    call VUAssertEquals(expected, contents)
endf

fun! TestCase_only_reads_in_the_class_content()
    let location =  expand('%:p:h')."/".'fixtures/GetClassContents/foo_with_extra_content.class.php'
    let contents = phpcomplete#GetClassContents(readfile(location), 'FooClass')
    let expected = join(readfile(location)[5:8], "\n")
    call VUAssertEquals(expected, contents)
endf

fun! TestCase_only_reads_in_the_extended_class_content()
    " tags used to find the extended classes
    exe 'set tags='.expand('%:p:h')."/".'fixtures/GetClassContents/tags'
    let g:php_builtin_classes = {}
    let location         =  expand('%:p:h')."/".'fixtures/GetClassContents/extends/foo_extends_bar.class.php'
    let extends_location =  expand('%:p:h')."/".'fixtures/GetClassContents/extends/bar.class.php'

    let contents = phpcomplete#GetClassContents(readfile(location), 'FooClass')

    let expected = readfile(location)[2]."\n".readfile(extends_location)[2]
    call VULog(expected)

    call VUAssertEquals(expected, contents)
endf

fun! TestCase_only_reads_in_the_extended_classes_recursive()
    " tags used to find the extended classes
    exe 'set tags='.expand('%:p:h')."/".'fixtures/GetClassContents/tags'
    let g:php_builtin_classes = {}
    let location                 =  expand('%:p:h')."/".'fixtures/GetClassContents/extends_extends/foo2_extends_bar2.class.php'
    let extends_location         =  expand('%:p:h')."/".'fixtures/GetClassContents/extends_extends/bar2_extends_baz.class.php'
    let extends_extends_location =  expand('%:p:h')."/".'fixtures/GetClassContents/extends_extends/baz.class.php'

    let expected  = readfile(location)[2]."\n"
    let expected .= readfile(extends_location)[2]."\n"
    let expected .= readfile(extends_extends_location)[2]
    call VULog(expected)

    let contents = phpcomplete#GetClassContents(readfile(location), 'FooClass2')

    call VUAssertEquals(expected, contents)
endf
