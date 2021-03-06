#!/bin/sh

np=5
nn=4
q="batch"
if [ -n "$1" ]; then
    let nn="$1"
fi

if [ -n "$2" ]; then
    let np="$2"
fi

qsub -j oe -q $q -o /shared/users/prblaes/ImageColorization/log.txt -l nodes=$nn:ppn=$np -l walltime=100000:00:00 /shared/users/prblaes/ImageColorization/imgc.pbs
