#!/bin/bash 

function todo(){

initfile="$PWD/.tasks/init.txt"
forlist="$PWD/.tasks/forlist.txt"

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

listfile="$PWD/.tasks/list.txt"
if [[ $1 =~ ^list$ ]] && [[ ! -s $listfile ]] && [[ ! -s $forlist ]]; then
 echo " # To be done" >> $PWD/.tasks/list.txt
 echo " Empty" >> $PWD/.tasks/list.txt
 echo " # Completed" >> $PWD/.tasks/list.txt
 echo " Empty" >> $PWD/.tasks/list.txt
 echo "写入成功,此行可删去"
elif [[ $1 =~ ^list$ ]]; then
 awk '{print NR,$0}' $PWD/.tasks/list.txt
fi

}
todo $1




if [[ $1 =~ ^add$ ]] && [[  -s $initfile ]] ; then
 tasks=$@
 echo $tasks >> $PWD/.tasks/list.txt
fi

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













