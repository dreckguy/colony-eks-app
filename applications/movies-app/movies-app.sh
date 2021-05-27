#!/bin/bash
echo '=============== Staring init script for MOVIES APP ==============='

apt update -y
apt upgrade -y
apt install -y docker.io
systemctl enable --now docker
docker --version

curl -L "https://github.com/docker/compose/releases/download/1.26.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
docker–compose –version

echo '==> Extract artifact to app'
mkdir -p app
cp $ARTIFACTS_PATH/docker-compose.yml app
chmod -R 777 app
cd app
docker-compose pull
