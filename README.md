# Multi-CMDR
Detect gene-gene interaction/epistasis by using multivariate phenotypes and MDR

## Notice
All source codes were listed in file "Multi-CMDR.R" for implemeting Multi-CMDR 

## Citation

## Example 
Try _run_example.R_ to get a quick start, and an example data was provided too

## Usage
In R:

```
source("Multi-CMDR.R")

MCMDR(phes, snp.mat, K=2, cv=10, nperm=0, sele.type='cvc', test.type="ht2", covrt=NULL, trim=TRUE)
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
      
