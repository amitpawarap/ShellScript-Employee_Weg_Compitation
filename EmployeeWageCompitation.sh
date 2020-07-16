#!/bin/bash -x
echo "welcome to Employee Wage Computation"
#............................................................................

Attendence=$(( $RANDOM % 2 + 1 ))
if [ $Attendence -eq 1 ]
then
employ="Present"
echo $employ
else
employ="Absent"
echo $employ
fi

#.....................................................................................

