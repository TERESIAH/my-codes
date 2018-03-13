#####WORKING WITH NA'S IN A DATASET######
#####AUTHOR:NJERI KARUMBA###
#####DATE:13-03-2018##

####Loading the library dslabs####

library(dslabs)

##Am going to work on the na_example dataset##
data("na_example")

###Checking on the structure of the dataset

str(na_example)

mean(na_example)####Returns an average of NA due to the missing values in the dataframe

####Checking the enrtries with NA's

x <- is.na(na_example)
x

##number of entries with NA's
sum(x <- is.na(na_example))



##########REMOVING NA'S######

###We can use ! operator to remove the NA's as we get the average of the data

mean(na_example[!x])####Note x is a variable holding all the entires that have NA's whereas !x negates it to entires that are not NA's


