#!usr/bin/bash

# Check if enough arguments
if [ $# -lt 2 ]; then
    echo "please use command in this way"
    echo "Usage: $0 [options] search_string filename"
    exit 1
fi

# first we will handle options
opts=""
if [[ "$1" == -* ]]; then
    opts="$1"
    shift
fi

# Now $1 = search string, $2 = filename
search="$1"
file="$2"

# Check missing search string
if [ -z "$search" ]; then
    echo "Error: Missing search string."
    exit 1
fi

if [ -z "$file" ]; then
            echo "Error: Missing file name."
            exit 1
fi
if [ -f "$search" ]; then
            echo "Error: Missing file string."
                exit 1
fi
# Check if file exists
if [ ! -f "$file" ]; then
    echo "Error: '$file' is not a valid file."
    exit 1
fi

# last step : build grep
grep_opts="-i"  # always case-insensitive

[[ "$opts" == *n* ]] && grep_opts="$grep_opts -n"
#this means if left side condition is true run right side after &
[[ "$opts" == *v* ]] && grep_opts="$grep_opts -v"

# if all argument are correct run grep
grep $grep_opts "$search" "$file"
