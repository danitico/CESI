#!/bin/bash

let i=0;

while [ $i -lt 10 ]; do
   echo "Ejecución $[$i+1]"
   ab -n 10000 -c 500 -q $1 | grep -E -e '^Request' -e '^Transfer'
   let i=i+1
done
