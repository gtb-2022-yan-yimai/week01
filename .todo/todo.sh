#!/bin/bash 


while $1 = list do

 let touch $PWD/.tasks/list.txt;

done

function add(){
    
    tasks=$@
    echo $tasks > $PWD/.tasks/list.txt
}
add $@

function edit(){
 echo
}
edit $1

function remove(){
    echo
}
remove $1

function mark(){
    echo
}
mark $1

function unmark(){
    echo
}
unmark $1

function reset(){
case "$1" in
 reset)
 echo rm -rf $PWD/.tasks/list.txt
;;
esac
}
reset $1