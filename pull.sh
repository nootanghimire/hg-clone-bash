#!/bin/bash
echo "Getting the rev number. Please wait....."

num=$(curl https://hg.mozilla.org/mozilla-central/log | grep shortlog | grep -o '[0-9]*')
echo "The current rev is $num. Please confirm it from https://hg.mozilla.org/mozilla-central/log if you want to."
echo "Press any key to continue...."
read
i=$(<config-a-bash-b)
while [ $i -lt $num ]
  do
    echo "Executing: hg pull --rev $i"
      hg pull --rev $i
      i=$[$i+100]
      echo "$i" > config-a-bash-b
  done

if [ $i -ge $num ];
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
    
    
    
