#! /bin/bash
# username.sh
# Thomas Grebert
echo "Enter a username: "
read user
while echo "$user" | egrep -v "^[a-z]{1}[0-9 a-z \_]{2,11}$" > /dev/null 2>&1
do
	echo "You must enter a valid username - lower case letters, digits, & underscores only!"
	echo "The username must also be between 3 and 12 characters, and must start with a letter."
	echo "Enter a username: "
	read user
done
echo "Thank you"
