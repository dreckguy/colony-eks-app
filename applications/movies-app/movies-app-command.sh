#!/bin/bash
echo '=============== Staring start script for MOVIES UI ==============='
cd app
export REACT_APP_COLONY_DOMAIN_NAME=$COLONY_PUBLIC_ADDRESS
docker-compose up -d