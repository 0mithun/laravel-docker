#!/usr/bin/env bash

set -e

echo "Test echo"

env=${APP_ENV:-production}

if [ "$env" != "local" ]; then
    echo "Removing XDebug"
    rm -rf /usr/local/etc/php/conf.d/{docker-php-ext-xdebug.ini,xdebug.ini}
fi


exec apache2-foreground