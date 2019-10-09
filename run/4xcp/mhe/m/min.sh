#! /bin/bash

mdin="min.in"
mdout="min.out"
prmtop="/home/pbarletta/lbp/top_files/4xcp.prmtop"
inpcrd="4xcp.rst7"
restrt="m4xcp.rst7"
refc="4xcp.rst7"

pmemd -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc
 
exit 0
