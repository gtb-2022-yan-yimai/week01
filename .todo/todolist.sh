#!/bin/bash --login

function list(){
if [[ $1 =~ ^add$  ]];then

  echo "指令存在"

else

 echo "指令不存在"

fi
}
list $1
