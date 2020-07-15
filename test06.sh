#!/bin/sh

# test all possibilities for shrug-status
./shrug-init
touch a b c d e f g h i j
./shrug-add h i
./shrug-commit -m "first commit"
rm i
./shrug-add d e f g
./shrug-commit -m "second commit"
echo 5 >g
./shrug-add g
echo 4 >g
echo 3 >f
echo 2 >e
./shrug-add e
./shrug-add a b c
echo 1 >b
rm c
./shrug-rm h
./shrug-status


