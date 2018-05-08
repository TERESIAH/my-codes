#------R Practice--------
#------date:21/02/2018-----
#------By: Teresiah Njeri----

#-----Data Types-------------

x<-3
x
class(x)
y<-as.integer(x)
y
class(y)
y<-"Tess"
y
class(y)

my_vector <-c(1,2,3,4,5)
my_vector

my_vector_char <-c("Tess", "Pascal", "Rehema", "Steve")
my_vector_char
length(my_vector_char)
length(my_vector)

my_list <-list(names=my_vector_char, score=my_vector)
my_list

my_list$names
my_list$score


### Creating a Data Frame

x=c(1:100)
y=rep("We are sad", 100)
z=rep(c("I am tired","We should stop"), 50)  
my_dataframe <- as.data.frame(data.frame(x, y, z))
my_dataframe
str(my_dataframe)

ls()


#####Listing objects in the work space#####

objects()

ls()

#######Creating vectors, naming and selection of some elements from the vectors####

Students_scores<-c(78:100)
Students_scores

Students_scores[10] ###Selects element number 10###

Students_scores[18:23]  ####Selects elements 18 to 23######

Students_scores[-16]   ###Selects all the elements in the vector except element 16##

Students_scores[-(5:12)]   ###Selects all the elements in the vector except element 5 to 12##

Students_scores[]  ##Selects aall the elements in the vector##

Mean_score<-mean(Students_scores)
Mean_score


######Rep and seq function###

rep(1, 4)

rep(seq(2,20, by=2),3)

rep(c(1,4),each=2)

rep(seq(2,20,2),rep(2,10))  #### Repeating each value twice###

######Character vectors####

colors<-c("red","yellow","blue","purple","pink")
colors

More.colors<-c(colors, "indigo","maroon")
More.colors

paste(colors, "flowers")

paste("I like", colors, collapse=",") ## Collapse function allows ll components to be
                                        #string##




#######28/02/2018###

setwd("D:/RSA R PRACTICE")

kenya_data_rds<-readRDS("Dataset/clustering_data_kenya.rds")


####Frequencies in R

####Check Variables and their descriptions###

str(kenya_data_rds[ ])


####Print the variable names#

names(kenya_data_rds)

####Frequencies

freqTabs<- data.frame(table(kenya_data_rds$Q_5))
freqTabs

freqTabs$Percentages<- round(freqTabs$Freq/sum(freqTabs$Freq))
freqTabs$Percentages

Perc<- round(freq/sum(freq)*100, 2)
Perc

colnames(freqTabs)<- c("Labels","Frequencies","Percentages")


data.table::as.data.table(freqTabs)

freqTabs<- freqTabs[order(freqTabs$Percentages, decreasing = TRUE)]

###For loop###

vars <- c("B1", "B2", "B3")

fayFreqFunc <- function(dat, vars){
  tess <- list()

for (var in vars){
  freqTabs<- data.frame(table(kenya_data_rds$Q_5))
freqTabs$Percentages<- round(freqTabs$Freq/sum(freqTabs$Freq))

if(nrow(freqTabs) > 0){
colnames(freqTabs)<- c("Labels","Frequencies","Percentages")
freqTabs<- freqTabs[order(freqTabs$Percentages, decreasing = TRUE)]
tess[[var]] <- freqTabs
}
} 
  openxlsx::write.xlsx(tess, "Outputs/My_FreqTabs.xlsx")
  return(tess)
}


data <- kenya_data_rds
vars <- names(kenya_data_rds)[15:30]
fayFreqFunc(dat, vars)

for (i in 1:10){
  print("I miss you")
}

