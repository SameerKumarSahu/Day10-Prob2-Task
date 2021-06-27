#!/bin/bash -x

Heads=0
Tails=0

while [[ $Heads -lt 21  &&
		 $Tails -lt 21 ]]
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
	s=$(($Heads - $Tails))        
	echo "Heads Win by" $s
elif [[ $Tails -lt $Heads ]]
then
	s=$(($Heads - $Tails))
        echo "Tails Win by " $s
else
        echo "Tie"
fi

