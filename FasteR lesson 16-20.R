#Day 7: Loops & Apply()

#FasteR lessons 16,17,18,20

#Hands on R section 11
#
#Faster R lesson 16

sum(Nile>1200)

gt1200<- which(Nile >1200)
gt1200
nileSubsetGT1200<- Nile[gt1200]
nileSubsetGT1200
mean(nileSubsetGT1200)

mean(Nile[Nile>1200])

mgd<-function(x,d)mean(x[x>d])
mgd

mgd<- function(x,d)return(mean(x[x>d]))
mgd
save(mgd,file='mean_greater_than_d')
load('mean_greater_than_d')

rng<- function(y)max(y)-min(y)
rng(Nile)


cgd<- function(x,d)length(which(x>d))
cgd(Nile,1200)


#Lesson 17

pima<- read.csv('http://heather.cs.ucdavis.edu/FasteR/data/Pima.csv',header=TRUE)

for (i in 1:19) print(sum(pima[,i]==0))

pima[,1]==0

colnames(pima)

for(i in 2:6) pima[pima[,i]==0,i]<- NA
for(i in 2:6) {
  zeroIndices<-which(pima[,i]==0)
  pima[zeroIndices,i]<- NA
}

zeroIndices<- which(pima[,i]==0)
pima[zeroIndices,i]<- NA

# Lesson 18

zerosToNAs<- function(d,cols){
  for(j in cols) {
    NArows<-which(d[,j]==0)
    d[NArows,j]<- NA
  }
  d
}

pima<- zerosToNAs(pima, 2:6)
pima
exframe<-data.frame(x=c(1,2,3,4,5,NA), y=c(5,4,3,2,1,NA))
exframe


countNAs<- function(x,y) {
  for(j in y) {
    NArows<-which(x[,j]==NA)
    print(is.na(x[NArows,j]))
  }
  x
}

countNAs(pima)
#I am not sure why but every time i run NArows, it shows up as an integer
#I belive the last line of the loop portion of the function is correct but I dont know exactly how to fix it
#I also keep getting the error message that my y argument is missing with no default though in the previous example they gave
## It seemed to work perfectly fine without being assigned an argument so I am confused there as well.

#Lesson 20

load(url('https://github.com/matloff/fasteR/blob/master/data/prgeng.RData?raw=true'))

pe<-prgeng

head(edu)

help(ifelse)

pe$educ<- ifelse(edu < 13,12,edu)

#given back: 
#Warning message:
#In Ops.factor(edu, 13) : ‘<’ not meaningful for factors
#confused as to why this would come back with an error message, 
#I dont think I changed anything with the dataframe

nile<- ifelse(Nile>1150,3,2)
nile<-ifelse(Nile < 800,1,nile)

table(nile)

#it ran correect here so I believe that the previous error may have beeen something to do with my table

#ifelse basically replaces whatever argument you put in the "test" column 
## and replaces it with whatever you put in the yes column. This is because the "yes" replaces all of the TRUES
###returned in the first argument with your chosen thing and whatever you put in the "no" place replaces all of the 
####FALSE's

#practice using ifelse



