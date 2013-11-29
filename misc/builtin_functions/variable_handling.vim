call extend(g:php_builtin_functions, {
\ 'boolval(': 'mixed $var | boolean',
\ 'debug_zval_dump(': 'mixed $variable [, mixed $...] | void',
\ 'doubleval(': 'doubleval — Alias of floatval()',
\ 'empty(': 'mixed $var | bool',
\ 'floatval(': 'mixed $var | float',
\ 'get_defined_vars(': 'void | array',
\ 'get_resource_type(': 'resource $handle | string',
\ 'gettype(': 'mixed $var | string',
\ 'import_request_variables(': 'string $types [, string $prefix] | bool',
\ 'intval(': 'mixed $var [, int $base = 10] | int',
\ 'is_array(': 'mixed $var | bool',
\ 'is_bool(': 'mixed $var | bool',
\ 'is_callable(': 'callable $name [, bool $syntax_only = false [, string &$callable_name]] | bool',
\ 'is_double(': 'is_double — Alias of is_float()',
\ 'is_float(': 'mixed $var | bool',
\ 'is_int(': 'mixed $var | bool',
\ 'is_integer(': 'is_integer — Alias of is_int()',
\ 'is_long(': 'is_long — Alias of is_int()',
\ 'is_null(': 'mixed $var | bool',
\ 'is_numeric(': 'mixed $var | bool',
\ 'is_object(': 'mixed $var | bool',
\ 'is_real(': 'is_real — Alias of is_float()',
\ 'is_resource(': 'mixed $var | bool',
\ 'is_scalar(': 'mixed $var | bool',
\ 'is_string(': 'mixed $var | bool',
\ 'isset(': 'mixed $var [, mixed $...] | bool',
\ 'print_r(': 'mixed $expression [, bool $return = false] | mixed',
\ 'serialize(': 'mixed $value | string',
\ 'settype(': 'mixed &$var, string $type | bool',
\ 'strval(': 'mixed $var | string',
\ 'unserialize(': 'string $str | mixed',
\ 'unset(': 'mixed $var [, mixed $...] | void',
\ 'var_dump(': 'mixed $expression [, mixed $...] | void',
\ 'var_export(': 'mixed $expression [, bool $return = false] | mixed',
\ })
