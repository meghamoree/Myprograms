#!/bin/bash -x

Employee=1
emprateperhour=200
workinghours=8
	if [ $Employee == 1 ]
	then
		salary= $emprateperhour*$workinghours
	else
		salary= 0
echo Salary is : $salary
