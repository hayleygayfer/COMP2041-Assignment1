#!/bin/sh

# test shrug-add error handling 
touch a b c d
./shrug-add a b c d
./shrug-init
./shrug-add e
./shrug-add a b c
rm a
./shrug-add a
./shrug-add _a
