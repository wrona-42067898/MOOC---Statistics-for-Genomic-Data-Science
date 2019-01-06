library(downloader) 
url <- "https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/femaleControlsPopulation.csv"
filename <- basename(url)
download(url, destfile=filename)

mice <- unlist( read.csv(filename) )
pop_mean <- mean(mice)


#Set the seed at 1, then using a for-loop take a random sample of 5 mice 1,000 times. Save these averages. 
#What proportion of these 1,000 averages are more than 1 gram away from the average of x ?
set.seed(1)
nulls <- vector("numeric", 1000)
for (i in 1:1000){
  samps <- sample(mice, 5)
  nulls[i] <- pop_mean - mean(samps) 
}

one_g <- abs(nulls) > 1
mean(one_g)



#We are now going to increase the number of times we redo the sample from 1,000 to 10,000. Set the seed at 1, 
#then using a for-loop take a random sample of 5 mice 10,000 times. Save these averages. What proportion of these 
#10,000 averages are more than 1 gram away from the average of x ?

set.seed(1)
nulls <- vector("numeric", 10000)
for (i in 1:10000){
  samps <- sample(mice, 5)
  nulls[i] <- pop_mean - mean(samps) 
}

one_g <- abs(nulls) > 1
mean(one_g)


#Set the seed at 1, then using a for-loop take a random sample of 50 mice 1,000 times. Save these averages. 
#What proportion of these 1,000 averages are more than 1 gram away from the average of x ?

set.seed(1)
nulls <- vector("numeric", 1000)
for (i in 1:1000){
  samps <- sample(mice, 50)
  nulls[i] <- pop_mean - mean(samps) 
}

one_g <- abs(nulls) > 1
mean(one_g)








  