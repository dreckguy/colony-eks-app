#!/bin/bash
echo '=============== Staring init script for MOVIES API ==============='
echo $COLONY_DOMAIN_NAME

echo '==> Installing Node.js and NPM'
apt update -y
apt install -y unzip nodejs npm

echo '==> Extract ui artifact to app'
unzip $ARTIFACTS_PATH/*.zip -d app
cd app
npm install
npm start &