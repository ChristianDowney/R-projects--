die

sample(die)
sample(die, 1)

roll<- function(die) {
  die<-1:6
  dice<-sample(die,size=2,replace = TRUE)
  sum(dice)
}

roll(die)
#rolling both die
rollonly1<-function(die) {
  die<-1:6
  sample(die,size=1,replace=TRUE)
}

rollonly1(die)
#rolling only 1 die
#rewrote the functions to give myself a little function practice

#Hands on R section 11

#expand.grid function

rolls<- expand.grid(die,die)
rolls

#expand grid returns a data fram that contains all ways to pair an element fromt the first die vector with
#an element from the second vector.
#rolls has 36 possible combinations, these are also all the rows in the data frame

rolls2<- expand.grid(die,die,die)
rolls2
nrow(rolls2)
ncol(rolls2)

rolls$value<- rolls$Var1+rolls$Var2
rolls$value

head(rolls)

prob<- c("1"=1/8, "2"=1/8,"3"=1/8,"5"=1/8,"6"=3/8)
prob
rolls$Var1
prob[rolls$Var1]
#Returned some NA's but i believe this is just R seperating out the different sets of dice:the probablilities are still correct

rolls$prob1<- prob[rolls$Var1]
head(rolls, 3)

rolls$prob2<- prob[rolls$Var2]
head(rolls,3)
rolls

rolls$prob<-rolls$prob1*rolls$prob2
head(rolls,3)

rolls[is.na(rolls)]<-0
#made NAs 0

sum(rolls$value*rolls$prob)
#Question: Im not sure why the NA's/0s in the roll data frame are there compared to the one
## given. I know it has something to do with the probablitiy of the 6's in either var 1 or var2
### but im not quite sure why R is not applying the 3/8s probability that I assigned

#Excercise 11.1 (List combos)

wheel <- c("DD", "7", "BBB", "BB", "B", "C", "0")
args(expand.grid)
combos<-expand.grid(wheel, wheel,wheel, stringsAsFactors = FALSE)
combos

get_symbols<-function(){
  wheel<-c("DD", "7", "BBB", "BB", "B", "C", "0")
  sample(wheel,size=3,replace=TRUE)
    prob=c(0.03, 0.03, 0.06, 0.1, 0.25, 0.01, 0.52)
}

#excercise 11.2 Make a lookup table

prob <- c("DD" = 0.03, "7" = 0.03, "BBB" = 0.06, 
          "BB" = 0.1, "B" = 0.25, "C" = 0.01, "0" = 0.52)

combos$prob1<- prob[combos$Var1]
combos$prob2<- prob[combos$Var2]
combos$prob3<- prob[combos$Var3]
head(combos,3)

combos$prob<- combos$prob1*combos$prob2*combos$prob3
head(combos,3)
sum(combos$prob)

#11.3 for Loops

#for reapeats a code many times for each element in a set of input

#for(value IN that) {
#this
#}

for(x in c(1,2,3,4,5,6)){
  print("one run")
}

for (x in c("My", "second", "for", "loop")) {
  print(x)
}

for(x in die){
  print(x)
}


chars<- vector(length=4)
words<- c("My","fourth","for","loop")
for(x in 1:4){
  chars[x]<-words[x]
}

chars

combos$prize<-NA
head(combos,3)

#Excercise 11.5 build the loop

for(x in 1:nrow(combos)) {
  symbols<-c(combos[x,1],combos[x,2],combos[x,3])
  combos$prize[x]<-score(symbols)
}
#Question: I could not find the score function or recreate it
##Where were we supposed to make the score function or was there something I did
### that perhaps disrupted the score function

#11.4 while loops

#writing a while loop:
## while(condition) {
# code
#}

#while runs the condition- a logical test and if TRUE then it will run the code between braces
#if condition is FALSE, while will finish the loop

#11.5 repeat loops

#repeat loops repeat a chunck of code until you tell them to stop by hitting esc or stop in the console pane or until they encounter "break" which stops it



