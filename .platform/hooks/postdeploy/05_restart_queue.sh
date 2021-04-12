#!/bin/sh
echo "PostDeploy Hook...Restart queue"
php artisan queue:restart
