#!/bin/bash -x


isPartTime=1;
isFullTime=2;
totalSalary=0;
empRatePerHr=20;
totalWorkHrs=0;
totalWorkingDays=0;
maxHrsInMonth=10;
numWorkingDays=20;
while [[ $totalWorkHrs -lt $maxHrsInMonth && $totalWorkingDays -lt $numWorkingDays ]];
do
	((totalWorkingDays++))
        empCheck=$(( RANDOM % 3 ));

                case $empCheck in
                        $isFullTime )
                                empHrs=8
                                ;;
                        $isPartTime )
                                empHrs=4
                                ;;
                        *)
                                empHrs=0;
                esac
	totalWorkHrs=$(($totalWorkHrs + $empHrs ));
        salary=$(( $empHrs * $empRatePerHr ));
        totalSalary=$(($totalSalary + $salary ));
done
