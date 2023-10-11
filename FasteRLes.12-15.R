#FasteR: Lesson 12: Another look at the nile data

plot(Nile)

which(Nile<600)

# since 43 is returned, we know that since the dataset starts at 1871
## we do 1871+42=1913 and we know then the year

which(Nile>1300)
# code gives back 9 as output so 1871+8=1879

plot(AirPassengers)
data.frame(AirPassengers)

which(AirPassengers>600)

help(which)

plot(mtcars$wt, mtcars$mpg)
is.numeric(Nile)
class(Nile)
Nile[55]
Nile[1+1925-1871]

#Lesson 14: Intro to Base R Graphics

#best packages are ggplot2 and lattice

load(url('https://github.com/matloff/fasteR/blob/master/data/prgeng.RData?raw=true'))
head(prgeng)

pe2500<-prgeng2500
plot(prgeng$age,prgeng$wageinc)
indxs<- sample(1:nrow(prgeng), 2500)
prgeng2500<- prgeng[indxs,]

plot(prgeng2500$age,prgeng2500$wageinc)

plot(prgeng2500$age,prgeng2500$wageinc, col=prgeng2500$sex)

plot(pe2500$age,pe2500$wageinc,col=as.factor(pe2500$sex),xlab='age',ylab='wage',cex=0.6)

#Lesson 15: Morre on Base Graphics

wagebygender<- split(prgeng$wageinc,prgeng$sex)
wagebygender

dm<-density(wagebygender[[1]])
dw<-density(wagebygender[[2]])

plot(dw,col='red')
points(dm,cex=0.2)

