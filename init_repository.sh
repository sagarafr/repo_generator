#!/bin/bash

declare -irx is_git_global=0
declare -rx git_user_name="sagarafr"
declare -rx git_user_email="sagarafr@gmail.com"
declare -rx change_log="* \n"
declare -rx read_me="\n"

function create_file_is_not_exist ()
{
	if [ $# = 2 ]
	then
		if [ ! -f $1 ]
		then
			echo -e $2 >> $1
			echo -e "File $1 was created"
		else
			echo -e "File $1 is already created"
		fi	
	fi
}

if [ ! -d .git ]
then
	echo "Git repo not found"
	git init
fi


if [ ${is_git_global} = 0 ]
then
	git config user.name ${git_user_name}
	git config user.email ${git_user_email}
fi

create_file_is_not_exist AUTHORS.md "# AUTHORS\n* ${git_user_name} (${git_user_email})\n"
create_file_is_not_exist BUGS.md "# BUGS\nNothing for the moment\n"
create_file_is_not_exist ChangeLog.md "# ChangeLog\n\n## Version 0.0.0\n\n${change_log}"
create_file_is_not_exist INSTALL.md "# INSTALL\n"
create_file_is_not_exist LICENCE.md "# LICENCE\n"
create_file_is_not_exist News.md "# News\n"
create_file_is_not_exist README.md "# README\n\n${read_me}"
create_file_is_not_exist THANKS.md "# THANKS\n"
create_file_is_not_exist TODO.md "# TODO\n"
