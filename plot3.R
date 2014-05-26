# exploratory data analysis assignment1 plot3



png(file = "plot3.png")
plot(epc67[,10], epc67$Sub_metering_1, type = "n", xlab = "", ylab = "Energy sub metering")
points(epc67[,10], epc67$Sub_metering_1, type = "l")
points(epc67[,10], epc67$Sub_metering_2, type = "l", col = "red")
points(epc67[,10], epc67$Sub_metering_3, type = "l", col = "blue")
legend("topright", lty = 1, col = c("black", "blue", "red"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))



dev.off()