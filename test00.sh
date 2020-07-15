#!/bin/sh

# test that show anticipates nonexistant file and removed file
./shrug-init
touch a b c
echo 1 >a
echo 2 >b
echo 3 >c
./shrug-add a b c
./shrug-commit -m "test message"
./shrug-show 0:d
./shrug-rm a
./shrug-commit -m "test message 2"
./shrug-show 1:a




