#!/bin/bash
~/./mpirun -np 2 --cpus-per-proc 2 phyml -i TWA1.phylip -d aa -b -1 -m LG
~/./mpirun -np 2 --cpus-per-proc 2 phyml -i MAEA.phylip -d aa -b -1 -m LG
~/./mpirun -np 2 --cpus-per-proc 2 phyml -i Rmnd5.phylip -d aa -b -1 -m LG
~/./mpirun -np 2 --cpus-per-proc 2 phyml -i RanBPM.phylip -d aa -b -1 -m LG
~/./mpirun -np 2 --cpus-per-proc 2 phyml -i Muskelin.phylip -d aa -b -1 -m LG
~/./mpirun -np 2 --cpus-per-proc 2 phyml -i C17orf39.phylip -d aa -b -1 -m LG
~/./mpirun -np 2 --cpus-per-proc 2 phyml -i Armc8.phylip -d aa -b -1 -m LG
~/./mpirun -np 2 --cpus-per-proc 2 phyml -i WDR26.phylip -d aa -b -1 -m LG
exit
