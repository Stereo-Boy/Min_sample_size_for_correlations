# Min sample size for correlations
 
This code calculates the sample size n necessary to obtain correlations whose confidence interval does not include 0, depending on
correlation strength and correlation type, following equations from:

Bonett and Wright (2000), Sample size requirements for estimating ¨Pearson, Kendall and Spearman correlations, 
Psychometrika, 65(1), 23-2

Code is called approximationOfnForR.m, tested with Matlab R2020b and results can be read in the command window, in the pdf file:
tableNforCorr.pdf or below:

  Correlation rho   /  Min n for Pearson  /  Min n for Spearman

          0.1                 378                  379        
          0.2                  90                   92        
          0.3                  37                   39        
          0.4                  19                   20        
          0.5                  11                   12        
          0.6                   8                    9        
          0.7                   6                    6        
         0.77                   5                    5        
          0.8                   5                    5        
         0.85                   4                    4        
          0.9                   4                    4
