#!/bin/bash

Winner=1;
outCome=$((RANDOM%2))

if [ $outCome -eq $Winner ]
then
	echo "HEAD   You Won !!!!!!!"
else
	echo "TAIL   You loose !!!!!"
fi
