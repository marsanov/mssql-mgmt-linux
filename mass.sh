#!/bin/bash

source function.sh

MASSIV=($(ls -a ./bd_config/))

unset MASSIV[0]
unset MASSIV[1]


i=1

ii=0
g=2

echo "${MASSIV[i+1]}"

while [ $? -ne 1 ]
do
        case $option in
0)
        exit ;;

1)
ping_ya ;;
#while [ $i -le ${#MASSIV[@]} ]
#do
#  source ./bd_config/${MASSIV[g]}
#  $i) 
#    ping_ya
#  ((g++))
#  ((i++))
#done
#}

*)
        clear
echo "Нужно выбрать сервер";;
esac
echo -en "\n\n\t\t\tНажмите любую клавишу для продолжения"
read -n 1 line
done
clear


