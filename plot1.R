library(dplyr)
setwd("E:/COURSERA/Data Science/Course4- Data exploratory/Week_1/Assigment1/")
file<-"household_power_consumption.txt"


# Read original table and select dataframe to analyst

data<- read.table(file,header = TRUE,sep = ";",colClasses = c("character", "character", rep("numeric",7)),na = "?")
setplot1<- data[data$Date %in% c("1/2/2007","2/2/2007"),]

# plot1
png("plot1.png", width = 480, height = 480, units = "px", bg = "white")
hist(setplot1$Global_active_power, col="Red", main="Global active power", xlab="Global Active Power (kilowatts)", ylab="Frequency")
dev.off()







