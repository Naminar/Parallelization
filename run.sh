#!/bin/bash

MAX_N_THREADS=12

for (( n_threads = 1; n_threads <= $MAX_N_THREADS; n_threads++ )) 
do
	echo "------"
	echo $n_threads
	echo "------"
	
	for (( i = 0; i < 2; i++ ))
	do	
		time ./integrate $n_threads 
	done
done
