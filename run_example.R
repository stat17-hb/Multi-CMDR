example <- read.csv("example.csv")
snp.mat <- example[,1:20]
phes <- example[,21:22]
source("Multi-CMDR.R")
MCMDR(phes, snp.mat, K=2, cv=10, nperm=0, sele.type='cvc', test.type="ht2", covrt=NULL, trim=T)
