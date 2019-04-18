#!/bin/bash
echo "1.Add Shortcut"
echo "2.Remove Shortcut"
echo "3.Exit"
echo -n "Enter Choice : "
read choice
if [ $choice == 1 ]
then
	echo -n "Enter Command : "
	IFS= read command
	echo -n "Enter Shortcut : "
	read shortcut
	for file in ~/.*
	do
	
		if [ $file == ~/.bash_profile ]
		then
			echo 'alias '$shortcut'="'$command'"' >> ~/.bash_profile
			source ~/.bash_profile	
			echo "Restart the terminal for shortcut to work properly!"
		fi
		if [ $file == ~/.bashrc ]
		then
			echo 'alias '$shortcut'="'$command'"' >> ~/.bashrc
                	source ~/.bashrc
			echo "Restart the terminal for shortcut to work properly!"
		fi
	done
fi
if [ $choice == 2 ]
then
	echo -n "Enter Command : "
	IFS= read command
	for file in ~/.*
        do

                if [ $file == ~/.bash_profile ]
                then
			echo 'Shortcut for '$command' is deleted.'
                        sed -i '' "/^alias.*\"$command\"/d" ~/.bash_profile
                        source ~/.bash_profile
			echo "Restart the terminal!"
                fi
                if [ $file == ~/.bashrc ]
                then
			echo 'Shortcut for '$command' is deleted.'
			sed -i "/^alias.*\"$command\"/d" ~/.bashrc
			source ~/.bashrc
			echo "Restart the terminal!"
                fi
        done
fi
if [ $choice == 3 ]
then
	echo "Okay! See You Soon."
fi

