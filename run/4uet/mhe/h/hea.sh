#! /bin/bash

export CUDA_VISIBLE_DEVICES="0"

mdin="hea.in"
mdout="hea.out"
prmtop="/home/pbarletta/lbp/top_files/4uet.prmtop"
inpcrd="../m/mm4uet.rst7"
restrt="h4uet.rst7"
refc="../m/mm4uet.rst7"
mdcrd="h4uet.nc"

pmemd.cuda -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc -x $mdcrd

exit 0
