#! /bin/bash

export CUDA_VISIBLE_DEVICES="0"

mdin="hea.in"
mdout="hea.out"
prmtop="/home/pbarletta/lbp/top_files/1ael.prmtop"
inpcrd="../m/mm1ael.rst7"
restrt="h1ael.rst7"
refc="../m/mm1ael.rst7"
mdcrd="h1ael.nc"

pmemd.cuda -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc -x $mdcrd

exit 0
