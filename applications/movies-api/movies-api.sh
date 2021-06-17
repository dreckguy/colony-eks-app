#/bin/bash
echo "INIT SCRIPT !!!!!!!!!!!!!!!!!!"
export DB_URL=$(printenv | grep -i 'mongodb'| grep -i 'addr' | cut -d "=" -f2)
