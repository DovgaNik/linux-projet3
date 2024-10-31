#!/bin/bash

source src/functions.sh

if [ "$EUID" -ne 0 ]; then
    echo "Please run as root"
    exit
fi

echo "**********************************************"
echo "*                                            *"
echo "* 1. Create a user                           *"
echo "* 2. Change password                         *"
echo "* 3. Delete a user                           *"
echo "* 4. Create group                            *"
echo "* 5. Add user to group                       *"
echo "* 6. Remove user from group                  *"
echo "* 7. Delete a group                          *"
echo "* q. Exit                                    *"
echo "*                                            *"
echo "**********************************************"

read -p "Choose an option: " choice

case $choice in
	"q")
		echo "Closing the application"
		exit
		;;

	1)
		read -p "Please enter username for a new user: " username
		create_user $username	
		
		echo "Do you want to set a password? (y/n)"
    		read confirm
    		if [[ "$confirm" == "y" ]]; then
    			change_password $username	
		fi
		;;

	2)
		read -p "Please enter username to change the password: " username
    		change_password $username	
		;;

	3)
		read -p "Please enter username to be deleted: " username
		if [[ "$username" != "root" && "$username" != "sudo" ]]; then
			delete_user $username
		else
			echo "You cannot delete root and sudo users"
		fi
		;;
	4)
		read -p "Please enter name of a new group: " groupname
		new_group $groupname
		;;

	5)

		open_file "${filenames[@]}"
		;;

esac 
