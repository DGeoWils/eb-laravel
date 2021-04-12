#!/bin/sh

if [[ "$EB_IS_COMMAND_LEADER" == "true" ]]; then
  echo "PostDeploy Hook...Migrating DB"
  # only the first time
  #php artisan migrate:fresh --force

  php artisan migrate --force
fi
