setwd("~/Documents/R/Exploratory Data Analysis")
mydata <- read.table("household_power_consumption.txt", header=TRUE, sep=";",dec=".", stringsAsFactors=FALSE, na.strings = "?")
#subset data
asmt1 <- mydata[mydata$Date %in% c("1/2/2007","2/2/2007"),]
as.Date(asmt1$Date)
#delete NA values
asmt1 <-na.omit(asmt1)

#plot 1
library(datasets)
hist(asmt1$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.copy(png,file = "plot1.png", width = 480,height = 480)
dev.off()