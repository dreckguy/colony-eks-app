#!/bin/bash
echo '=============== Staring init script for MOVIES UI ==============='
echo $COLONY_DOMAIN_NAME

echo '==> Installing Node.js and NPM'
apt update -y
apt install -y unzip nodejs

echo '==> Extract ui artifact to app'
unzip $ARTIFACTS_PATH *.zip -d app
ls app