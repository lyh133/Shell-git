#!/bin/bash

./shrug-init > /dev/null
echo "goodboy" > a
./shrug-add a
rm a
./shrug-add a #this should not give error

echo passed

rm -r .shrug
