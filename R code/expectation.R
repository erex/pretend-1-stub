#
#

comp1.prod <- dnorm(x = wait, mean = wait.summary.df$mu[1], 
                    sd = wait.summary.df$std[1]) * wait.summary.df$alpha[1]

comp2.prod <- dnorm(x = wait, mean = wait.summary.df$mu[2], 
                    sd = wait.summary.df$std[2]) * wait.summary.df$alpha[2]

normalizer <- comp1.prod + comp2.prod

comp1.post <- comp1.prod / normalizer
comp2.post <- comp2.prod / normalizer

