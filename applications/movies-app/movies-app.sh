#!/bin/bash
echo '=============== Staring init script for MOVIES APP ==============='

echo '==> Installing docker and docker-compose'
echo "need to install docker and compose!"
echo '==> Extract ui artifact to app'
unzip $ARTIFACTS_PATH/docker-compose.yml -d app
chmod -R 777 app
cd app
docker-compose pull
