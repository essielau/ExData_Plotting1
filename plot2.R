#plot2
#convert time form
asmt1$DateTime <- strptime(paste(asmt1$Date, asmt1$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
library(datasets)
# Create plot on screen device
with(asmt1,plot(DateTime,Global_active_power, xlab = "", ylab = "Global Active Power (kilowatts)", type = "l"))
# Copy my plot to a PNG file
dev.copy(png, file = "plot2.png",  width = 480,height = 480)
dev.off()
