call extend(g:php_builtin_functions, {
\ 'checkdate(': 'int $month, int $day, int $year | bool',
\ 'date_default_timezone_get(': 'void | string',
\ 'date_default_timezone_set(': 'string $timezone_identifier | bool',
\ 'date_parse_from_format(': 'string $format, string $date | array',
\ 'date_parse(': 'string $date | array',
\ 'date_sun_info(': 'int $time, float $latitude, float $longitude | array',
\ 'date_sunrise(': 'int $timestamp [, int $format = SUNFUNCS_RET_STRING [, float $latitude = ini_get("date.default_latitude") [, float $longitude = ini_get("date.default_longitude") [, float $zenith = ini_get("date.sunrise_zenith") [, float $gmt_offset = 0]]]]] | mixed',
\ 'date_sunset(': 'int $timestamp [, int $format = SUNFUNCS_RET_STRING [, float $latitude = ini_get("date.default_latitude") [, float $longitude = ini_get("date.default_longitude") [, float $zenith = ini_get("date.sunset_zenith") [, float $gmt_offset = 0]]]]] | mixed',
\ 'date(': 'string $format [, int $timestamp = time()] | string',
\ 'getdate(': '[ int $timestamp = time()] | array',
\ 'gettimeofday(': '[ bool $return_float = false] | mixed',
\ 'gmdate(': 'string $format [, int $timestamp = time()] | string',
\ 'gmmktime(': '[ int $hour = gmdate("H") [, int $minute = gmdate("i") [, int $second = gmdate("s") [, int $month = gmdate("n") [, int $day = gmdate("j") [, int $year = gmdate("Y") [, int $is_dst = -1]]]]]]] | int',
\ 'gmstrftime(': 'string $format [, int $timestamp = time()] | string',
\ 'idate(': 'string $format [, int $timestamp = time()] | int',
\ 'localtime(': '[ int $timestamp = time() [, bool $is_associative = false]] | array',
\ 'microtime(': '[ bool $get_as_float = false] | mixed',
\ 'mktime(': '[ int $hour = date("H") [, int $minute = date("i") [, int $second = date("s") [, int $month = date("n") [, int $day = date("j") [, int $year = date("Y") [, int $is_dst = -1]]]]]]] | int',
\ 'strftime(': 'string $format [, int $timestamp = time()] | string',
\ 'strptime(': 'string $date, string $format | array',
\ 'strtotime(': 'string $time [, int $now = time()] | int',
\ 'time(': 'void | int',
\ 'timezone_name_from_abbr(': 'string $abbr [, int $gmtOffset = -1 [, int $isdst = -1]] | string',
\ 'timezone_version_get(': 'void | string',
\ })
