#!/bin/bash
echo '=============== Staring start script for MOVIES API ==============='
cd app
export DOMAIN_NAME=$COLONY_DOMAIN_NAME
npm start &