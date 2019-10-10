#! /bin/bash

export CUDA_VISIBLE_DEVICES="0"

mdin="hea.in"
mdout="hea.out"
prmtop="/home/pbarletta/lbp/top_files/1ifb.prmtop"
inpcrd="../m/mm1ifb.rst7"
restrt="h1ifb.rst7"
refc="../m/mm1ifb.rst7"
mdcrd="h1ifb.nc"

pmemd.cuda -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc -x $mdcrd

exit 0
