#/bin/sh

# sh-std : Contains oftenly used shell functions
# @author: Hubert The Elephant <hubert@creakiwi.com>
# @author: Alexandre ANDRE <alexandre@creakiwi.com>


################
# REQUIREMENTS #
################

# usage: check_bin binary
check_bin()
{
	if [ -z `which ${1}` ]
	then
		exit_error 1 "Unable to find required binary \"${1}\""
	fi
}

check_bins()
{
	check_bin "awk"
}

################
# EXIT METHODS #
################

# usage: exit_error [error_code [error_msg]]
function exit_error()
{
	if [ ${#} -eq 2 ]
	then
		echo ${2} >&2
	fi

	if [ $# -ge 1 ]
	then
		exit ${1}
	else
		exit 1
	fi
}

# usage: exit_success
function exit_success()
{
	exit 0
}

#################
# FILES METHODS #
#################

file_exists()
{
	file_exists_r=0
	if [ -e ${1} ]
	then
		file_exits_r=1
	fi
}

is_file()
{
	is_file_r=0
	if [ -f ${1} ]
	then
		is_file_r=1
	fi
}

is_dir()
{
	is_dir_r=0
	if [ -d ${1} ]
	then
		is_dir_r=1
	fi
}

is_writable()
{
	is_writable_r=0
	if [ -w ${1} ]
	then
		is_writable_r=1
	fi
}

is_readable()
{
	is_readable_r=0
	if [ -r ${1} ]
	then
		is_readable_r=1
	fi
}

##################
# STRING METHODS #
##################

lowercase()
{
	lowercase_r=`echo ${1} | awk '{print tolower($0)}'`
}

check_bins

argc=${#}
