#!/bin/sh

# Run Caches

# After the deployment, it's highly recommended
# to re-run the caches for config, routes and views.
echo "Remaking Caches"
php artisan config:cache
