#!/bin/sh

# test shrug-rm and changing files with status
./shrug-init
touch a b c d
./shrug-add a b
./shrug-commit -m "first commit"
./shrug-add c
./shrug-rm --cached c
./shrug-status
./shrug-add c d
./shrug-commit -m "second commit"
./shrug-rm c
rm d
./shrug-status
echo 3 >a
echo 2 >b
rm a
./shrug-status
