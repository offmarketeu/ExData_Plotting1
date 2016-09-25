setwd("E:/COURSERA/Data Science/Course4- Data exploratory/Week_1/Assigment1/")
file<-"household_power_consumption.txt"


# Read original table and select dataframe to analyst

data<- read.table(file,header = TRUE,sep = ";",colClasses = c("character", "character", rep("numeric",7)),na = "?")
setplot2 <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

# plot2
datetime <- strptime(paste(setplot2$Date, setplot2$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(setplot2$Global_active_power)
png("plot2.png", width = 480, height = 480, units = "px", bg = "white")
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (Kilowatts)")
dev.off()







