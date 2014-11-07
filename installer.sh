#!/bin/bash

/bin/echo -e "\e[1;32m Installing LintRoller.\e[0m"

#sudo mkdir /usr/local/bin/lintroller
/bin/echo -e "\e[1;32m Copying files to standard path /usr/local/bin...\e[0m"

sudo cp lintroller copyright_input.txt Full_bannedfxn_list.xls /usr/local/bin
if [ $? -eq 0 ]; then
	/bin/echo -e "\e[1;32m successfully copied files...\e[0m"
else
	/bin/echo -e "\e[1;31m copying failed...\e[0m"
	exit 1;
fi

#PATH=$PATH:/usr/local/bin/lintroller
sudo chmod 777 /usr/local/bin/lintroller
/bin/echo -e "\e[1;32m Successfully installed lintroller!!!\e[0m"

