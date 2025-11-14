#!/bin/bash

road=~/papka/digital-fundamentals-tasks/DFM/LAB04/
max_age=0
min_age=100
for nameF in $(ls $road)
do
        for entrails in $(cat $road$nameF)
        do
		starost=$(echo $entrails | cut -d ":" -f2)
                if [[ $starost -gt max_age ]]
                then
			max_age=$starost
			klichka=$(echo $entrails | cut -d ":" -f1)
			pochka=$(echo $entrails | cut -d ":" -f3)
                fi
		if [[ $starost -lt min_age ]]
		then
			min_age=$starost
			klichka1=$(echo $entrails | cut -d ":" -f1)
			pochka1=$(echo $entrails | cut -d ":" -f3)
		fi
        done

done
echo -e "старший:\nимя: $klichka\nвозраст: $max_age\nпочта: $pochka\nмладший:\nимя: $klichka1\nвозраст: $min_age\nпочта: $pochka1\n"
