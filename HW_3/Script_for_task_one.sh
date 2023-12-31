#!/bin/bash

work() {
	echo Hello User
	echo Введи что хочешь узнать.1:Свободная память.2:Загрузка процессора.3:Твой ip.4:Выход
	read number
	if [[ $number == "1" ]] || [[ $number == "2" ]] || [[ $number == "3" ]]; then
		case $number in
		1)
			cat /proc/meminfo | grep Mem | sed 's/Mem/Память/' | sed 's/Total/Общая/' | sed 's/Free/Свободная/' | sed 's/Available/Доступная/'
			;;
		2)
			ps | sed 's/PID/ИнПр/' | sed 's/TIME/Время/' | sed 's/CMD/КомСт/' | sed 's/TTY/Абст/'
			;;
		3)
			ip a | grep global | sed 's/inet/инет/'
			;;
		esac
		work
	else
		echo "Bye"
	fi
}
work
