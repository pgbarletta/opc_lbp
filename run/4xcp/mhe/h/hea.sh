#! /bin/bash

export CUDA_VISIBLE_DEVICES="0"

mdin="hea.in"
mdout="hea.out"
prmtop="/home/pbarletta/lbp/top_files/4xcp.prmtop"
inpcrd="../m/mm4xcp.rst7"
restrt="h4xcp.rst7"
refc="../m/mm4xcp.rst7"
mdcrd="h4xcp.nc"

pmemd.cuda -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc -x $mdcrd

exit 0
