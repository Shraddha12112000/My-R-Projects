# Consider an experiment of rolling a fair die, where success is determined by getting 4.
#The die is rolled 8 times. Find probability of getting 4s
#i) exactly 5 times
#ii) at most 5 times.
#Moreover, if probability of getting at the most x successes is around 0.95,find x

# For solving i) dbinom is used
dbinom(x=5,size = 8,prob = 1/6)
#For solving ii), we need to calculate cumulative frequencies and hence ,pbinom is used
pbinom(q=5,size = 8,prob = 1/6)
#checking if we got same answer by taking sum of values in dbinom 
sum(dbinom(x=0:5,size = 8, prob = 1/6))
#In case, it is asked to find probability of getting 4 at least 5 times
1-sum(dbinom(x=0:4,size = 8,prob = 1/6))
#OR
1-sum(pbinom(q=4,size = 8,prob = 1/6))
#For solving iii) ,qbinom is used
qbinom(p=0.95,size = 8,prob = 1/6)
#Lets cross check it with pbinom
pbinom(q=3,size = 8,prob = 1/6)
#For Bar-Plot we need Probability distribution function
Probd<- dbinom(x=0:8,size = 8,prob = 1/6)
Probd
round(Probd,3)
barplot(Probd,names.arg = 0:8,space = 0,xlab="x",ylab = "Prob(X=x)")
