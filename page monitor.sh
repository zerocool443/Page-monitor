#!/bin/bash

input("enter the url you want to monitor") | wget -o page.html

size=$(ls -l page.html | awk '{print $5}')

$limit = 1520   # you have to set the limit which decided weather to alert you or not 

if [$size -gt $limit ]
  then 
  echo $size | ssmtp -s "test" yourmail@mail.com
  rm -rf page.html
fi
rm -rf page.html

