#!/bin/bash
echo '=============== Staring init script for MOVIES APP ==============='

apt update -y
apt upgrade -y
apt install -y docker.io
systemctl enable --now docker
docker --version
docker–compose –version

echo '==> Extract ui artifact to app'
mkdir -p app
cp $ARTIFACTS_PATH/docker-compose.yml -d app
chmod -R 777 app
cd app
docker-compose pull
