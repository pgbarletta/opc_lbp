#!/bin/bash

~/labo/ANA/build/ANA2 avg_2ifb.pdb -c cut_beta.cfg -o vol_avg_2ifb
~/labo/ANA/build/ANA2 avg_2ifb.pdb -c cut_beta.cfg -d ../pdt/full_fit_2ifb.nc -o vol_trj_2ifb

exit 0
