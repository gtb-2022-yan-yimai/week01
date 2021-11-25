#!/bin/bash 

function todo(){

initfile="$PWD/.tasks/init.txt"

if [[ ! -n $1 ]] ; then

 echo "usage: todo <init|list|add|edit|remove|reset|mark|unmark> [args]"

elif [[ $1 =~ ^list|add|edit|remove|reset|mark|unmark$ ]] && [[ ! -s $initfile ]]; then

 echo "Please run 'todo init' before running '$1' command."

elif [[ $1 =~ ^init$ ]] ; then

 touch $initfile
 echo "Initialized successfully."
 echo $1 > $PWD/.tasks/init.txt

elif [[ $1 =~ ^list|add|edit|remove|reset|mark|unmark$ ]]; then

echo

else 

echo "Unknown command: '$1'!"

fi

listfile="$PWD/.tasks/list.txt"
if [[ $1 =~ ^list$ ]] && [[ ! -s $listfile ]]; then
 echo " # To be done" >> $PWD/.tasks/list.txt
 echo " Empty" >> $PWD/.tasks/list.txt
 echo " # Completed" >> $PWD/.tasks/list.txt
 echo " Empty" >> $PWD/.tasks/list.txt
 echo "写入成功"
elif [[ $1 =~ ^list$ ]]; then
 awk '{print NR,$0}' $PWD/.tasks/list.txt
fi

}
todo $1








