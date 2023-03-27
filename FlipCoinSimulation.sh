#!/bin/bash -x
headCount=0;
tailCount=0;
function flip() {
while [ true ]
do
	flip=$((RANDOM%2))
	if [[ $flip -eq 1 ]]
	then
		((headCount++))
		if [[ $headCount -eq 21 ]]
		then
			echo "Head wins"
			break
		fi
	else
		((tailCount++))
		if [[ $tailCount -eq 21 ]]
		then
			echo "Tail Wins"
			break
		fi
	fi
if [[ $headCount -eq $tailCount ]]
then
	echo "Tie"
fi
echo "Head Count is $headCount"
echo "Tail Count is $tailCount"
done
difference=$(($headCount-$tailCount))
echo "Difference=$difference"
}

if [[ $difference -eq 0 ]]
then
	flip;
fi
