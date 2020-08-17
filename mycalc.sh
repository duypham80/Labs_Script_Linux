#!/bin/bash
#Assignment number : Lab09
#Student Name : Duy Pham
#Student Number : 040953368
#Section : 310
#Script : mycalc.sh
#Date : Aug - 06 - 2020
#This program perform the operations : "+" and "-"

function add(){ #create function addition
	echo "mycalc $1 + $2"
	n1=$1
	n2=$2
	sum=$((n1+n2))
	echo "The sum of $1 plus $2 equals $sum"
	sleep 3
}

function sub(){ #create function subtract
	echo "mycalc $1 - $2"
	n1=$1
	n2=$2
	sub=$((n1-n2))
	echo "The Subtraction of $1 minus $2 equals $sub"
	sleep 3
}

function calc(){ #create function to call add() or sub() 
	if [ $2 == '+' ]
	then add $1 $3
	elif [ $2 == '-' ] 
	then sub $1 $3
	fi
}


if [ $# -eq 3 ]; then  # check input from user
	calc $1 $2 $3
else
	choice=n
	while [[ $choice != "X" ]] && [[ $choice != "x" ]]
	do 
		clear
		echo "Menu 1"
		echo "C) Calculation"
		echo "X) Exit"
		echo ""
		read -p "Make the choice: " choice1
		choice=$choice1
		while [[ $choice1 != "X" && $choice1 != "x" ]]
		do			
			echo "Menu 2"
			read -p "Please enter integer number or X to exit: " num1				
				choice=$num1
				choice1=$num1
					while [[ $num1 != "X" && $num1 != "x" ]]
					do
						echo -e "Menu 3 \n +). Addition \n -). Subtract \n X) Exit"
						read choice2				
						case $choice2 in
							+|a)
								read -p "Please enter second number: " num2							
								add $num1 $num2
								choice1="x"
								num1="x"
								sleep 3
								;;
							-|s)
						       		read -p "Please enter second number: " num2
								sub $num1 $num2
								choice1="x"
								num1="x"
								sleep 3
								;;
							x|X)
								echo "you are exitting program"
								sleep 3
								exit;;	
						esac
					done				
		done
	done 						
fi
