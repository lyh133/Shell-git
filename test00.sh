#!/bin/bash

echo hi > a

#these should all print error becasue shrug directory hasnt been created yet
./shrug-add a
./shrug-commit -m 'first'
./shrug-show
./shrug-log


./shrug-init # this should be successful
./shrug-init # this should print error becasue repo aleady exist



#this should print error "nothing to commit"
./shrug-commit -m 'first'

#this should print error "cant open b" but still adds a 
./shrug-add a b
./shrug-commit -m 'first' #successful commit 0
./shrug-commit -m 'second' #nothing was changed so this should put error "nothing to commit"

echo "big bad" >> a
./shrug-commit -m 'second' #unsuccessful becasue nothing was added "nothing to commit"
./shrug-add a 
./shrug-commit -m 'second' #successful as commit 1


rm -r .shrug
rm a 
