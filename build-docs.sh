#!/bin/bash

# Set some vars
base_dir="$(pwd)"
echo "base dir ${base_dir}"

# Build
make html # \
# && make latexpdf \
# && cd "${base_dir}/build/latex"

# Get pdf doc name
# pdf_file="$(ls *.pdf)"

# pwd
# if [ -f "${pdf_file}" ];
# then
#    rm "${pdf_file}"
# fi
# pwd
# Copy file to main dir
# if [ -f "${pdf_file}" ];
# then
#    rm "${pdf_file}"
# fi
# cp "build/latex/${pdf_file}" ./

# AUTOMATING THE FTP UPLOAD IN THE FUTURE
# https://blog.eduonix.com/shell-scripting/how-to-automate-ftp-transfers-in-linux-shell-scripting/
