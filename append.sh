#!/usr/bin/bash
# It says how to append 
# How to check read write permissions to the file

echo -e "Enter the name of the file : \c"
read file_name

if [ -f $file_name ]
then
	if [ -w $file_name ]
	then 
	    echo " Type some data . To quit press ctrl+d. "
	    cat >> $file_name
	else
             echo " the file do not have write permissions "
        fi
else 
     echo "$file_name not exists"
fi
