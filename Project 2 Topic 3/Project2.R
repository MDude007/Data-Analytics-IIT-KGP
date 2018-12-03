rm(list=ls()) ##removes all the previous elements from workspace

## now data from movie.csv is read into data
data <- read.csv('movie.csv', header=T, sep=',',stringsAsFactors=FALSE)

## population is stored in pop
pop <- subset(data, data$Year<=2015)

## population mean, variance and standard deviation resp.
pop.mean <- mean(pop$Rating)
pop.variance <- var(pop$Rating)
pop.sd <- sd(pop$Rating)

## sample is stored in sample
sample <- subset(data, data$Year==2016)

## size of sample
n <- length(sample$Rating)

## sample mean, variance and standard deviation resp
sample.mean <- mean(sample$Rating)
sample.variance <- var(sample$Rating)
sample.sd <- sd(sample$Rating)

#T Test when population standard deviation is unknown
t <- (sample.mean - pop.mean)/(sample.sd/sqrt(n))
t.alpha <- qt(0.95, n-1)
t
t.alpha

#Z Test when population standard deviation is known
z <- (sample.mean - pop.mean)/(pop.sd/sqrt(n))
z.alpha <- qnorm(0.95)
z
z.alpha