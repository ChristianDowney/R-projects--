
#Meeting 1: fasteR 1-3, Hands-on R 1-2

#fasteR Lesson 1

1+1

mean(Nile)

Nile

length(Nile)

hist(Nile)

hist(Nile,breaks=30)
hist(Nile,breaks=2)

?hist
?mean
?Nile

Nile[2]

Nile[c(2,5,6)]

Nile[2:4]

Nile[81:100]

mean(Nile[81:100])

n81100 <- Nile[81:100]
n81100[1]
Nile[81]

# n81100 is assigned Nile[81:100] as its subject so
## when n81100 is input the output is only 81-100 
length(n81100)

#learned: functions: mean, hist, length.
#learned: <- assignes the vector to a subject
## to form a vector use: c() and "" to house the subject

#Hands on R (1-2)

1+1

100:130

2*3

#Ctrl + c cancels a command

#1
5+2
#2
7*3
#3
21-6
#4
15/5

1:6
die<-1:6

die
#name cannot start with a number
#name cannot have special symbols
#case sensitive

ls()
#shows all object names
die-1
die/2
die*die
#action applies to all elements of an object

1:2

die
die+1:2
die+1:4
die+die
die+die*2
die+die^3

die %*% die

#functions
#factorial- calculate its factorial
#round- round a number

mean(1:6)
mean(die)
round(mean(die))
#sample x= any vector size= how many times (sample(x=1:4, size=2))

sample(x=die, size=1)
sample(x=die, size=2)
sample(x=die, size=1)

#to find the arguments(aspects/parts) of a function
##just apply args e.g. args(round)

args(round)

round(5.2334, digits=3)

args(mean)
median(1:7)

sample(die,4)
args(sample)

sample(die, 2, TRUE)

dice<-sample(die, 2, TRUE)
sum(dice)

#function creates a function out of what subject you use

roll <- function() {
  die <- 1:6
  dice <- sample(die, size=2, replace=TRUE)
  sum(dice)
}

#I accidentally defined roll 2 as the same function as roll here so Im using roll3
##instead of roll 2

roll3<-function() {
  dice<-sample(bones, 2, TRUE)
  sum(dice)
}

#oops i did it again

roll4<-function(bones) {
  dice<-sample(bones, 2, TRUE)
  sum(dice)
}

roll4(bones = 1:4)
roll4(bones = 1:6)

roll4<-function(bones = 1:6) {
  dice<- sample(bones, 2, TRUE)
  sum(dice)
}
roll4

