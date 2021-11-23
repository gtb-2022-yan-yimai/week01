#!/bin/bash

function next(){


nextfile="$PWD/nextfile.txt"
if [[ ! -e $nextfile ]];then

 execount=1

 touch $nextfile $nextfile

 echo $execount

 echo $execount > ./nextfile.txt

 echo  "nextfile.txt成功创建 "

else
  execount=`tail -n 1 nextfile.txt`
  execount=`expr $execount + 1`
  echo $execount > ./nextfile.txt
  echo $execount
  echo "执行结束"
  
fi
}
next $1






