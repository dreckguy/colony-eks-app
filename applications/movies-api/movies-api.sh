#/bin/bash
echo "INIT SCRIPT !!!!!!!!!!!!!!!!!!"
printenv | grep -i 'mongodb'| grep -i 'addr' | cut -d "=" -f2
