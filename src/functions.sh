#!/bin/bash

create_user() {

	username=$1
	useradd $username

}

change_password() {


	username=$1
	passwd $username

}

delete_user() {

	username=$1
	userdel $username

}

new_group() {

	groupname=$1
	groupadd $groupname

}

user_to_group() {

	user=$1
	group=$2

	usermod -a -G $group $user

}

user_from_group() {

	user=$1
	group=$2

	gpasswd --delete $user $group

}

delete_group() {

	group=$1
	groupdel $group

}
