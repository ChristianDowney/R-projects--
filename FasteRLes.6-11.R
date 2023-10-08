# FasteR: Lesson 6

ToothGrowth

tg<- ToothGrowth

class(tg)
class(tg$supp)

levels(tg$supp)

#levels shows the categories of a certain data sets columns

#Lesson 7

which1200<- which(Nile >1200)
Nile[which1200]

whichOJ<- which(tg$supp=='OJ')
whichVC<- which(tg$supp=='VC')
mean(tg[whichOJ,1])
mean(tg[whichVC,1])

#data frames aree always accessed with two subscript expressions dataframe[rows,columns]
#experimenting with "faithful" data set

faithful

which(faithful$waiting>80)

whichWA<- which(faithful$waiting>80)

faithful[ , faithful$waiting>80]

#Lesson 8: More ex of extracting rows and columns

tg[tg$supp=='OJ' & tg$len < 8.8,]

tg[tg$len > 28 | tg$dose== 1.0,]

# |= all rows that satisfy at least one condition not neccessarily both

w<- tg[tg$len>28|tg$dose==1.0,]

head(w)
nrow(w)

lendose<- tg[,c(1,3)]

head(lendose)

lendose<-tg[,c('len','dose')]
head(lendose)

exts<- Nile[Nile <800 | Nile> 1300]
head(exts)
length(exts)

length(Nile[Nile<800 | Nile> 1300])

#Lesson 11: The R List Class

mtmpg<- mtcars$mpg

mt4<-mtmpg[mtcars$cyl==4]

mtcars$cyl==4
mt6<-mtmpg[mtcars$cyl==6]
mt8<-mtmpg[mtcars$cyl==8]
mt6
mt8

mtcars$cyl==8

mtl<- split(mtmpg,mtcars$cyl)
mtl
class(mtl)

mtl$'4'
mtl[[1]]
head(mtcars$cyl)

m4<-mtl[[1]]
m6<-mtl[[2]]
m8<-mtl[[3]]

1 <- list(a=c(2,5), b= 'sky')

names(mtl)<-c('four','six','eight')
mtl

mtl[[2]][3]
mtl$six[3]
mtcars[1]

tg
tgsplit<-split(tg, tg$supp)

tgsplit[[1]]

tgsplit[[2]][3]
