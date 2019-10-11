#! /bin/bash

mdin="min.in"
mdout="min.out"
prmtop="/home/pbarletta/lbp/top_files/2ifb.prmtop"
inpcrd="2ifb.rst7"
restrt="m2ifb.rst7"
refc="2ifb.rst7"

pmemd -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc
 
exit 0
