#!/bin/sh
# Make Folders Writable

# After the deployment finished, give the full 0777 permissions
# to some folders that should be writable, such as the storage/
# or bootstrap/cache/, for example.

chmod -R 777 storage/
chmod -R 777 bootstrap/cache/
