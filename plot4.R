setwd("E:/COURSERA/Data Science/Course4- Data exploratory/Week_1/Assigment1/")
file<-"household_power_consumption.txt"
#file<-paste(dir, file, sep="/")


# Read original table and select dataframe to analyst


data<- read.table(file,header = TRUE,sep = ";",colClasses = c("character", "character", rep("numeric",7)),na = "?")
setplot4 <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]



# Plot 4
datetime <- strptime(paste(setplot4$Date, setplot4$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(setplot4$Global_active_power)
globalReactivePower <- as.numeric(setplot4$Global_reactive_power)
voltage <- as.numeric(setplot4$Voltage)
subMetering1 <- as.numeric(setplot4$Sub_metering_1)
subMetering2 <- as.numeric(setplot4$Sub_metering_2)
subMetering3 <- as.numeric(setplot4$Sub_metering_3)

png("plot4.png", width = 480, height = 480, units = "px", bg = "white")
par(mfrow = c(2, 2)) 

plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power", cex=0.2)
plot(datetime, voltage, type="l", xlab="datetime", ylab="Voltage")
plot(datetime, subMetering1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, subMetering2, type="l", col="red")
lines(datetime, subMetering3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=, lwd=2.5, col=c("black", "red", "blue"), bty="o")
plot(datetime, globalReactivePower, type="l", xlab="datetime", ylab="Global_reactive_power")

dev.off()