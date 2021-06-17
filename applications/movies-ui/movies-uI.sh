#!/bin/sh
echo "INIT SCRIPT !!!!!!!!!!!!!!!!!!"
printenv
printenv | grep -i 'api'| grep -i 'host' | cut -d "=" -f2
echo "API_URL: $API_URL"
