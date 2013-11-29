call extend(g:php_builtin_functions, {
\ 'readline_add_history(': 'string $line | bool',
\ 'readline_callback_handler_install(': 'string $prompt, callable $callback | bool',
\ 'readline_callback_handler_remove(': 'void | bool',
\ 'readline_callback_read_char(': 'void | void',
\ 'readline_clear_history(': 'void | bool',
\ 'readline_completion_function(': 'callable $function | bool',
\ 'readline_info(': '[ string $varname [, string $newvalue]] | mixed',
\ 'readline_list_history(': 'void | array',
\ 'readline_on_new_line(': 'void | void',
\ 'readline_read_history(': '[ string $filename] | bool',
\ 'readline_redisplay(': 'void | void',
\ 'readline_write_history(': '[ string $filename] | bool',
\ 'readline(': '[ string $prompt] | string',
\ })
