# fawry_task
# grep

A mini version of the `grep` command, written in Bash.

## Features
- Search for a string in a file (case-insensitive)
- Show line numbers with `-n`
- Invert match with `-v`
- Support combined options like `-vn` or `-nv`
  usage:
  grep.sh hello testfile.txt
  grep.sh -n hello testfile.txt
  grep.sh -vn hello testfile.txt
  grep.sh -v hello testfile.txt

Requirements:
Bash shell 

note : to make file executable:
chmod +x mygrep.sh
