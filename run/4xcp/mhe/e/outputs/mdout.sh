#!/bin/bash

# Extract heat and equil mdout info
perl process_mdout.perl 1equ.out 2equ.out 3equ.out 4equ.out 5equ.out 6equ.out 7equ.out 8equ.out 9equ.out 10equ.out 11equ.out 12equ.out 13equ.out 14equ.out 15equ.out 16equ.out 17equ.out 18equ.out 19equ.out 20equ.out 21equ.out 22equ.out 23equ.out 24equ.out 25equ.out 26equ.out 27equ.out 28equ.out 29equ.out 30equ.out 31equ.out 32equ.out 33equ.out 34equ.out 35equ.out 36equ.out 37equ.out 38equ.out 39equ.out 40equ.out 41equ.out 42equ.out 43equ.out 44equ.out 45equ.out 46equ.out 47equ.out 48equ.out 49equ.out 50equ.out 51equ.out 52equ.out 53equ.out 54equ.out 55equ.out 56equ.out 57equ.out 58equ.out 59equ.out 60equ.out 61equ.out 62equ.out 63equ.out 64equ.out 65equ.out 66equ.out 67equ.out 68equ.out 69equ.out 70equ.out 71equ.out 72equ.out 73equ.out 74equ.out 75equ.out


mv summary.ETOT etot.dat
mv summary.EPTOT eptot.dat
mv summary.EKTOT ektot.dat
mv summary.TEMP temp.dat
mv summary.PRES pres.dat
mv summary.VOLUME vol.dat
mv summary.DENSITY density.dat

rm summary*

