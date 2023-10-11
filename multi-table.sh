#!/bin/sh

if [ "$#" -ne 2 ]; then
	echo "Invalid input"
	exit 1
fi


rows="$1"
cols="$2"

if [ $rows -lt 1 ] || [ $cols -lt 1 ] ; then
       echo "Input must be greater than 0"
       exit 1
fi       


for i in $(seq 1 $rows); do
	for j in $(seq 1 $cols); do
		result=$((i * j))
		printf "%d x %d = %d \t" $i $j $result
	done
	echo
done

exit 0

