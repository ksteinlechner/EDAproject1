# exploratory data analysis assignment1 plot2

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

#plot & save image

png(file = "plot2.png")
plot(epc67[,10],epc67[,3], type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()
