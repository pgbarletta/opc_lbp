#!/bin/bash
export CUDA_VISIBLE_DEVICES="0"
i=0
starting_mdin="0equ.in"

for step in `cat step.list`
do

    i=`expr $i + 1`
    k=`expr $i - 1`

    echo "Step:" $i

	mdin=${i}equ.in
	mdout=${i}equ.out
	prmtop=/home/pbarletta/lbp/top_files/1ifb.prmtop
	inpcrd=${k}e1ifb.rst7
	restrt=${i}e1ifb.rst7
	mdcrd=${i}e1ifb.nc

    if [ $i == 1 ]
    then
        inpcrd=../h/h1ifb.rst7
        refc=../h/h1ifb.rst7
		restrt=${i}e1ifb.rst7

        # On the 1st step: mdin = starting_mdin
    	sed "s/50\.0/${step}/" $starting_mdin > $mdin

        pmemd.cuda -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc -x $mdcrd
        echo "Done step:" $i
    elif [[ $i == 75 || $i == 76 ]]
    then
        pmemd.cuda -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -x $mdcrd
        echo "Done last step:" $i
	else
    	refc=${k}e1ifb.rst7

        # On the 1st step: mdin = starting_mdin
        sed "s/25\.0/${step}/" $starting_mdin > $mdin

	    pmemd.cuda -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc -x $mdcrd
	    echo "Done step:" $i
    fi
done
