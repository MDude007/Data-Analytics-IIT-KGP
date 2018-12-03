rm(list=ls()) ##removes all the previous elements from workspace

## now data from IRIS.xlsx is read into data
data <- read.csv('IRIS.csv', header=T, sep=',',stringsAsFactors=FALSE)

setosa.data <- subset(data, data$Species=='Iris-setosa')
versicolor.data <- subset(data, data$Species=='Iris-versicolor')
virginica.data <- subset(data, data$Species=='Iris-virginica')

F.critical.1 <- qf(0.99,147,2) #critical value with confidence level 1%
F.critical.5 <- qf(0.95,147,2) #critical value with confidence level 5%

#For attribute: SepalLengthCm

mean1 <- mean(setosa.data$SepalLengthCm)
mean2 <- mean(versicolor.data$SepalLengthCm)
mean3 <- mean(virginica.data$SepalLengthCm)
              
means <- c(mean1,mean2,mean3)

var1 <- var(setosa.data$SepalLengthCm)
var2 <- var(versicolor.data$SepalLengthCm)
var3 <- var(virginica.data$SepalLengthCm)

variances <- c(var1,var2,var3)

var.sample.mean <- var(means)

pooled.sample.mean <- 49*sum(variances)/147

F.value <- 50*var.sample.mean/pooled.sample.mean

#For attribute: SepalWidthCm

mean1 <- mean(setosa.data$SepalWidthCm)
mean2 <- mean(versicolor.data$SepalWidthCm)
mean3 <- mean(virginica.data$SepalWidthCm)

means <- c(mean1,mean2,mean3)

var1 <- var(setosa.data$SepalWidthCm)
var2 <- var(versicolor.data$SepalWidthCm)
var3 <- var(virginica.data$SepalWidthCm)

variances <- c(var1,var2,var3)

var.sample.mean <- var(means)

pooled.sample.mean <- 49*sum(variances)/147

F.value <- 50*var.sample.mean/pooled.sample.mean

#For attribute: PetalLengthCm

mean1 <- mean(setosa.data$PetalLengthCm)
mean2 <- mean(versicolor.data$PetalLengthCm)
mean3 <- mean(virginica.data$PetalLengthCm)

means <- c(mean1,mean2,mean3)

var1 <- var(setosa.data$PetalLengthCm)
var2 <- var(versicolor.data$PetalLengthCm)
var3 <- var(virginica.data$PetalLengthCm)

variances <- c(var1,var2,var3)

var.sample.mean <- var(means)

pooled.sample.mean <- 49*sum(variances)/147

F.value <- 50*var.sample.mean/pooled.sample.mean

#For attribute: PetalWidthCm

mean1 <- mean(setosa.data$PetalWidthCm)
mean2 <- mean(versicolor.data$PetalWidthCm)
mean3 <- mean(virginica.data$PetalWidthCm)

means <- c(mean1,mean2,mean3)

var1 <- var(setosa.data$PetalWidthCm)
var2 <- var(versicolor.data$PetalWidthCm)
var3 <- var(virginica.data$PetalWidthCm)

variances <- c(var1,var2,var3)

var.sample.mean <- var(means)

pooled.sample.mean <- 49*sum(variances)/147

F.value <- 50*var.sample.mean/pooled.sample.mean