# Multi-CMDR
Cluster-based multifactor dimensionality reduction to identify genetic interactions for multivariate quantitative phenotypes

## Notice
All source codes were listed in file "Multi-CMDR.R" for implemeting Multi-CMDR 

## Citation
Hyein Kim, Hoe-Bin Jeong, Hye-Young Jung, Taesung Park, Mira Park, "Multivariate Cluster-Based Multifactor Dimensionality Reduction to Identify Genetic Interactions for Multiple Quantitative Phenotypes", BioMed Research International 2019(l):1-10, DOI: 10.1155/2019/4578983, 2019.

## Example 
Try _run_example.R_ to get a quick start

_example.csv_ contains data used for simulation study in the paper, which is the case of following bivariate normal distribution, correlation=0.5, MAF=0.2, Heritability=0.1

## Usage
In R:

```
example <- read.csv("example.csv")
snp.mat <- example[,1:20]
phes <- example[,21:22]
source("Multi-CMDR.R")
MCMDR(phes, snp.mat, K=2, cv=10, nperm=0, sele.type='cvc', test.type="ht2", covrt=NULL, trim=T)
```

* inputs: 
  * phes      ---- phenotypes, n times d matrix, n is the number of subjects, d is the number of phenotypes
  * snp.mat   ---- snp matrix, n times p matrix, n is the number of subjects, p is the number of SNPs
  * K         ---- K-way interactions, default 2
  * cv        ---- k-fold cross validation; default 10
  * nperm     ---- permutation times for calculating p-value for the best model (0 if pvalue if not needed; default)
  * test.type ---- test statistics, could be 'ht2' or 't', corresponding to hotelling t2 test and t test; default 'ht2'
  * sele.type ---- the way to tune the best model, 'cvc' or 'score'; default 'cvc'
  * covrt     ---- the covariate matrix; default NULL (no covariates)
  * trim      ---- If TRUE, remove samples in noise cluster; default TRUE

* output: a list with elements as follows
    *  best_ksnps ---- the snp ids for the best models
    *  cvc        ---- the cvc number of the best models
    *  scores     ---- the test statstics for the best models
    *  pv         ---- the corresponding empirical p-value for the best model
      
