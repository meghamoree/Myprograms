#!/bin/bash -x

isPresent=1;
isPartTime=2;
isFullTime=3;
totalsalary=0;
empRatePerHr=20;

for (( days=1; days<20; days++ ))
do
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

	salary=$(( $empHrs * $empRatePerHr ));
	totalsalary=$(($totalsalary + $salary ));
done
echo $totalsalary
