#!/bin/bash -x

startPosition=0
endPosition=100
playerOnePosition=0
playerTwoPosition=0
diceRoll=1
diceOutput=0
turn=0

function play()
{
while [[ $playerTwoPosition -ne $endPosition && $playerOnePosition -ne $endPosition ]]
do
        ((turn++))
        diceOutput=$((RANDOM%6+1))
        choice=$((RANDOM%3))

                if [[ $choice -eq 0 ]]
                then
                        noPlay
                elif [[ $choice -eq 1 ]]
                then
                        snake
                elif [[ $choice -eq 2 ]]
                then
                        ladder
                fi

        ((diceRoll++))
done
      if [[ $playerOnePosition  -eq 100 ]]
      then
         echo Player 1 Won
      elif [[ $playerTwoPosition -eq 100 ]]
      then
         echo Player 2 Won
      fi
echo Number of Times Dice Roll..$diceRoll
}



function noPlay()
{
if [[ $(($turn % 2)) -eq 1 ]]
then
if [[ $playerOnePosition -lt 0 ]]
        then
                playerOnePosition=$startPosition
        else
                playerOnePosition=$(($playerOnePosition+0))
        fi
else
        if [[ $playerTwoPosition -lt 0 ]]
        then
                playerTwoPosition=$startPosition
        else
                playerTwoPosition=$(($playerTwoPosition+0))
        fi
fi
}

function snake()
{
if [[ $(($turn % 2)) -eq 1 ]]
then
        if [[ $playerOnePosition -lt 0 ]]
        then
                playerOnePosition=$startPosition
        else
                playerOnePosition=$(($playerOnePosition-$diceOutput))
        fi
else
        if [[ $playerTwoPosition -lt 0 ]]
        then
                playerTwoPosition=$startPosition
        else
                playerTwoPosition=$(($playerTwoPosition-$diceOutput))
        fi
fi
}

function ladder()
{
if [[ $(($turn % 2)) -eq 1 ]]
then
        if [[ $(($endPosition - $playerOnePosition)) -ge $diceOutput ]]
        then
 playerOnePosition=$(($playerOnePosition+$diceOutput))
        else
                playerOnePosition=$(($playerOnePosition+0))
        fi
else
        if [[ $(($endPosition - $playerTwoPosition)) -ge $diceOutput ]]
        then
                playerTwoPosition=$(($playerTwoPosition+$diceOutput))
        else
                playerTwoPosition=$(($playerTwoPosition+0))
        fi
fi
}

play

