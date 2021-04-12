#!/bin/bash
FILE=/bin/supervisorctl

if [[ -f "$FILE" ]]; then
  echo "PostDeploy Hook...Queue already set up"
  sudo cp .platform/files/supervisor.ini /etc/supervisord.d/laravel.ini
  sudo supervisorctl reread
  sudo supervisorctl update
else
  echo "PostDeploy Hook...Installing Supervisor, and setting up queue"
  sudo amazon-linux-extras enable epel
  sudo yum install -y epel-release
  sudo yum -y update
  sudo yum -y install supervisor
  sudo cp .platform/files/supervisor.ini /etc/supervisord.d/laravel.ini

  sudo systemctl start supervisord
  sudo systemctl enable supervisord
fi
