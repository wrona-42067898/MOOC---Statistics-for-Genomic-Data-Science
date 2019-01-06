library(downloader) 
library(dplyr)
url <- "https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/femaleControlsPopulation.csv"
filename <- basename(url)
download(url, destfile=filename)
pop_weights <- unlist( read.csv(filename) )


#What is the average of these weights?
pop_mean <- mean(pop_weights)
pop_mean

#After setting the seed at 1, set.seed(1) take a random sample of size 5. What is the absolute value (use abs) of the 
#difference between the average of the sample and the average of all the values?

set.seed(1)
sample_mice <- sample(pop_weights, 5)
sample_mean <- mean(sample_mice)

abs(pop_mean - sample_mean)


#After setting the seed at 5, set.seed(5) take a random sample of size 5. What is the absolute value of the difference 
#between the average of the sample and the average of all the values?
set.seed(5)
sample_mice2 <- sample(pop_weights, 5)
sample_mean2 <- mean(sample_mice2)

abs(pop_mean - sample_mean2)


#Why are the answers from 2 and 3 different?
#Answer: Because the average of the samples is a random variable.


