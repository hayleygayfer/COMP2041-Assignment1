#!/bin/sh

# test shrug-show error handling
./shrug-init
touch a b c d
./shrug-show 0:a
./shrug-add a b
./shrug-commit -m "first commit"
./shrug-show a
./shrug-show :c
./shrug-show 1:a
./shrug-show 0:d

