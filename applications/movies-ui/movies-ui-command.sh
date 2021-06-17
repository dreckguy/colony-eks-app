#!/bin/sh
export API_URL=$(printenv | grep -i 'api'| grep -i 'host' | cut -d "=" -f2)
sh /usr/local/bin/start-docker.sh