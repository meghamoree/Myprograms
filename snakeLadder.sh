#!/bin/bash -x

startPosition=0
endPosition=100

function noPlay()
{
 	playerOnePosition=$(($playerOnePosition+0))
}

function snake()
{
 	playerOnePosition=$(($playerOnePosition-$diceOutput))
}

function ladder()
{
 	playerOnePosition=$(($playerOnePosition+$diceOutput))
}

function play()
{
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
echo $diceOutput
}
play

