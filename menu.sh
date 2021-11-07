#!/bin/bash

source function.sh
source vars
#source ./bd_config/*.conf

function menu {
clear
echo
echo -e "\t\t\tМеню скрипта\n"

view_bd


echo -e "\t1. Пинговать ya.ru"
echo -e "\t2. Информация об интерфейсах"
echo -e "\t3. Информация о памяти"
echo -e "\t0. Выход"
echo -en "\t\tВведите номер сервера: "
read -n 1 option
}

#Используем цикл While и команду Case для создания меню.
while [ $? -ne 1 ]
do
        menu
        case $option in
0)
        exit ;;
1)
        ping_ya ;;
2)
        ifconfig ;;
3)
        meminfo ;;
*)
        clear
echo "Нужно выбрать сервер";;
esac
echo -en "\n\n\t\t\tНажмите любую клавишу для продолжения"
read -n 1 line
done
clear


