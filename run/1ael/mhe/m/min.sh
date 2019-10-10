#! /bin/bash

mdin="min.in"
mdout="min.out"
prmtop="/home/pbarletta/lbp/top_files/1ael.prmtop"
inpcrd="1ael.rst7"
restrt="m1ael.rst7"
refc="1ael.rst7"

pmemd -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc
 
exit 0
