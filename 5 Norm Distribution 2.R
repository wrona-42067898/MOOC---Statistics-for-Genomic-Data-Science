#Probability Distributions

library(dplyr)
library(gapminder)
data(gapminder)
head(gapminder)

#Create a vector 'x' of the life expectancies of each country for the year 1952. 
#Plot a histogram of these life expectancies to see the spread of the different countries.

str(gapminder$year) #integer values (not string)
x <- filter(gapminder, year == 1952) %>% select(lifeExp) %>% unlist
hist(x)


#What is the proportion of countries in 1952 that have a life expectancy less than or equal to 40?
mean(x<40)


#What is the proportion of countries in 1952 that have a life expectancy between 40 and 60 years? 
mean(x>40 & x<60)


#Suppose we want to plot the proportions of countries with life expectancy 'q' for a range of different years. 
plot(ecdf(x))
