datetime <- strptime(paste(asmt1$Date, asmt1$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
png("plot5.png", width=480, height=480)
par(mfrow = c(2, 2)) 

plot(datetime, asmt1$Global_active_power, type="l", xlab="", ylab="Global Active Power", cex=0.2)

plot(datetime, asmt1$Voltage, type="l", xlab="datetime", ylab="Voltage")

plot(datetime, asmt1$Sub_metering_1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, asmt1$Sub_metering_2, type="l", col="red")
lines(datetime, asmt1$Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=, lwd=2.5, col=c("black", "red", "blue"), bty="o")

plot(datetime, asmt1$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")

dev.off()