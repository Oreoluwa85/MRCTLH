Datatype  = Protein
Aamodel   = Poisson
Covarion  = No
#States  = 20
Rates     = Invgamma
lset nst=6 nucmodel=codon code=universal rates=invgamma ngammacat=4;
mcmcp ngen=30000000 nruns=2 swapfreq=1 samplefreq=1000 printfreq=100 nchains=4 savebrlens=yes ordertaxa=no;
mcmc;

	sump burnin=5;
	sumt burnin=5 contype=halfcompat showtreeprobs=no;
end;