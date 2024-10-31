#!/bin/bash

source src/functions.sh

if [ "$EUID" -ne 0 ]; then
    echo "Please run as root"
    exit
fi

echo "**********************************************"
echo "*                                            *"
echo "* 1. Create a user	                   *"
echo "* 2. Change password                         *"
echo "* 3. Delete a user   		           *"
echo "* 4. Create group				   *"
echo "* 5. Add user to group	                   *"
echo "* 6. Remove user from group                  *"
echo "* 7. Delete a group	                   *"
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
		display_all "${filenames[@]}"
		;;

	2)
		delete_by_id "${filenames[@]}"
		;;

	3)
		search_regex "${filenames[@]}"
		;;
	4)
		delete_log_data "${filenames[@]}"
		;;

	5)

		open_file "${filenames[@]}"
		;;

esac 
