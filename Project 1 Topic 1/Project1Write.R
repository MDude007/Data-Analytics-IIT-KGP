rm(list=ls()) ##removes all the previous elements from workspace

## sample data with Name, RollNumber, DoB, AadharNumber, Gender, MobileNumber, EmailID
## each data is stored in respective vector

Name <- c('Cristiano Ronaldo', 'Lionel Messi', 'Neymar', 'Saina Nehwal', 'Luka Modric', 'Kylian Mbappe', 'P. V. Sindhu', 'Alex Morgan', 'Sunil Chhetri', 'Donald Trump')
RollNumber <- c('F01', 'F02', 'F03', 'B01', 'F04', 'F05', 'B02', 'F06', 'F07', 'P01')
DoB <- as.Date(c('1985-02-05', '1987-06-24', '1992-02-05', '1990-03-17', '1985-09-09', '1998-12-20', '1995-07-05', '1989-07-02', NA, '1946-06-14'))
AadharNumber <- c('FJN31J1N4321', 'BN3434N23M24', 'J23HVNB1KNM1', '3V2JHBKNOIHY', 'ERG786D9WF8V', 'GFD68798092R', 'GE7678WE8D03', 'VGDS78768798', 'GFDCYS876879', 'EGFDS6887IS0')
Gender <- c('M', 'M', 'M', 'F', 'M', 'M', 'F', 'F', 'M', 'F')
MobileNumber <- c(9540347163, 7461385641, 9513647827, 9852413674, 9783164890, 8450664324, 9454643218, 9895463465, 9875467523, 7854131166)
EmailId <- c('ronaldo007@gmail.com', '10messi@gmail.com', 'juniorney@gmail.com', 'saina@gmail.com', 'modric@gmail.com', 'mbappe@gmail.com', 'sindhu@gmail.com', 'morgan@gmail.com', 'chhetri@gmail.com', 'fakenews@gmail.com')

## data frame is created with the data and stored in myframe
myframe <- data.frame(Name, RollNumber, DoB, AadharNumber, Gender, MobileNumber, EmailId)

## data1.csv is created where myframe is stored
write.csv(myframe,file='data1.csv',row.names = FALSE)