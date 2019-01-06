#The Normal Distribution

#Quantile-quantile plot: Check how well your data matches a normal distribution
          #what is the number for which x% of the data is below that number
          #our data (y-axis) versus normal distirbution (x-axis)
          #if they are the same, they will fall on the identity line


library(downloader) 
url <- "https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/femaleControlsPopulation.csv"
filename <- basename(url)
download(url, destfile=filename)
x <- unlist( read.csv(filename) ) #population weights


#Using the same process as before (in Null Distribution Exercises), set the seed at 1, then using a for-loop take a 
#random sample of 5 mice 1,000 times. Save these averages. After that, set the seed at 1, then using a for-loop take 
#a random sample of 50 mice 1,000 times. Save these averages.

set.seed(1)
n=1000
samp_avs_raw = vector("numeric", n)
samp_avs = vector("numeric", n)
for (i in 1:n){
  mysamp <- sample(x, 50)
  samp_avs[i] <- mean(x) - mean(mysamp)
  samp_avs_raw[i] <- mean(mysamp)
}

samp_avs_5 <- samp_avs
samp_avs_50 <- samp_avs

#Use a histogram to "look" at the distribution of averages we get with a sample size of 5 and a sample size of 50. 
#How would you say they differ?

par(mfrow=c(1,2))
hist(samp_avs_5)
hist(samp_avs_50)
#Answer: They both look roughly normal, but with a sample size of 50 the spread is smaller. correct


#For the last set of averages, the ones obtained from a sample size of 50, what proportion are between 23 and 25?
mean(samp_avs_50 > 23 & samp_avs_50 < 25)
prop_between <- samp_avs_raw > 23 & samp_avs_raw < 25
mean(prop_between)


#Now ask the same question of a normal distribution with average 23.9 and standard deviation 0.43.
#23.47 to 24.33
pnorm((25-23.9)/0.43) - pnorm((23 - 23.9)/0.43)












