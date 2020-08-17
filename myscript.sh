#!/bin/bash
#Lab 8
#Duy Pham - 040953368
#Course: 20S_CST8102_310
#myscript.sh
#Due Date : Aug - 06 -2020
#The program run with option for user to create user account, delete account, change supplementary 
#group, change initial group,  change default login shell, change account expiration date for user account.

choice=""

while [[ $choice != "q" && $choice != "Q" ]] #loop input user choice
do  #menu display for user choice
	clear
	echo "Choose one of the following options: "
	echo "A. Create a user account"
	echo "B. Delete a user account"
	echo "C. Change supplementary group for user account"
	echo "D. Change initial group for a user account"
	echo "E. Change default login shell for a user account"
	echo "F. Change account expiration date for a user account"
	echo "Q. Quit"
	echo ""

	read -p "What would you like to do?: " choice #read input from user

	if [[ $choice == "a" || $choice == "A" ]]; then #if user choose option a then ask user input name, homeDirectory, loginShell
		echo "Create a user account"
		read -p "Enter username to create: " username
		read -p "Enter user's home directory: " homeDirectory
		read -p "Enter Default login shell: " loginShell
		sudo useradd -d $homeDirectory -s $loginShell -m $username
		echo "Username $username has been created"
		sleep 3

	elif [[ $choice == "b" || $choice == "B" ]]; then #option b to delete user account with username
		echo "Delete a user account"
		read -p "Enter account to delete: " username
		sudo userdel -r $username
		echo "Username $username has been deleted"
		sleep 3
	elif [[ $choice == "c" || $choice == "C" ]]; then #option c to change supplementary group for user
		echo " Change supplementary group for user account"
		read -p "Enter username: " username
		read -p "Enter groupname: " groupname
		sudo groupadd $groupname
		sudo usermod -G $groupname $username
		echo "Username $username had been changed to group $groupname"
		sleep 3
	elif [[ $choice == "d" || $choice == "D" ]]; then  #option d to change initial group for user
		echo "Change initial group for a user account"
		read -p "Enter username: " username
		read -p "Enter groupname: " groupname
		sudo usermod -g $groupname $username		
		echo "Username $username has been changed to initial group $groupname"
		sleep 3
	elif [[ $choice == "e" || $choice == "E" ]]; then #option e to change current login shell of user to another user
		echo "Change the default login shell for a user account"
		read -p "Enter username: " username
		read -p "Enter shell name: " shell
		sudo chsh -s $shell $username
		echo "Username $username login shell had been changed to shell $shell"
		sleep 3
	elif [[ $choice == "f" || $choice == "F" ]]; then # option F to change expirated date of user
		echo "Change the account expiration date for a user account"
		read -p "Enter username: " username
		read -p "Enter expiration date (YYYY-MM-DD): " expiratedDate
		sudo usermod -e $expiratedDate $username
		echo "Expirate Date had been changed to $expirateDate for username $username"
		sleep 5 
	elif [[ $choice == "q" || $choice == "Q" ]]; then #option q to quit program
		echo "You wish to exit"
		sleep 3
		exit
	else echo "What would you like to do?: "
	fi
done

	
