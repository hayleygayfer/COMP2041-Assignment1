#!/bin/sh

# test that shrug-commit -a works with remove options
./shrug-init
touch a b c d
echo 4> a
echo 3> b
echo 2> c
echo 1> d
./shrug-add a b c d
./shrug-commit -m "test commit"
./shrug-rm --force a
./shrug-rm --cached b
echo 4> d
echo 3> c
./shrug-commit -a -m "test -a"

