#!/bin/bash -x
echo "Welcome to Filp Coin Simulation"


x=$((RANDOM%10))
        FLIP=$(( x % 2 ))

                if [ $FLIP -eq 0 ]

                then
                        echo " Head come "
                else
                        echo " Tail come "
                fi
