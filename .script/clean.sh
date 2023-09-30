#!/usr/bin/bash



# Function to clean the `__pycache__` directories
function clean_pycache() {
    # get all the `__pycache__` directories
    PyCacheDirs=$(find . -type d -name "__pycache__")

    echo 'Cleaning the `__pycache__` directories...'
    # loop through all the `__pycache__` directories
    for dir in $PyCacheDirs; do
        echo -e "Remove the directory (y/n)? \n$dir"
        read -r answer
        if [[ $answer == 'y' ]]; then
            rm -rf $dir
        fi
    done
     
}


# main function
function main() {
    clean_pycache
}

# call the main function
main






