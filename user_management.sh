#!/bin/bash

# if any command fails then this script will terminate with status code 1
set -e

# Script should only execute with sudo or root priviledges
if [[ "${UID}" -ne 0 ]]
then 
	echo "Please run the script with sudo or root priviledge."

	# exit the script and display above message
	exit 1
fi


# This script should run with atleast one command line argument
if [[ $1 == "" ]]
then
	echo "Usage : ${0} [USERNAME] [COMMENT] ... "
	echo "Create user with name USERNAME and COMMENT is part of comment field."

	# exit the script and display the above message
	exit 1
fi


# Store first argument as username
USER_NAME=$1


# In case of more than on arguments then store them as user account comments
shift
COMMENTS=$@


# Create password for the user.
PASSWORD="linux@${RANDOM}"

# Create user with username , password and comments (optional)

useradd -c "$COMMENTS" -m $USER_NAME

# check the usercreation was successful or not

if [[ $? -ne 0 ]]
then
	echo "Something went wrong with user creation process ..."
	exit 1
fi

# Set the password for the new user.
echo -e "$PASSWORD\n$PASSWORD" | passwd $USER_NAME

# Check the status of the password creation process
if [[ $? -ne 0 ]]
then 
	echo "Something went wrong with password assigning process."
	exit 1
fi


# Force to set new password for the user once they login
passwd -e $USER_NAME

# Display all the information

echo
echo
echo
echo
echo "Username : $USER_NAME"
echo 
echo "Password : $PASSWORD"
echo
echo "Hostname : $(hostname)"
echo 

