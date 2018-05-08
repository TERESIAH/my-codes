####Busara training##
###10/03/2018###

library(tidyverse)

first <- 3 ## assigning 3 to variable first##
second <- c(2,3,4,8,9,90)

oranges <- 7
oranges
typeof(oranges)
class(oranges)
oranges<- 7L
typeof(oranges)
class(second)
typeof(second)

X<-data.frame("Name" = c("Belinda","Sylvia","Sofia","Grace","Laban"),
              "Fav number" = c(5,2,4,7,3),"Gender" = factor(c("F","F","F","F","M")))
print(X)




#
##Control structures###

### if statement###
x<-4

if (x==4){
  print("The number is even.")
}else 
  {
  print("Its odd")
}


###while statement###

y <- 100

while (y<90){
  print("still average")
}

#strsplit()--splits characters###

###Functions

multiply<- function(a){
  return(a*3)
}

print(multiply(20))

###calculating age function

age <- function(x){
  return(2018-x)
  
}

print(age(1970))




