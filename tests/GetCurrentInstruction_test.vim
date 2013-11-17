fun! TestCase_returns_instuction_string()
    let path =  expand('%:p:h')."/".'fixtures/GetCurrentInstruction/instructions.php'
    below 1new
    exe ":silent! edit ".path

    call cursor(3, 8)
    let res = phpcomplete#GetCurrentInstruction([1, 1])
    call VUAssertEquals('use', res, 'should read in the first line as-is')

    call cursor(7, 7)
    let res = phpcomplete#GetCurrentInstruction([1, 1])
    call VUAssertEquals('use Foo2,', res, 'should return the previous line if the instruction spans multiple line')

    call cursor(12, 7)
    let res = phpcomplete#GetCurrentInstruction([1, 1])
    call VUAssertEquals('use Foo3,', res, 'should skip content of a comment inside an instruction')

    call cursor(17, 7)
    let res = phpcomplete#GetCurrentInstruction([1, 1])
    call VUAssertEquals('new', res, 'should simply ignore empty lines')

    call cursor(23, 3)
    let res = phpcomplete#GetCurrentInstruction([1, 1])
    call VUAssertEquals(
                \ '$foo()->bar(        array('';''))->',
                \ res,
                \ 'semicolons in comments or string should be ignored')

    call cursor(37, 6)
    let res = phpcomplete#GetCurrentInstruction([1, 1])
    call VUAssertEquals(
                \ '$some_long_variable->love()->me()->love()->me()->say()->that()->you()->',
                \ res)

    call cursor(42, 20)
    let res = phpcomplete#GetCurrentInstruction([1, 1])
    call VUAssertEquals(
                \ '$this->foo->',
                \ res)

    call cursor(48, 6)
    let res = phpcomplete#GetCurrentInstruction([1, 1])
    call VUAssertEquals(
                \ '$foo->',
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
    call cursor(64, 28)
    let res = phpcomplete#GetCurrentInstruction([1, 1])
    call VUAssertEquals(
                \ '$bar2->',
                \ res)
    call cursor(65, 46)
    let res = phpcomplete#GetCurrentInstruction([1, 1])
    call VUAssertEquals(
                \ '(new Foo)->',
                \ res)
    silent! bw! %
endf
