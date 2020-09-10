#!/bin/bash

HEAD_COUNT=0;
TAIL_COUNT=0;
Winner=1;
Loose=0;
while :
do
	outCome=$((RANDOM%2))

	if [[ $outCome -eq $Winner  && $HEAD_COUNT -lt 21 ]]
	then
		HEAD_COUNT=$((HEAD_COUNT + 1))
	elif [[ $outCome -le $Loose  && $TAIL_COUNT -lt 21 ]]
	then
		TAIL_COUNT=$((TAIL_COUNT +1 ))
	else
		break;
	fi
done
if [ $HEAD_COUNT -gt $TAIL_COUNT ]
then
	diff=$(($HEAD_COUNT - $TAIL_COUNT))
	echo "Head Won by : $diff Point"
elif [ $TAIL_COUNT -gt $HEAD_COUNT ]
then
	diff=$(($TAIL_COUNT - $HEAD_COUNT))
	echo "Tail Won by : $diff Pint"
else
	echo "Its Tie"

fi
