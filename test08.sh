#!/bin/sh

# test commit -a for deleted files
./shrug-init
touch a b c d
./shrug-add a b c d
./shrug-commit -m "first commit"
echo 5 >a
echo 4 >b
rm c
./shrug-commit -a -m "second commit"
./shrug-show 1:c

