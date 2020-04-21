#!/bin/bash -x

startPosition=0
endPosition=100

function noPlay()
{

if [[ $playerOnePosition -lt 0 ]]
        then
                playerOnePosition=$startPosition
        else
                playerOnePosition=$(($playerOnePosition+0))
     fi
}

function snake()
{

 if [[ $playerOnePosition -lt 0 ]]
        then
                playerOnePosition=$startPosition
        else
                playerOnePosition=$(($playerOnePosition-$diceOutput))
        fi
}
function ladder()
{
        if [[ $(($endPosition - $playerOnePosition)) -ge $diceOutput ]]
        then
 playerOnePosition=$(($playerOnePosition+$diceOutput))
        else
                playerOnePosition=$(($playerOnePosition+0))
        fi
}
function play()
{
while [[ $playerOnePosition -ne $endPosition ]]
do
	PlayerOnePosition=0
        diceOutput=$((RANDOM%6+1))

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
      fi

echo Number of Times Dice Roll..$diceRoll

echo position is $diceOutput
}
play

