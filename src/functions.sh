#!/bin/bash

create_user() {

	username=$1
	useradd $username

}

change_password() {


	username=$1
	passwd $username

}
