#!/bin/bash -x

startPosition=0
endPosition=100
playerOnePosition=0

function play()
{
	diceOutput=$((RANDOM%6+1))
echo $diceOutput
}
play
