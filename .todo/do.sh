#!/usr/bin/env bash

function todo(){

TODO_DIR="$PWD/.tasks"
initfile="$TODO_DIR/init.txt"
forlist="$TODO_DIR/forlist.txt"

if [[ ! -n $1 ]] ; then

 echo "usage: todo <init|list|add|edit|remove|reset|mark|unmark> [args]"

elif [[ $1 =~ ^list|add|edit|remove|reset|mark|unmark$ ]] && [[ ! -s $initfile ]]; then

 echo "Please run 'todo init' before running '$1' command."

elif [[ $1 =~ ^init$ ]] ; then

 touch $initfile
 touch $forlist
 echo "Initialized successfully."
 echo $1 > $PWD/.tasks/init.txt

elif [[ $1 =~ ^list|add|edit|remove|reset|mark|unmark$ ]]; then

echo

else 

echo "Unknown command: '$1'!"

fi

}
todo $1 $@



function list(){
listfile="$TODO_DIR/list.txt"
if [[ $1 =~ ^list$ ]] && [[ ! -s $listfile ]] && [[ ! -s $forlist ]]; then
 echo "# To be done" >> $TODO_DIR/list.txt
 echo "Empty" >> $TODO_DIR/list.txt
 echo "# Completed" >> $TODO_DIR/list.txt
 echo "Empty" >> $TODO_DIR/list.txt
 
elif [[ $1 =~ ^list$ ]] && [[ -s $listfile ]]; then
 awk 'sub(/^[\t]+/,"");{print NR,$0}' $TODO_DIR/list.txt
fi
}
list $1

function add(){
if [[ $1 =~ ^add$ ]] && [[  -s $initfile ]] ; then
 
 echo "${@:2}" >> $TODO_DIR/list.txt
fi
}
add $*


function reset(){
case "$1" in
 reset)
 rm -rf $PWD/.tasks/list.txt
 rm -rf $PWD/.tasks/forlist.txt
;;
esac



}
reset $1












