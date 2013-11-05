fun! TestCase_returns_instuction_string()
    let path =  expand('%:p:h')."/".'fixtures/GetCurrentInstruction/instructions.php'
    below 1new
    exe ":silent! edit ".path

    call cursor(3, 8)
    let res = phpcomplete#GetCurrentInstruction([1, 1])
    call VUAssertEquals('use Foo1', res, 'should read in the first line as-is')

    call cursor(7, 7)
    let res = phpcomplete#GetCurrentInstruction([1, 1])
    call VUAssertEquals('use Foo2,    Bar', res, 'should return the previous line if the instruction spans multiple line')

    call cursor(12, 7)
    let res = phpcomplete#GetCurrentInstruction([1, 1])
    call VUAssertEquals('use Foo3,        Baz', res, 'should skip content of a comment inside an instruction')

    call cursor(17, 7)
    let res = phpcomplete#GetCurrentInstruction([1, 1])
    call VUAssertEquals('$a = new    Foo', res, 'should simply ignore empty lines')

    call cursor(24, 17)
    let res = phpcomplete#GetCurrentInstruction([1, 1])
    call VUAssertEquals(
                \ 'array_merge(        array('';''),    $some_variable,    $object->call',
                \ res,
                \ 'semicolons in comments or string should be ignored')

    call cursor(37, 6)
    let res = phpcomplete#GetCurrentInstruction([1, 1])
    call VUAssertEquals(
                \ '$some->foo = $some_long_variable->love()->me()->love()->me()->say()->that()->you()->love',
                \ res)

    call cursor(42, 20)
    let res = phpcomplete#GetCurrentInstruction([1, 1])
    call VUAssertEquals(
                \ '$this->foo->',
                \ res)

    call cursor(48, 10)
    let res = phpcomplete#GetCurrentInstruction([1, 1])
    call VUAssertEquals(
                \ '$a = "foo"',
                \ res)

    call cursor(53, 36)
    let res = phpcomplete#GetCurrentInstruction([1, 1])
    call VUAssertEquals(
                \ '$date->',
                \ res)
    call cursor(55, 38)
    let res = phpcomplete#GetCurrentInstruction([1, 1])
    call VUAssertEquals(
                \ '$date->',
                \ res)
    call cursor(57, 40)
    let res = phpcomplete#GetCurrentInstruction([1, 1])
    call VUAssertEquals(
                \ '$date->',
                \ res)
    call cursor(59, 35)
    let res = phpcomplete#GetCurrentInstruction([1, 1])
    call VUAssertEquals(
                \ '$date->',
                \ res)

    silent! bw! %
endf
