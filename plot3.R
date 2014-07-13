# exploratory data analysis assignment1 plot3

epcdata <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", colClasses = "character")
epcdata[,1] <- as.Date(epcdata[,1], "%d/%m/%Y")

#subset data on required dates

epc67 <- epcdata[epcdata[,1] == "2007-02-01"|epcdata[,1] == "2007-02-02",]
epc67[,10] <- paste(epc67$Date, epc67$Time)

# convert last column to date & time
a <- epc67[,10]
a <- as.POSIXlt(a)
a <- as.data.frame(a)
epc67[,10] <- a[,1]

#plot image

png(file = "plot3.png")
plot(epc67[,10], epc67$Sub_metering_1, type = "n", xlab = "", ylab = "Energy sub metering")
points(epc67[,10], epc67$Sub_metering_1, type = "l")
points(epc67[,10], epc67$Sub_metering_2, type = "l", col = "red")
points(epc67[,10], epc67$Sub_metering_3, type = "l", col = "blue")
legend("topright", lty = 1, col = c("black", "blue", "red"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.off()