#!/usr/bin/env php -d extension_dir=. -d safe_mode=Off -d enable_dl=On -d error_reporting=E_ALL -d xdebug.auto_trace=ON -d display_errors=On -d display_startup_errors=On
<?php

//TODO: This will not work. C libaries need to be wrapped to be used in PHP.

echo "Test: PHP".PHP_EOL;

$libnoo = dl('libnoo.so');
print_r(get_loaded_extensions());

echo "Done.".PHP_EOL;
