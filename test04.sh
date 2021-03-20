#!/bin/bash

./shrug-init > /dev/null
echo "abert" > a
echo "bobert" > b
echo "cambert" >c 
./shrug-add a b c

echo "not abert anymore" > a
echo "not bobert anymore" > b
echo "not cambert anymore" >c 

./shrug-commit -a -m "first time commit" > /dev/null

if [ "`./shrug-show 0:a`" = "not abert anymore" ] && [ "`./shrug-show 0:b`" = "not bobert anymore" ] && [ "`./shrug-show 0:c`" = "not cambert anymore" ]
then
    echo passed0
fi


rm -r .shrug
rm a b c