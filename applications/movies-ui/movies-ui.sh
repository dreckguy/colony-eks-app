#!/bin/sh
echo "INIT SCRIPT !!!!!!!!!!!!!!!!!!"
export API_URL=$(printenv | grep -i 'api'| grep -i 'host' | cut -d "=" -f2)
echo "API_URL: $API_URL"