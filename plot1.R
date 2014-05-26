# exploratory data analysis assignment1 plot1

epcdata <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", colClasses = "character")
epcdata[,1] <- as.Date(epcdata[,1], "%d/%m/%Y")

#subset data on required dates

epc67 <- epcdata[epcdata[,1] == "2007-02-01"|epcdata[,1] == "2007-02-02",]

# create & save plot

png(file = "plot1.png")
with(epc67, hist(Global_active_power, xlab = "Global Active Power (Kilowatts)", ylab = "Frequency", main = "Global Active Power", col = "red"))
dev.off()
