#!/bin/bash

echo "enter the url you want to monitor"
read url

wget $url -O page.html

size=$(ls -l page.html | awk '{print $5}')

# you have to set the limit which decided weather to alert you or not 

limit=100

if [ "$size" -gt "$limit" ];then
         echo $size | ssmtp -s "test" skyatwork007@gmail.com
         rm -rf page.html
fi
rm -rf page.html
