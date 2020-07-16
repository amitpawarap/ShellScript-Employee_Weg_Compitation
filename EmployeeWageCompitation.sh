#!/bin/bash -x
echo "welcome to Employee Wage Computation"
#............................................................................

workhours ()
{
read -p "Enter the hours you work : " hours
echo $hours
}

#..................................................................................
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
if [ "$employ" == "Present" ]
then
Employwageperhour=20
worktime=8
dailyemploywage=$(($Employwageperhour * $worktime))
echo $dailyemploywage
else
dailyemploywage=0
echo $dailyemploywage
fi

#.................................................................................

if [ "$employ" == "Present" ]
then
Employwageperhour=20
worktime=8
read -p "Enter the Employ name : " name
partime=$(($worktime/2))
parttimeemploywage=$(($Employwageperhour * $partime))
echo "Wage of $name who does part time is : " $parttimeemploywage
else
parttimeemploywage=0
echo "Wage of $name who does part time is : "$parttimeemploywage
fi
#...................................................................................

if [ "$employ" == "Present" ]
then
echo "1.Wages of the employ who does full time"
echo "2.Wages of the employ who does part time"
echo "3.Exit"
read -p "Enter your choice from above statements : " ch

case $ch in
"1")

	if [ "$employ" == "Present" ]
	then	
	Employwageperhour=20
	worktime=8
	dailyemploywage=$(($Employwageperhour*$worktime))
	echo "Wage of $name for full time is : "$dailyemploywage
	else
	echo "The employ $name is : " $employ 
	fi
;;

"2")


	if [ "$employ" == "Present" ]
	then	
	read -p "Enter the name of the employ : " name
	partworktime=$(($worktime/2))
	parttimeemploywage=$(($Employwageperhour*$partworktime))
	echo "Wage of $name for part time is : "$parttimeemploywage
	else
	echo "The employ $name is : "$employ
	fi 
;;

"3")
exit
;;

*) 
echo invalid choice 
;;

esac
else
wage=0
echo "Wage of $name is : "$wage
fi
#.......................................................................................

WorkingDaysofMonth=20
wagesofamonth=$(($dailyemploywage*$WorkingDaysofMonth))
echo "Wages Per Month of $name is : " $wagesofamonth
#................................................................................
read -p "Enter the name of the new employ to check the wages : " newname
read -p "Enter the hours you work : " time
newworktime=0
wages=0
days=0
hoursleft=0
dailyemploywages=160
Employwageperhours=20
i=1
while [ $newworktime -lt $time ]
do
newworktime=$(($newworktime+1))
if [ $(($newworktime%8)) -eq 0 ]
then
days=$(($days+1))
wages=$(($wages+$dailyemploywages))
fi
done
hoursleft=$(($newworktime%8))
totalwages=$((($hoursleft * $Employwageperhours) + $wages))
echo "Total wages of $newname is : $totalwages "
echo "The days and hours work done is : $days days and $hoursleft hours "

#.......................................................................................

