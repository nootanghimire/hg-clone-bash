#!/bin/bash


i=$(<config-a-bash-b)
while [ $i -lt 195225 ]
  do
    echo "Executing: hg pull --rev $i"
      hg pull --rev $i
      i=$[$i+100]
      echo "$i" > config-a-bash-b
  done

if [ $i -ge 195225 ];
  then
    rm -rf config-a-bash-b
    echo "removed config-a-bash-b"
    echo "Now running hg pull to make sure we have latest pulls"
    hg pull
    echo "Now running hg update to get a working copy"
    hg update
    echo ""
    echo "Everything done! Plese delete pull.sh from your repo's root as you won't need it now"
fi
    
    
    
