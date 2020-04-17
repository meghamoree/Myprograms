#!/bin/bash -x
isPartTime=1;
isFullTime=3;
totalSalary=0;
empRatePerHr=20;
totalWorkHrs=0;
totalWorkingDays=0;
maxHrsInMonth=10;
numberWorkingDays=20;

function getWorkHrs() {
  local $empCheck = $1
  case $empCheck in
                 $isFullTime )
                       empHrs=8
                       ;;
                 $isPartTime )
                      empHrs=4
                     ;;
             *)
                empHrs=0;
               ;;
        esac
    echo $empHrs
}
while [[ $totalWorkHrs -lt $maxHrsInMonth && $totalWorkingDays -lt $numberWorkingDays ]];
do
      ((totalworkingDays++))
       empCheck=$(( RANDOM % 3));
                      empHrs="$( getWorkHrs $empCheck )"
      totalWorkHrs=$(( $totalWorkHrs+$empCheck ));
done
      totalSalary=$(( $totalWorkHrs*$empRatePerHr ));
      echo ${dailyWage[@]}






