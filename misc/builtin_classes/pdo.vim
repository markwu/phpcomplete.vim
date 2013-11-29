call extend(g:php_builtin_classes, {
\'PDO': {
\   'constants': {
\     'FETCH_ORI_ABS': '',
\     'ATTR_PERSISTENT': '',
\     'CLASS_CONSTANT': '',
\     'ATTR_DEFAULT_FETCH_MODE': '',
\     'FETCH_PROPS_LATE': '',
\     'FETCH_KEY_PAIR': '',
\     'FB_ATTR_DATE_FORMAT': '',
\     'FB_ATTR_TIME_FORMAT': '',
\     'FB_ATTR_TIMESTAMP_FORMAT': '',
\     'MYSQL_ATTR_READ_DEFAULT_FILE': '',
\     'MYSQL_ATTR_READ_DEFAULT_GROUP': '',
\     'ATTR_AUTOCOMMIT': '',
\     'FOURD_ATTR_CHARSET': '',
\     'FOURD_ATTR_PREFERRED_IMAGE_TYPES': '',
\     'PARAM_LOB': '',
\     'PARAM_BOOL': '',
\     'PARAM_NULL': '',
\     'PARAM_INT': '',
\     'PARAM_STR': '',
\     'PARAM_STMT': '',
\     'PARAM_INPUT_OUTPUT': '',
\     'FETCH_LAZY': '',
\     'FETCH_ASSOC': '',
\     'FETCH_NAMED': '',
\     'FETCH_NUM': '',
\     'FETCH_BOTH': '',
\     'FETCH_OBJ': '',
\     'FETCH_BOUND': '',
\     'FETCH_COLUMN': '',
\     'FETCH_CLASS': '',
\     'FETCH_INTO': '',
\     'FETCH_FUNC': '',
\     'FETCH_GROUP': '',
\     'FETCH_UNIQUE': '',
\     'FETCH_CLASSTYPE': '',
\     'FETCH_SERIALIZE': '',
\     'ATTR_PREFETCH': '',
\     'ATTR_TIMEOUT': '',
\     'ATTR_ERRMODE': '',
\     'ATTR_SERVER_VERSION': '',
\     'ATTR_CLIENT_VERSION': '',
\     'ATTR_SERVER_INFO': '',
\     'ATTR_CONNECTION_STATUS': '',
\     'ATTR_CASE': '',
\     'ATTR_CURSOR_NAME': '',
\     'ATTR_CURSOR': '',
\     'CURSOR_FWDONLY': '',
\     'CURSOR_SCROLL': '',
\     'ATTR_DRIVER_NAME': '',
\     'ATTR_ORACLE_NULLS': '',
\     'ATTR_STATEMENT_CLASS': '',
\     'ATTR_FETCH_CATALOG_NAMES': '',
\     'ATTR_FETCH_TABLE_NAMES': '',
\     'ATTR_STRINGIFY_FETCHES': '',
\     'ATTR_MAX_COLUMN_LEN': '',
\     'ATTR_EMULATE_PREPARES': '',
\     'ERRMODE_SILENT': '',
\     'ERRMODE_WARNING': '',
\     'ERRMODE_EXCEPTION': '',
\     'CASE_NATURAL': '',
\     'CASE_LOWER': '',
\     'CASE_UPPER': '',
\     'NULL_NATURAL': '',
\     'NULL_EMPTY_STRING': '',
\     'NULL_TO_STRING': '',
\     'FETCH_ORI_NEXT': '',
\     'FETCH_ORI_PRIOR': '',
\     'FETCH_ORI_FIRST': '',
\     'FETCH_ORI_LAST': '',
\     'FETCH_ORI_REL': '',
\     'ERR_NONE': '',
\     'PARAM_EVT_ALLOC': '',
\     'PARAM_EVT_FREE': '',
\     'PARAM_EVT_EXEC_PRE': '',
\     'PARAM_EVT_EXEC_POST': '',
\     'PARAM_EVT_FETCH_PRE': '',
\     'PARAM_EVT_FETCH_POST': '',
\     'PARAM_EVT_NORMALIZE': '',
\     'MYSQL_ATTR_INIT_COMMAND': '',
\     'MYSQL_ATTR_USE_BUFFERED_QUERY': '',
\     'MYSQL_ATTR_LOCAL_INFILE': '',
\     'MYSQL_ATTR_MAX_BUFFER_SIZE': '',
\     'MYSQL_ATTR_DIRECT_QUERY': '',
\     'MYSQL_ATTR_FOUND_ROWS': '',
\     'MYSQL_ATTR_IGNORE_SPACE': '',
\     'MYSQL_ATTR_COMPRESS': '',
\     'MYSQL_ATTR_SSL_CA': '',
\     'MYSQL_ATTR_SSL_CAPATH': '',
\     'MYSQL_ATTR_SSL_CERT': '',
\     'MYSQL_ATTR_SSL_CIPHER': '',
\     'MYSQL_ATTR_SSL_KEY': '',
\     'SQLSRV_TXN_READ_UNCOMMITTED': '',
\     'SQLSRV_TXN_READ_COMMITTED': '',
\     'SQLSRV_TXN_REPEATABLE_READ': '',
\     'SQLSRV_TXN_SNAPSHOT': '',
\     'SQLSRV_TXN_SERIALIZABLE': '',
\     'SQLSRV_ENCODING_BINARY': '',
\     'SQLSRV_ENCODING_SYSTEM': '',
\     'SQLSRV_ENCODING_UTF8': '',
\     'SQLSRV_ENCODING_DEFAULT': '',
\     'SQLSRV_ATTR_QUERY_TIMEOUT': '',
\     'SQLSRV_ATTR_DIRECT_QUERY': '',
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'string $dsn [, string $username [, string $password [, array $driver_options]]]', 'return_type': ''},
\     'beginTransaction': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'commit': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'errorCode': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'errorInfo': { 'signature': 'void | array', 'return_type': 'array'},
\     'exec': { 'signature': 'string $statement | int', 'return_type': 'int'},
\     'getAttribute': { 'signature': 'int $attribute | mixed', 'return_type': 'mixed'},
\     'inTransaction': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'lastInsertId': { 'signature': '[ string $name = NULL] | string', 'return_type': 'string'},
\     'prepare': { 'signature': 'string $statement [, array $driver_options = array()] | PDOStatement', 'return_type': 'PDOStatement'},
\     'query': { 'signature': 'string $statement | PDOStatement', 'return_type': 'PDOStatement'},
\     'quote': { 'signature': 'string $string [, int $parameter_type = PDO::PARAM_STR] | string', 'return_type': 'string'},
\     'rollBack': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'setAttribute': { 'signature': 'int $attribute, mixed $value | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\     'getAvailableDrivers': { 'signature': 'void | array', 'return_type': 'array'},
\   },
\},
\'PDOException': {
\   'constants': {
\   },
\   'properties': {
\     'errorInfo': { 'initializer': '', 'type': 'array'},
\     'code': { 'initializer': '', 'type': 'int'},
\     'message': { 'initializer': '', 'type': 'string'},
\     'file': { 'initializer': '', 'type': 'string'},
\     'line': { 'initializer': '', 'type': 'int'},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'getMessage': { 'signature': 'void | string', 'return_type': 'string'},
\     'getPrevious': { 'signature': 'void | Exception', 'return_type': 'Exception'},
\     'getCode': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'getFile': { 'signature': 'void | string', 'return_type': 'string'},
\     'getLine': { 'signature': 'void | int', 'return_type': 'int'},
\     'getTrace': { 'signature': 'void | array', 'return_type': 'array'},
\     'getTraceAsString': { 'signature': 'void | string', 'return_type': 'string'},
\     '__toString': { 'signature': 'void | string', 'return_type': 'string'},
\     '__clone': { 'signature': 'void | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'PDOStatement': {
\   'constants': {
\   },
\   'properties': {
\     'queryString': { 'initializer': '', 'type': 'string'},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'bindColumn': { 'signature': 'mixed $column, mixed &$param [, int $type [, int $maxlen [, mixed $driverdata]]] | bool', 'return_type': 'bool'},
\     'bindParam': { 'signature': 'mixed $parameter, mixed &$variable [, int $data_type = PDO::PARAM_STR [, int $length [, mixed $driver_options]]] | bool', 'return_type': 'bool'},
\     'bindValue': { 'signature': 'mixed $parameter, mixed $value [, int $data_type = PDO::PARAM_STR] | bool', 'return_type': 'bool'},
\     'closeCursor': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'columnCount': { 'signature': 'void | int', 'return_type': 'int'},
\     'debugDumpParams': { 'signature': 'void | void', 'return_type': 'void'},
\     'errorCode': { 'signature': 'void | string', 'return_type': 'string'},
\     'errorInfo': { 'signature': 'void | array', 'return_type': 'array'},
\     'execute': { 'signature': '[ array $input_parameters] | bool', 'return_type': 'bool'},
\     'fetch': { 'signature': '[ int $fetch_style [, int $cursor_orientation = PDO::FETCH_ORI_NEXT [, int $cursor_offset = 0]]] | mixed', 'return_type': 'mixed'},
\     'fetchAll': { 'signature': '[ int $fetch_style [, mixed $fetch_argument [, array $ctor_args = array()]]] | array', 'return_type': 'array'},
\     'fetchColumn': { 'signature': '[ int $column_number = 0] | string', 'return_type': 'string'},
\     'fetchObject': { 'signature': '[ string $class_name = "stdClass" [, array $ctor_args]] | mixed', 'return_type': 'mixed'},
\     'getAttribute': { 'signature': 'int $attribute | mixed', 'return_type': 'mixed'},
\     'getColumnMeta': { 'signature': 'int $column | array', 'return_type': 'array'},
\     'nextRowset': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'rowCount': { 'signature': 'void | int', 'return_type': 'int'},
\     'setAttribute': { 'signature': 'int $attribute, mixed $value | bool', 'return_type': 'bool'},
\     'setFetchMode': { 'signature': 'int $mode | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\})
