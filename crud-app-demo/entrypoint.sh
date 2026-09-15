#!/bin/sh
set -e

# If DB_HOST is set (i.e. we're running under docker-compose), wait for
# the database container to start accepting connections before handing
# off to Apache. This avoids the classic race where the app container
# starts faster than the DB container and every request 500s at boot.
if [ -n "$DB_HOST" ]; then
    DB_PORT="${DB_PORT:-3306}"
    echo "Waiting for MySQL at $DB_HOST:$DB_PORT..."

    until php -r "exit(@fsockopen('$DB_HOST', $DB_PORT) ? 0 : 1);" 2>/dev/null; do
        sleep 1
    done

    echo "MySQL is up - continuing startup"
fi

# Hand off to the container's CMD (apache2-foreground by default)
exec "$@"
