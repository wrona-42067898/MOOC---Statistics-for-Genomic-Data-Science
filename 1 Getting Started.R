#Week 1 Getting Started Exercises

#Read in the file femaleMiceWeights.csv and report the exact name of the column containing the weights.
mice <- read.csv('femaleMiceWeights.csv')
colnames(mice)


#What is the entry in the 12th row and second column?
mice[12,2]


#Use $ to extract the weight column and report the weight of the mouse in the 11th row.
mice$Bodyweight[11]


#The length function returns the number of elements in a vector. How many mice are included in our dataset?
length(mice[,1])


#To create a vector with the numbers 3 to 7, we can use seq(3,7) or, because they are consecutive, 3:7. 
#View the data and determine what rows are associated with the high fat or hf diet. 
#Then use the mean function to compute the average weight of these mice.
str(mice$Diet)
hf_logical <- mice$Diet == "hf"
hf_mice <- mice$Bodyweight[hf_logical]
mean(hf_mice)



#Now take a random sample of size 1 from the numbers 13 to 24 and report back the weight of the mouse represented 
#by that row. Make sure to type set.seed(1) to ensure that everybody gets the same answer.
?sample
set.seed(1)
sample(c(13:24), 1) #16
mice[16,2]
