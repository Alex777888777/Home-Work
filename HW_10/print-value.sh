#!/bin/bash
<<<<<<< HEAD

echo "$VALUE"
x=$VALUE
echo "$x"
read -r number
=======
	echo "$VALUE"
	x=$VALUE
	echo "$x"
	read -r number
>>>>>>> 108562d (tab)

[[ $number -le 2 ]] && echo "$x" || echo not VALUE
