# dplyr exercises
library(dplyr)
library(downloader)
url="https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/msleep_ggplot2.csv"
filename <- basename(url)
download(url,filename)


#Read in the msleep_ggplot2.csv file with the function read.csv and use the function class 
#to determine what type ofobject is returned.

sleep <- read.csv('msleep_ggplot2.csv')
class(sleep)


#Now use the filter function to select only the primates. How many animals in the table are primates? 
primates <- filter(sleep, order == 'Primates')
nrow(primates)


#What is the class of the object you obtain after subsetting the table to only include primates?
class(primates)


#Now use the select function to extract the sleep (total) for the primates. What class is this object? 
#Hint: use %>% to pipe the results of the filter function to select.
primates_sleep <- select(primates, sleep_total)
class(primates_sleep)


#Now we want to calculate the average amount of sleep for primates (the average of the numbers computed above). 
#One challenge is that the mean function requires a vector so, if we simply apply it to the output above, 
#we get an error. Look at the help file for unlist and use it to compute the desired average.
primates_sleep <- unlist(primates_sleep)
mean(primates_sleep)

#For the last exercise, we could also use the dplyr summarize function. We have not introduced this function, 
#but you can read the help file and repeat exercise 5, this time using just filter and summarize to get the answer.
primates <- filter(sleep, order == "Primates")
head(primates)
summarize(primates, tot_sleep = mean(sleep_total))


