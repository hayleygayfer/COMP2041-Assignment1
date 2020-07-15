#!/bin/sh

# test error handling for commit
touch a b c d
./shrug-commit -m "no shrug repository"
./shrug-init
./shrug-commit -m "empty commit"
./shrug-add a b c d
./shrug-commit -m "commit"
./shrug-commit -m "same commit"
echo 5 >a 
echo 4 >b 
./shrug-commit -a -m "changed commit"
./shrug-rm --cached a b c d
./shrug-commit -m "another empty commit"
