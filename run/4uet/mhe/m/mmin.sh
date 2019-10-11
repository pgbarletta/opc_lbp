#! /bin/bash

mdin="mmin.in"
mdout="mmin.out"
prmtop="/home/pbarletta/lbp/top_files/4uet.prmtop"
inpcrd="m4uet.rst7"
restrt="mm4uet.rst7"
refc="4uet.rst7"

pmemd -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc

exit 0
