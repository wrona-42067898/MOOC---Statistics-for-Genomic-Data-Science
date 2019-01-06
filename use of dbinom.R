#dbinom(x, size, prob, log = FALSE)
dbinom(2, 4, 0.49)


#What is the probability that a family with 10 children has 4 girls and 6 boys (you can assume no twins)?
dbinom(4, 10, 0.49)


#The genome has 3 billion bases. About 20% are C, 20% are G, 30% are T and 30% are A. 
#Suppose you take a random interval of 20 bases, what is the probability that the GC-content 
#(proportion of Gs or Cs) is strictly above 0.5 in this interval (you can assume independence)?

#chance of G or C = 40%, chance of A or T = 60%

x = dbinom(11:20, 20, 0.4)
sum(x)


#The probability of winning the lottery is 1 in 175,223,510. If 189,000,000 randomly generated (with replacement) 
#tickets are sold, what is the probability that at least one winning tickets is sold? 
#(give your answer as a proportion not percentage)

1/175223510

sum(dbinom(2:500, 189000000, 1/175223510))
