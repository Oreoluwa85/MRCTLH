#!/bin/bash
phyml -i trimTWA1.phylip -d aa -b -1 -m LG --no_memory_check
phyml -i trimMAEA.phylip -d aa -b -1 -m LG --no_memory_check
phyml -i trimRmnd5.phylip -d aa -b -1 -m LG --no_memory_check
phyml -i trimRanBPM.phylip -d aa -b -1 -m LG --no_memory_check
phyml -i trimMuskelin.phylip -d aa -b -1 -m LG --no_memory_check
phyml -i trimC17orf39.phylip -d aa -b -1 -m LG --no_memory_check
phyml -i trimArmc8.phylip -d aa -b -1 -m LG --no_memory_check
phyml -i trimWDR26.phylip -d aa -b -1 -m LG --no_memory_check
exit
