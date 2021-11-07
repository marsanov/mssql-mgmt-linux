#!/bin/bash

function ping_ya {
clear
ping -c 3 ya.ru
}
function  ifconfig {
clear
/sbin/ifconfig
}
function meminfo {
clear
/bin/cat /proc/meminfo
}
function view_bd {
MASSIV=($(ls -a ./bd_config/))
unset MASSIV[0]
unset MASSIV[1]
i=1
g=2
while [ $i -le ${#MASSIV[@]} ]
do
  source ./bd_config/${MASSIV[g]}
  echo "$i.  |  $NAME                         $IP_ADDR    |"
  echo " "
  ((g++))
  ((i++))
done
}

function view_var{


}



