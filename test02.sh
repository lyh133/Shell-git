#!/bin/bash

./shrug-init
echo "hello" > a
if [ "`./shrug-log`" = "shrug-log: error: your repository does not have any commits yet" ]
then
    echo passed1
fi
./shrug-add a
./shrug-commit -m "1st time eva" > /dev/null

if [ "`./shrug-log`" = "0 1st time eva" ]
then
    echo passed2
fi

if [ "`./shrug-commit -m "2nd time"`" = "nothing to commit" ]
then
    echo passed3
fi

echo "changed wow" >> a
./shrug-add a
./shrug-commit -m "2nd time" > /dev/null

if [ "`./shrug-log`" = "1 2nd time
0 1st time eva" ]
then
    echo passed4
fi



rm -r .shrug
rm a
