#!/bin/bash
export CUDA_VISIBLE_DEVICES="0"

for i in `cat step.list`
do
    echo "Step:" $i
    k=`expr $i - 1`

    mdin=pdt.in
    mdout=${i}pdt.out
    prmtop=/home/almacen/pbarletta/lbp/top_files/4xcp.prmtop
    inpcrd=${k}p4xcp.rst7
    restrt=${i}p4xcp.rst7
    mdcrd=${i}p4xcp.nc

    if [ $i == 1 ]
    then
        inpcrd=../mhe/e/75e4xcp.rst7

        pmemd.cuda -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -x $mdcrd
        echo "Done step:" $i
    else
        pmemd.cuda -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -x $mdcrd
        echo "Done step:" $i
    fi
done
