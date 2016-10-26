#!/bin/bash
a=100
for i in *.svg; do
  new=$(printf "%03d.svg" "$a") #04 pad to length of 4
  mv -- "$i" "$new"
  let a=a+1
done
