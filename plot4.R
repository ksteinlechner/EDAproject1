## exploratory data analysis assignment1 plot4

png(file = "plot4.png")
par(mfcol = c(2,2))
plot(epc67[,10],epc67[,3], type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
plot(epc67[,10], epc67$Sub_metering_1, type = "n", xlab = "", ylab = "Energy sub metering")
points(epc67[,10], epc67$Sub_metering_1, type = "l")
points(epc67[,10], epc67$Sub_metering_2, type = "l", col = "red")
points(epc67[,10], epc67$Sub_metering_3, type = "l", col = "blue")
legend("topright", lty = 1, col = c("black", "blue", "red"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
plot(epc67[,10], epc67$Voltage, xlab = "", ylab = "Voltage", type = "l")
plot(epc67[,10], epc67$Global_reactive_power, xlab = "datetime", ylab = "Global_reactive_power", type = "l")
dev.off()
