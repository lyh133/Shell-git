#!/bin/bash

./shrug-init > /dev/null
echo "good boy" > a
echo "good girl" > b
echo "good attackhelicopter" > c
./shrug-add a b c
./shrug-rm --cached a b c #this should give error becasue repositry has no commit yet
./shrug-commit -m "first time" > /dev/null

./shrug-show :a #this should show "goodboy"
./shrug-rm --cached a b c
./shrug-show :a #this should give error "shrug-show: error: 'a' not found in index"
ls #a should still exist in the directory



./shrug-add a b c
./shrug-rm  a
./shrug-show :a #this should give error "shrug-show: error: 'a' not found in index"
ls #a should not exist anymore 

rm b c
rm -r .shrug
