#!/bin/zsh
if [ $2 = "x" ]
then
	a=$(( $1 * $3 ))
	echo $a
elif [ $2 = "+" ]
then
	a=$(( $1 + $3 ))
        echo $a
elif [ $2 = "-" ]
then
	a=$(( $1 - $3 ))
        echo $a
elif [ $2 = "÷" ]
then
	a=$(( $1 / $3 ))
	echo $a
fi

