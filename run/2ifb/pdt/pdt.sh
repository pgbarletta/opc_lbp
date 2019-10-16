#!/bin/bash
export CUDA_VISIBLE_DEVICES="1"

for i in `cat step.list`
do
    echo "Step:" $i
    k=`expr $i - 1`

    mdin=pdt.in
    mdout=${i}pdt.out
    prmtop=/home/pbarletta/lbp/top_files/2ifb.prmtop
    inpcrd=${k}p2ifb.rst7
    restrt=${i}p2ifb.rst7
    mdcrd=${i}p2ifb.nc

    if [ $i == 1 ]
    then
        inpcrd=../mhe/e/75e2ifb.rst7

        pmemd.cuda -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -x $mdcrd
        echo "Done step:" $i
    else
        pmemd.cuda -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -x $mdcrd
        echo "Done step:" $i
    fi
done
