#!/bin/sh

# test error handling for shrug-rm (stop users from losing work)
./shrug-init
touch a b c d
./shrug-add a b
./shrug-rm a
./shrug-rm --cached a
./shrug-commit -m "first commit"
./shrug-rm a
./shrug-rm --cached b
./shrug-rm c d
./shrug-add c d
./shrug-rm c
./shrug-rm --cached d
echo 5 >c
./shrug-rm --cached c


