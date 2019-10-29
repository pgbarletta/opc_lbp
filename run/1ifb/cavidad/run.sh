#!/bin/bash

~/labo/ANA/build/ANA2 avg_1ifb.pdb -c cut_beta.cfg -o vol_avg_1ifb
~/labo/ANA/build/ANA2 avg_1ifb.pdb -c cut_beta.cfg -d ../pdt/full_fit_1ifb.nc -o vol_trj_1ifb

exit 0
