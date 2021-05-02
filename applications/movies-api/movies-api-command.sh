#!/bin/bash
echo '=============== Staring start script for MOVIES API ==============='
cd app
export MOVIES_API=$COLONY_PUBLIC_ADDRESS:7000
npm start &