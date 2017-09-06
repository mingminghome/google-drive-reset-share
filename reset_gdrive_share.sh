#!/bin/bash

#List all files owned by you
ALLFID=$(gdrive list --query "'me' in owners"| awk 'FNR > 1 {print $1}')

#Loop through all your files
for FID in $ALLFID
do
    #List all share ID (USER) in your file
	ALLPID=$(gdrive share list $FID | awk 'FNR > 2 {print $1}')
	for PID in $ALLPID
	do
		echo "Processing FID: $FID with PID: $PID"
        	#Remove share ID (USER) from the file
		gdrive share revoke $FID $PID
	done
done
