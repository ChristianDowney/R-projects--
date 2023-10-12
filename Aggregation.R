# Data Frame
aggregate(x,by,FUN,...,simplify=TRUE,drop=TRUE)
# Formula
aggregate(formula,data,FUN,...,subset,na.action=na.omit)
#time series
aggregate(x,nfrequency=1,FUN=sum,ndeltat=1,ts.eps=getOption("ts.eps"),...)

df<-chickwts
head(df)

group_mean<-aggregate(df$weight,list(df$feed),mean)
group_mean<-aggregate(weight~feed,data=df, mean)
group_mean

colnames(group_mean)<-c("Group","Mean")
group_mean

aggregate(chickwts$feed, by= list(chickwts$feed),FUN=length)
aggregate(feed~feed, data=chickwts,FUN=length)


set.seed(1)
Dates<-seq(dmy("01/01/2014"),dmy("01/01/2015"), by="day")
return<-rnorm(length(Dates))
install.packages("xts")
library(xts)
tserie<-xts(return(Dates))

rm(dates)
rm(Dates)
rm(return)

set.seed(1)

cat_var<- sample(c("A","B","C"), nrow(df), replace=TRUE)
df_2<-cbind(df,cat_var)
head(df_2)

aggregate(df_2$weight, by=list(df_2$feed, df_2$cat_var), FUN=sum)

set.seed(1)
num_var<-rnorm(nrow(df))
df_3<-cbind(num_var,df)
head(df_3)
aggregate(cbind(df_3$num_var, df_3$weight), list(df_3$feed), mean)

#Activity 2

