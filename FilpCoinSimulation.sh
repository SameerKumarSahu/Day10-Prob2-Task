#!/bin/bash -x

Heads=0
Tails=0

while [ $Heads -ne 21 ]
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

