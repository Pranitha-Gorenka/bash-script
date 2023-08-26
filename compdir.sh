    #!/bin/bash

    while [ "$#" -eq 0 ]; do							#if argument ne to 1
  
    echo "Please give argument as input"	     				#print error message

    exit 0

    done;

    while [ ! -d "$1" ]; do							#find directory using -d

    echo "$0 : directory not found $1"			                        #print error message

    exit 0

    done

    pdir="$(dirname "$1")"						#parent directory

    DIR="$( cd "$( dirname "$0" )" && pwd )"				#present directory

    while [[ "$pdir" != "." && "$pdir" != "$DIR" ]]; do	                #check subdirectory

    echo "$0 : please mention a subdirectory"

    exit 0

    done

    while [ ! -w "$DIR" ]; do						#write permission to be checked

    echo "$0 : can not write the compressed file to current directory."

    exit 0

    done;

    fsize=$(du -sb "$1" | cut -f 1)						#check file size

    while [ $fsize -gt 536870912 ]; do					#it is larger than 512M

    if [[ ! "$inn" == "y" && ! "$inn" == "n" ]]

    then

    echo "Warning!. directory is over 512M. Proceed?[y/n]"

    read inn

    fi

    if [ "$inn" == "n" ]; then					#if you select no exit

    exit 0	

    fi;

    echo "it would take some time..kindly wait"

    done;

    fname="${1}.tgz"							#new file name	

    tar -cf "$fname" "$@"

    echo "Directory $1 archived as $fname"

  


