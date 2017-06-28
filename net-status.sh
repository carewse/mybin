#!/bin/bash

dpre=$(ifconfig eth0 | sed -e '$!{h;d;}' -e x | awk '{print $1}' | awk -F ":" '{print $2}')
upre=$(ifconfig eth0 | sed -e '$!{h;d;}' -e x | awk '{print $4}' | awk -F ":" '{print $2}')
sleep 1
dnext=$(ifconfig eth0 | sed -e '$!{h;d;}' -e x | awk '{print $1}' | awk -F ":" '{print $2}')
unext=$(ifconfig eth0 | sed -e '$!{h;d;}' -e x | awk '{print $4}' | awk -F ":" '{print $2}')
echo "下载速度：$(((${dnext} - ${dpre})/1024))kb/s  上传速度:$(((${unext} - ${upre})/1024))kb/s"
