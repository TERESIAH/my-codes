QUESTION ONE

i)  >id<-1:30
ii) >injection<-rnorm(30)
iii)>gender<-gl(2,15,label=c("M","W"))
iv) >data<-data.frame(id,injection,gender)
v)  >rm(id,injection,gender)
vi) >attach(data)

QUESTION TWO
a)
i) >a<-c(1,2,3,2,2,1,6,4,4,7,2,5)
   >A<-matrix(a,nrow=3,ncol=4,byrow=T)
   >A 
   >b<-c(1,3,5,2,0,1,3,4,2,4,7,3,1,5,1,2)
   >B<-matrix(b,nrow=4,ncol=4,byrow=T) 
   >B
ii)>Binverse<-solve(B)
   >Binverse
   >A%*%Binverse
iii)>det(A)
iv) >B%*%t(A)
b)
>data<-read.csv("C://Users//DELL//Desktop//secondyear.CSV",header=TRUE)
>data
>attach(data)
