#7 Modifying Values

#7.0.1 Changing Values in Place

deck2<-deck

vec<-c(0,0,0,0,0,0)
vec

vec[1]

vec[1]<-1000
vec[1]

vec[c(1,3,5)]<-c(1,1,1)
vec
vec[4:6]<-vec[4:6]+1
vec

vec[7]<-0
vec

deck2$new<-1:52

head(deck2)

deck2$new<-NULL
head(deck2)

deck2[c(13,26,39,52),]

deck2$value[c(13,26,39,52)]
deck2$value[c(13,26,39,52)]<-14
head(deck2,13)

#7.0.2 Logical Subsetting

vec
vec[c(FALSE,FALSE,FALSE,FALSE,TRUE,FALSE,FALSE)]

#7 logical operators, >, >= and variations, ==, != is a not equal to b, %in%
#e.g. a %in% c(a,b,c) is a in the group (a,b,c)

1>2
1> c(0,1,2)
c(1,2,3) == c(3,2,1)
1 %in% c(3,4,5)
c(1,2) %in% c(3,4,5)
c(1,2,3) %in% c(3,4,5)
c(1,2,3,4) %in% c(3,4,5)
c(1,2,3,4) %in% (deck)
("ace") %in% (deck)

deck2$face %in% ("ace")
deck2$face %in% ("ace")

sum(deck2$face %in% ("ace"))

deck2$face == "ace"
deck2$value[deck2$face == "ace"]

deck4<- deck
deck4$value<-0

head(deck4,13)

deck4$value
deck4$suit
deck4$suit=="hearts"
deck4$value[deck4$suit == "hearts"]<-1
deck4$value[deck4$suit == "hearts"]

#Boolean Operators
deck4$value
deck4$face
deck4$suit
deck4$face[deck4$value]

a<- c(1,2,3)
b<-c(1,2,3)
c<-c(1,2,3)

a==b
b==c
a==b&b==c

queenofspades<-deck4$face=="queen" & deck4$suit=="spades"
deck4[queenofspades,]

deck4$value[queenofspades]

deck4$value[queenofspades]<-13
deck4[queenofspades,]

#Excercise 7.3

w<- c(-1,0,1)
x<- c(5,15)
y<- "february"
z<- c("Monday", "Tuesday", "Friday")

#is w positive?

w > 0

# is x greater than 10 and less than 20
x > 10 & x < 20

#is object y the word february
y == "february"

#is every value in z a day of the week?

all(z %in% c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"))

deck5<- deck    

head(deck5, 13)

facecard<- deck5$face %in% c("king","queen", "jack")
deck5[facecard,]

deck5$value[facecard]<-10
head(deck5, 13)

#7.0.3 Missing info

#NA= not available information

1+NA

NA==1

#NA is returned becuase there is an unknown value

#7.0.3.1 na.rm

c(NA,1:50)
mean(c(NA, 1:50))
#na.rm ignores NA's when it evaluates a function if you add na.rm= TRUE
## e.g.

mean(c(NA, 1:50), na.rm=TRUE)

#7.0.3.2 is.na

c(1,2,3,NA) == NA
is.na(NA)
vec<-c(1,2,3,NA)
is.na(vec)
deck5$value[deck5$face=="ace"]<- NA

head(deck5, 13)



