#!/bin/sh
echo "Prebuild Hook...Creating Self Signed Cert"
openssl genrsa -out "/etc/nginx/default.key" 2048
openssl req -new -key "/etc/nginx/default.key" -out "/etc/nginx/default.csr" -subj "/CN=default/O=default/C=US"
openssl x509 -req -days 365 -in "/etc/nginx/default.csr" -signkey "/etc/nginx/default.key" -out "/etc/nginx/default.crt"
chmod 644 /etc/nginx/default.key
