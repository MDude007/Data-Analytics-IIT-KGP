rm(list=ls()) ##removes all the previous elements from workspace

## now data from data1.csv is read into data
data <- read.csv('data1.csv', header=T, sep=',',stringsAsFactors=FALSE)

## defining find.age function
find.age <- function(DoB){
  year.birth <- as.numeric(format(DoB,format="%Y"))
  year.current <- as.numeric(format(Sys.Date(),format="%Y"))
  year.diff <- year.current - year.birth
  
  month.birth <- as.numeric(format(DoB,format="%m"))
  month.current <- as.numeric(format(Sys.Date(),format="%m"))
  month.diff <- month.current - month.birth
  
  month.na <- is.na(month.diff)
  
  if(month.diff == 0 && month.na==FALSE){
    date.birth <- as.numeric(format(DoB,format="%d"))
    date.current <- as.numeric(format(Sys.Date(),format="%d"))
    date.diff <- date.current - date.birth
    date.na <- is.na(date.diff)
    if(date.diff<0 && date.na==FALSE) return(year.diff - 1)
    else return(year.diff)
  }
  else if(month.diff < 0 && month.na==FALSE) return(year.diff - 1)
  else return(year.diff)
}

## each DoB is read as date in a1, a2, ... , a10 resp
a1 <- as.Date(data[1,'DoB'])
a2 <- as.Date(data[2,'DoB'])
a3 <- as.Date(data[3,'DoB'])
a4 <- as.Date(data[4,'DoB'])
a5 <- as.Date(data[5,'DoB'])
a6 <- as.Date(data[6,'DoB'])
a7 <- as.Date(data[7,'DoB'])
a8 <- as.Date(data[8,'DoB'])
a9 <- as.Date(data[9,'DoB'])
a10 <- as.Date(data[10,'DoB'])

## initialising vector age to store respective ages
age <- c(0,0,0,0,0,0,0,0,0,0)

age[1] <- find.age(a1)
age[2] <- find.age(a2)
age[3] <- find.age(a3)
age[4] <- find.age(a4)
age[5] <- find.age(a5)
age[6] <- find.age(a6)
age[7] <- find.age(a7)
age[8] <- find.age(a8)
age[9] <- find.age(a9)
age[10] <- find.age(a10)

## a is number of records where age > 30
a<-0

## initialising b to store index of record where age > 30
b<-c(0,0,0,0,0,0,0,0,0,0)

## storing a and b
for(i in 1:10){
  na<-is.na(age[i])
  if(age[i]>30 && na==FALSE){
    a <- a+1
    b[a] <- i
  }
}

## deleting records where age > 30
data<-data[-c(b[1:a]),]

## new data is stored into data2.csv
write.csv(data,file='data2.csv',row.names = FALSE)