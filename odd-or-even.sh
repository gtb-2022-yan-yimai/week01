#!/bin/bash
#^-?[1-9]\d*$ 正则表达整数 ^[0-9]+$ 数字 ^(-?\d+)(\.\d+)?$ 浮点数
#取余数的方法、if循环格式、字符串和整数、
#!/bin/bash
echo "odd-or-even函数开始执行"

odd-or-even()
{
  
     
    
    if [[ $1 =~ ^-?[1-9]\d*$ ]] && [[ $(($1 % 2)) = 0 ]];then
      y=$1
	    echo " $1 是偶数！"
    elif [[ $1 =~ ^-?[1-9]\d*$ ]] && [[ $(($1 % 2)) -ne 0 ]];then
    echo "$1是奇数！"
    elif [[ $1 = 0 ]];then
    echo "$1是特殊的偶数！"
    else
    echo " $1 请输入一个整数！"
    fi

    
}
odd-or-even $1 
echo "odd-or-even函数执行完毕"
echo "输入的参数分别为$@，总数为$#,被函数调用的只有$1，代码正在优化中！"

