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
 rm -rf $PWD/.tasks/list.txt
;;
esac

 echo " # To be done" >> $PWD/.tasks/list.txt
 echo " Empty" >> $PWD/.tasks/list.txt
 echo " # Completed" >> $PWD/.tasks/list.txt
 echo " Empty" >> $PWD/.tasks/list.txt

}
reset $1