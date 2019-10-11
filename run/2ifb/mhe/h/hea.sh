#! /bin/bash

export CUDA_VISIBLE_DEVICES="1"

mdin="hea.in"
mdout="hea.out"
prmtop="/home/pbarletta/lbp/top_files/2ifb.prmtop"
inpcrd="../m/mm2ifb.rst7"
restrt="h2ifb.rst7"
refc="../m/mm2ifb.rst7"
mdcrd="h2ifb.nc"

pmemd.cuda -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc -x $mdcrd

exit 0
