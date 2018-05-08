#######Author Tess
######08/05/2018

####Question 1
datasets::mtcars
attach(mtcars)
####Question 2
names(mtcars)

####Question 3
mtcars$mpg
max(mtcars$mpg)

#####Question 4
#####The max mpg has a row index of 20 hence to get the car name we do as follows
mtcars[20,1:11]

#####Question 5
####Use the function head to check on the first cars in a dataset
head(mtcars,5)

#####Question 6
####Valiant is in row 6 and hp is in column 4
mtcars["Valiant",4]  

######Question 7
####All the values from column 1 to 11
mtcars["Merc 450SLC",1:11]

#####Question 8
plot(cyl,mpg)
m1 <- lm(cyl~mpg,data=mtcars)
summary(m1)
coeff <- coefficients(m1)
eq = paste0("y = ", round(coeff[2],1), "*x ", round(coeff[1],1))
plot(m1,main=eq)
abline(m1, col="blue")

