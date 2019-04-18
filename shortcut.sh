#!/bin/bash
echo -n "Enter Command : "
read command
echo -n "Enter Shortcut : "
read shortcut
for file in ~/.*
do
	
	if [ $file == ~/.bash_profile ]
	then
		echo 'alias '$shortcut'="'$command'"' >> ~/.bash_profile
		source ~/.bash_profile	
	fi
	if [ $file == ~/.bashrc ]
	then
		echo "Found .bashrc"
	fi
done

