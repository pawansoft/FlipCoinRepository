#!/bin/bash

read -p "Enter the number of time to toss" num
HEAD_COUNT=0;
TAIL_COUNT=0;
Winner=1;
for (( i=1; i <= $num; i++ ))
do
	outCome=$((RANDOM%2))

	if [ $outCome -eq $Winner ]
	then
		HEAD_COUNT=$((HEAD_COUNT + 1))
	else
		TAIL_COUNT=$((TAIL_COUNT +1 ))
	fi
done

echo "Head Won : $HEAD_COUNT Times"

echo "Tail Won : $TAIL_COUNT Times"
