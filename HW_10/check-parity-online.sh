#!/bin/bash

set -e
read -r number

case $number in
'' | *[!0-9]*)
	echo not Num
	;;
*)
<<<<<<< HEAD
	[[ $((number % 2)) -eq 0 ]] && echo even || echo odd
=======
	[[ $((number % 2)) -eq 0 ]] && echo even || sleep 1
	[[ $((number % 2)) -ne 0 ]] && echo odd || sleep 1
>>>>>>> 108562d (tab)
	;;

esac
