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
