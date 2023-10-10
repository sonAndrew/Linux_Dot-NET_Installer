#!/bin/bash

# This script loops through files and reads each line 
# and adds formating based on the number of characters.

read_lines(){
    # VARIABLES
    lineNumber=0

    while IFS= read -r line; 
    do 
        # Increase the value of ( lineNumber )
        ((lineNumber++))
        case ${#line} in
            4)
                # echo "${#line}"
                printf '%s\n' "*            $lineNumber. $line                  *"
                ;;
            6)
                # echo "${#line}"
                printf '%s\n' "*            $lineNumber. $line                *"
                ;;
            8)
                # echo "${#line}"
                printf '%s\n' "*            $lineNumber. $line              *"
                ;;
        esac
    done < $1
}
