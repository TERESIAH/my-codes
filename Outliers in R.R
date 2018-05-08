testData <-c(-42, rnorm(10), 42)
testData

sort(testData, decreasing = FALSE)

# define a function to remove outliers
FindOutliers <- function(data) {
  lowerq = quantile(data)[2]
  upperq = quantile(data)[4]
  iqr = upperq - lowerq #Or use IQR(data)
  # we identify extreme outliers
  extreme.threshold.upper = (iqr * 3) + upperq
  extreme.threshold.lower = lowerq - (iqr * 3)
  result <- which(data > extreme.threshold.upper | data < extreme.threshold.lower)
}

# use the function to identify outliers
temp <- FindOutliers(testData)
temp

# remove the outliers
testData <- testData[-temp]

# show the data with the outliers removed
testData


bank=read.csv("C:\\Users\\TERESIAH KARUMBA\\Desktop\\practice\\BANKDATA 1.csv",header=T,sep=",");bank
data.frame(bank)

names(bank)

vars<-c("ageofapplicant", "amountofloan", "salary")

for (i in vars)

# define a function to remove outliers
FindOutliers <- function(dat, vars) {
  lowerq = quantile(vars)[2]
  upperq = quantile(vars)[4]
  iqr = upperq - lowerq #Or use IQR(data)
  # we identify extreme outliers
  extreme.threshold.upper = (iqr * 3) + upperq
  extreme.threshold.lower = lowerq - (iqr * 3)
  result <- which(vars > extreme.threshold.upper | vars < extreme.threshold.lower)
  mydat<- bank[result, ]
  return(mydat)
}

# use the function to identify outliers
temp <- FindOutliers(bank,bank$amountofloan)
temp

openxlsx::write.xlsx(temp,"C:\\Users\\TERESIAH KARUMBA\\Desktop\\practice\\Outputs\\Outliers.xlsx")

library(foreign)

read.spss("D:\\Dalberg Research\\IFAD-TANZANIA\\Data\\26-02-2018\\HHQ(1).sav",use.value.labels = TRUE, to.data.frame = TRUE)

library(dplyr)
glimpse(bank)
str(bank)
summary(bank)

a=3
b=6
c=-1

solution_1 <- (-b + sqrt(b^2-4*a*c))/(2*a)
solution_2 <- (-b - sqrt(b^2-4*a*c))/(2*a)

solution_1
solution_2

?seq

data()
data(cars)
library(dslabs)
install.packages(dslabs)
library(dslabs)
data("cars")
class("cars")
?datasets
