#!/bin/bash
echo '=============== Staring init script for MOVIES UI ==============='

echo '==> Installing Node.js and NPM'
apt-get update
apt install nodejs

echo '==> Extract ui artifact to /var/www/promotions-manager/'
mkdir $ARTIFACTS_PATH/drop
tar -xvf $ARTIFACTS_PATH/promotions-manager-ui.*.tar.gz -C $ARTIFACTS_PATH/drop/
mkdir /var/www/promotions-manager/
tar -xvf $ARTIFACTS_PATH/drop/drop/promotions-manager-ui.*.tar.gz -C /var/www/promotions-manager/