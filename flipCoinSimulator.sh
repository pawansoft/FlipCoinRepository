#!/bin/bash

HEAD_COUNT=0;
TAIL_COUNT=0;
Winner=1;
Loose=0;
diff=0;
while :
do
	outCome=$((RANDOM%2))

	if [ $outCome -eq $Winner ]
	then
		
		HEAD_COUNT=$((HEAD_COUNT + 1))
	elif [ $outCome -le $Loose ]
	then
		TAIL_COUNT=$((TAIL_COUNT +1 ))
	fi
	if [[ $HEAD_COUNT -ge 21 || $TAIL_COUNT -ge 21 ]]
	then
		if [[ `expr $TAIL_COUNT - $HEAD_COUNT` -gt 2 || `expr $HEAD_COUNT - $TAIL_COUNT` -gt 2 ]]
		then	
			break;
		else
			echo "Tie"
			continue;
		fi
	else
		continue
	fi
done
if [ $HEAD_COUNT -gt $TAIL_COUNT ]
then
	diff=$(($HEAD_COUNT - $TAIL_COUNT))
	echo "Head Won by : $diff Point"
elif [ $TAIL_COUNT -gt $HEAD_COUNT ]
then
	diff=$(($TAIL_COUNT - $HEAD_COUNT))
	echo "Tail Won by : $diff Point"
else
	echo "Its Tie"

fi
