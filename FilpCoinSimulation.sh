#!/bin/bash -x
echo "Welcome to Filp Coin Simulation"

Heads=0
Tails=0
for (( i=0; i<=20;i++))
do

	x=$((RANDOM%10))
        FLIP=$(( x % 2 ))

                if [ $FLIP -eq 0 ]

                then
                         ((Heads++))
                else
			 ((Tails++))
                fi

done

echo "Number of time Heads are" $Heads
echo "Number of time Tails are" $Tails

if [[ $Heads -gt $Tails ]]
then
        echo "Heads Win"
elif [[ $Heads -lt $Tails ]]
then
        echo "Tails Win"
else
        echo "Tie"
fi
