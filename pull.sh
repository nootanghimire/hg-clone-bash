#!/bin/bash


i=$(<config-a-bash-b)
while [ $i -lt 195225 ]
  do
    echo "Executing: hg pull --rev $i"
      hg pull --rev $i
      i=$[$i+100]
      echo "$i" > config-a-bash-b
  done
