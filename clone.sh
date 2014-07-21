#!/bin/bash

hg clone --rev 100 $1 $2 
cp pull.sh $2/pull.sh
cd $2
chmod +x pull.sh
touch config-a-bash-b
echo "100">config-a-bash-b
echo "Cloning completed. Now running pull.sh. Please run pull.sh in the repo's directory from next time"
./pull.sh

