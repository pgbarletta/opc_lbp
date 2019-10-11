#! /bin/bash

mdin="mmin.in"
mdout="mmin.out"
prmtop="/home/pbarletta/lbp/top_files/2ifb.prmtop"
inpcrd="m2ifb.rst7"
restrt="mm2ifb.rst7"
refc="2ifb.rst7"

pmemd -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc

exit 0
