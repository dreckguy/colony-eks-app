#/bin/bash
printenv | grep -i 'mongodb'| grep -i 'addr' | cut -d "=" -f2
npm start