#5.1 atomic vectors

die<- c(1, 2, 3, 4, 5, 6)

die

is.vector(die)
#is vector is used to test if an object is an atomic vector.
#True= it is False= is not

five<- 5

five

is.vector(five)

length(five)

length(die)

#length shows the lenght of the vector or how many subjects are within the vector
#six types of atomic vectors: doubles, integers, characters, logicals, complex, raw
#integer vector: include capital L after input: e.g. 1L
#character vector: include input in "": e.g. "ace"
#use "c" before the () when creating a vector with more than 1 element

#practice using atomic vectors:

int <- 1L
text<-"ace"

int<-c(1L,5L)

text<-c("ace", "hearts")

int
text

#5.1.1 doubles
#I removed the die vector here just to test something

die<-c(1,2,3,4,5,6)

typeof(die)
#doubles and numerics are same

#5.1.2

rm(int)

#removed int vector so that I could redefine it how they wanted in 5.1.2

int<- c(-1L, 2L,4L)
int

typeof(int)
#wont save as integer unless L is used
#numbers without L will be saved as doubles or numerics
# 4 and 4L are saved differently

sqrt(2)^2-2

text<-c("Hello", "World")

typeof(text)
typeof("Hello")

#individual elements of a character vector
#are strings
#numbers: 1
#characters: "1"
#must have quotations to make something a character

#5.1.4 Logicals

3>4
#T and F are shorthand for TRUE / FALSE

logic<- c(TRUE, FALSE, TRUE)
logic
typeof(logic)
typeof(F)

#5.1.5

#complex vectors store complex numbers
#add an imaginary term to a number with i

comp<- c(1+1i, 1+2i, 1+3i)
comp

typeof(comp)

#raw vectors
#raw vector stor raw bytes of data 
#make raw vector with lenght n with raw(n)

help(raw)
#checking how raw is used

raw(3)
typeof(raw(3))

hand<-c("ace","king","queen","jack","ten")
hand
typeof(hand)

#5.2

#use attributes to return the attributes of a vector

attributes(die)
#when null is returned it means the values of the function are undefined

#5.2.1

#most common attributes are names, dimensions, (dim), and classes

names(die)

#assign the names attribute using names()

names(die)<-c("one", "two","three","four", "five", "six")

names(die)

attributes(die)

die

die+1

#assigning new set of labels to die

names(die)<-c("uno", "dos", "tres", "quatro", "cinco", "seis")
die
names(die)<-NULL
die
#NULL sets die names to nothing

#5.2.2

dim(die)<- c(2,3)
die


dim(die)<- c(3,2)
die

dim(die)<- c(6,1)
die

dim(die)<- c(1,2,3)
die

#x=rows, y=columns
#rows always come first in R operations that deal with rows/columns

matrix(die)
array(die)

#5.3 matrices

#matrices: store value in two dimensional array
#matrix reorganizes into a specific set of rows and columns

m<-matrix(die,nrow=2)
m

m<-matrix(die,nrow=1)
m

m<-matrix(die,nrow=2)
m

#byrow=TRUE allows you to fill matrix row by row instead of column by column
#set FALSE for column by column

m<-matrix(die,nrow=2,byrow=TRUE)
m

Help(matrix)
help(matrix)

#5.4 Arrays

#array function creates n-dimensional array

rm(ar)

ar<-array(c(11:14, 21:24, 31:34), dim=c(2,2,3))

ar

hand1<-c("ace", "king", "queen", "jack", "ten", "spades", "spades", "spades", "spades", "spades")

matrix(hand1, nrow=5, ncol= 2)

matrix(hand1,nrow=5,byrow=TRUE)

#5.5 class 

dim(die)<-c(2,3)
typeof(die)

class(die)

attributes(die)
attributes(die)

class("Hello")
class(5)

#skipping 5.5.1

#5.5.2 factors

#factors categorize varibles
gender<-factor(c("male", "female", "female", "male"))

typeof(gender)

attributes(gender)

unclass(gender)

gender

as.character(gender)
as.integer(gender)
as.character(gender)

card<-c("ace","heart","1")

card

#5.6 coercion

sum(c(TRUE, TRUE, FALSE, FALSE))
sum(c(1,1,0,0))

as.character(1)
as.logical(1)
as.numeric(1)
#as.character,logical or numeric converts the vector into the data you want

#5.7 lists

#list crates a list the same way c creates vector

list1<- list(100:300, "R", list(TRUE,FALSE))
list1
#oops I went 100-300 not 130

list1<- list(100:130, "R",list(TRUE,FALSE))
list1

#double brackets tell which element is being shown in a list (1,2,3, etc.)

list2<- list("ace", "hearts", "1")
list2

df<- data.frame(face=c("ace", "two", "six"),suit=c("clubs","clubs","clubs"), value= c(1,2,3), stringsAsFactors = FALSE)

df
#make sure each column is the same length
#check length with length()

df

typeof(df)

class(df)

str(df)

head(deck)
#head returns the first 6 rows and tail returns the last 6

head(deck, 20)
#adding a value after shows the amt of rows

head(deck, 100)
#just wanted to see what would happen if I did more rows than there is

#5.10 Saving Data

write.csv(deck, file= "cards.csv", row.names= FALSE)
getwd()
#cards.csv saved to /users/christiandowney
#write.csv saves file to certain folder

?write.csv

#6 R Notation

#use deck[] to return any specific values within the data set
#can use positive and negative integers, zero, blanks, logical values, and names
#best to use positive integers

#6.1.1

head(deck)
deck[1,1]
deck[6,2]
#remember x= rows y= columns x before y rows before columns

deck[1, c(1,2,3)]
#returns only the first row but every value up to 3 within that row

deck [2, c(1,2,3)]
#NULL will be the return if you go beyond the rows or column number

new<- deck[1, c(1,2,3)]
new
new
#any repititions of a number in the index (c()) R will return the corresponding values more than once

#6.1.2 Negative Integers

deck[-1, 1:3]
#using negative integers, R returns everything in the data set/matrix/array EXCEPT the value in the position of the negative integer
#cannot pair both negative and positive integers of the same position or it will return an error

deck [0,0]
#R returns nothing at a 0 index

#6.1.4 Blank Spaces

deck[1,]
#leaving a blank space allows you to extract entire rows or columns by default.

deck[,1]
deck[,3]

#6.1.5

#TRUE or FALSE can correspond in your index to rows in the data frame and only returns TRUE

deck[1, c(TRUE, TRUE, FALSE)]

#6.1.6 Names

#you can ask for elements by name

deck[1, c("face", "suit", "value")]
deck[,"value"]
deck[1:10, "value"]

#is.NA looks for missing values in a vector
#NA denotes missing values
#colMean mean of a column

class(gender)

#6.2 Deal a card

deal<-function() {
  deck[1,]
}
deal()

#The problem I am having here, is that the object they use in the function is "cards"
#but cards is undefined and they seem to use it synonymous with the deck object
#I know this was explained at our meeting but I am still a little confused here.

#6.3 Shuffle the deck

deck2<- deck[1:52,]
head (deck2)

deck3<- deck[c(2,1,3:52),]
head (deck3)

random<-sample(1:52, size=52)
random

deck4<-deck[random,]
head(deck4)

shuffle<- function(cards) {
  random<- sample (1:52, size= 52)
  cards[random]
}

shuffle()

#I keep getting back an error that says the argument for cards is missing, with no default
##I also cant seem to replace or use anything the the place of cards or it comes back with the same message
###Im going to move on, but want to go over this when we meet again possibly.

#6.4: dollar signs and double brackets

deck$value

mean(deck$value)
median(deck$value)

lst<- list(numbers=c(1,2),logical=TRUE,strings=c("a","b","c"))
lst
lst[1]
sum(lst$numbers)

