#!/bin/bash
echo '=============== Staring init script for MOVIES UI ==============='

echo '==> Installing Node.js and NPM'
apt update -y
apt install -y unzip nodejs npm

echo '==> Extract ui artifact to app'
unzip $ARTIFACTS_PATH/*.zip -d app
chmod -R 777 app
cd app
npm install
