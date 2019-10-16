#!/bin/bash

# Extract heat and pdtil mdout info
perl process_mdout.perl 1pdt.out 2pdt.out 3pdt.out 4pdt.out 5pdt.out 6pdt.out 7pdt.out 8pdt.out 9pdt.out 10pdt.out 11pdt.out 12pdt.out 13pdt.out 14pdt.out 15pdt.out 16pdt.out 17pdt.out 18pdt.out 19pdt.out 20pdt.out
 
mv summary.ETOT etot.dat
mv summary.EPTOT eptot.dat
mv summary.EKTOT ektot.dat
mv summary.TEMP temp.dat
mv summary.PRES pres.dat
mv summary.VOLUME vol.dat
mv summary.DENSITY density.dat

rm summary*

