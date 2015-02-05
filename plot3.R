## This program creates the plot plot3.png.

## Load data
source("load_consumption_data.R")
data <- load_consumption_data()

## Create line plots with x-axis labelled with day abbreviations
png(filename = "plot3.png", 480, 480)
with(data, plot(Sub_metering_1 ~ as.numeric(Time), type="l", xlab="", ylab="Energy sub metering", xaxt="n", col="black"))
with(data, lines(Sub_metering_2 ~ as.numeric(Time), type="l", xlab="", ylab="", xaxt="n", yaxt="n", col="red"))
with(data, lines(Sub_metering_3 ~ as.numeric(Time), type="l", xlab="", ylab="", xaxt="n", yaxt="n", col="blue"))
legend("topright", legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col=c("black","red","blue"), lwd=1)
axis.POSIXct(1, as.POSIXct(data$Date), format="%a")
dev.off()