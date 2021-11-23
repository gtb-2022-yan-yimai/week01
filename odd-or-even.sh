#!/bin/bash
#^-?[1-9]\d*$ 正则表达整数 ^[0-9]+$ 数字 ^(-?\d+)(\.\d+)?$ 浮点数
#取余数的方法、if循环格式、字符串和整数、
read -p "请输入:" int
x=$(($int % 2))
if [[ $int =~ ^-?[1-9]\d*$ ]] && [[ $x = 0 ]];then
	echo "$int是偶数！"
elif [[ $int =~ ^-?[1-9]\d*$ ]] && [[ $x -ne 0 ]];then
    echo "$int是奇数！"
elif [[ $int = 0 ]];then
    echo "$int是特殊的偶数！"
else
    echo "$int请输入一个整数！"
fi

