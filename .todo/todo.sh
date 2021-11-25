#!/bin/bash --login

function todo(){

 
if [[ ! -n $1 ]];then
 echo "usage: todo <init|list|add|edit|remove|reset|mark|unmark> [args]"
elif [[ $1 -eq init ]];then
 initfile="$PWD/.tasks/init.txt"
 echo "Initialized successfully."
 touch $initfile
else
 echo "Please run 'todo init' before running '$1' command."
fi

if [[ ! -d $initfile ]] && [[ $1 =~ ^init|list|add|edit|remove|reset|mark|unmark$ ]];then
 history="$PWD/.tasks/history.txt"
 touch $history
 echo $1 > $PWD/.tasks/history.txt
else
 echo "Unknown command: '$1'! "
fi

}
todo $1


