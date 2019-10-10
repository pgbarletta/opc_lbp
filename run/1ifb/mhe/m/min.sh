#! /bin/bash

mdin="min.in"
mdout="min.out"
prmtop="/home/pbarletta/lbp/top_files/1ifb.prmtop"
inpcrd="1ifb.rst7"
restrt="m1ifb.rst7"
refc="1ifb.rst7"

pmemd -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc
 
exit 0
