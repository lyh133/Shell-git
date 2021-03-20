#!/bin/bash

./shrug-init
echo "111" > a
./shrug-add a

if [ "`./shrug-show :a`" = "111" ]
then 
    echo passed1
fi

 

if [ "`./shrug-show 0:a`" = "shrug-show: error: unknown commit '0'" ]
then 
    echo passed2
fi
if [ "`./shrug-commit -m "first time wow"`" = "Committed as commit 0" ]
then
    echo passed3
fi

if [ "`./shrug-show 0:a`" = "111" ]
then 
    echo passed4
fi

echo "222" >> a
./shrug-add a 
if [ "`./shrug-commit -m "second time wow"`" = "Committed as commit 1" ]
then
    echo passed5
fi
if [ "`./shrug-show 0:a`" = "111" ]
then 
    echo passed6
fi
if [ "`./shrug-show 1:a`" = "111
222" ]
then 
    echo passed7
fi
if [ "`./shrug-show :a`" = "111
222" ]
then 
    echo passed8
fi


rm -r .shrug
rm a 
