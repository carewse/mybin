#!/bin/bash
fileName="sshAccount.txt"
wcl=`wc -l ${fileName} | awk '{print $1}'`
while :
do
	awk '{print NR " " $1}' ${fileName}
	read -p "选择要登陆的服务器序号或者'quit'退出:" h
	if [ `echo ${h} | grep '^[1-9][0-9]*$'` ]; then
		if [ ${h} -gt ${wcl} ]; then 
			echo "错误：输入的序号不存在"
		else
			break;
		fi
	elif [ "$h" = "quit" ]; then
		echo "成功退出"
		exit 0
	else
		echo "错误：输入错误"
	fi
done
#host=`sed -n "${h}p" ${fileName} | awk '{print $2}'`
#pwd=`sed -n "${h}p" ${fileName} | awk '{print $3}'`
eval `sed -n "${h}p" ${fileName} | awk '{printf"host=%s;pwd=%s",$2,$3}'`
./sshExpect.exp $host $pwd
