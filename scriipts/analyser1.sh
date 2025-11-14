#!/bin/bash

road=~/papka/digital-fundamentals-tasks/DFM/LAB04/

for nameF in $(ls $road)
do
	for entrails in $(cat $road$nameF)
	do
		klichka=$(echo $entrails | cut -d ":" -f1)
		starost=$(echo $entrails | cut -d ":" -f2)
		pochka=$(echo $entrails | cut -d ":" -f3)
		echo -e "имя: $klichka\nвозраст: $starost\nпочта: $pochka\n"
	done

done
