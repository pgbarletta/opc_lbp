#! /bin/bash

mdin="mmin.in"
mdout="mmin.out"
prmtop="/home/pbarletta/lbp/top_files/1ifb.prmtop"
inpcrd="m1ifb.rst7"
restrt="mm1ifb.rst7"
refc="1ifb.rst7"

pmemd -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc

exit 0
