#!/bin/sh

# test add and change files with status
./shrug-init
touch a b c d
./shrug-add a b
./shrug-commit -m "first commit"
./shrug-status
./shrug-add c d
./shrug-status
echo 3 >c
echo 2 >d
echo 1 >b
echo 0 >a
./shrug-status
./shrug-add a b c d
./shrug-status
./shrug-commit -m "second commit"
echo 5 >c
echo 4 >d
echo 3 >b
echo 2 >a
./shrug-add a b c d
echo 2 >c
echo 3 >d
echo 4 >b
echo 5 >a
./shrug-status
