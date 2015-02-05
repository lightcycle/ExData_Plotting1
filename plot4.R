## This program creates the plot plot4.png.

## Load data
source("load_consumption_data.R")
data <- load_consumption_data()

## Create multiple plots
par(mfrow=c(2,2))

## Create 4 plots, 2 by 2
png(filename = "plot4.png", 480, 480)

## Create first plot
with(data, plot(Global_active_power ~ as.numeric(Time), type="l", xlab="", ylab="Global Active Power", xaxt="n"))
axis.POSIXct(1, as.POSIXct(data$Date), format="%a")

## Create second plot
with(data, plot(Voltage ~ as.numeric(Time), type="l", xlab="datetime", xaxt="n"))
axis.POSIXct(1, as.POSIXct(data$Date), format="%a")

## Create third plot
with(data, plot(Sub_metering_1 ~ as.numeric(Time), type="l", xlab="", ylab="Energy sub metering", xaxt="n", col="black"))
with(data, lines(Sub_metering_2 ~ as.numeric(Time), type="l", xlab="", ylab="", xaxt="n", yaxt="n", col="red"))
with(data, lines(Sub_metering_3 ~ as.numeric(Time), type="l", xlab="", ylab="", xaxt="n", yaxt="n", col="blue"))
legend("topright", legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col=c("black","red","blue"), lwd=1)
axis.POSIXct(1, as.POSIXct(data$Date), format="%a")

## Create fourth plot
with(data, plot(Global_reactive_power ~ as.numeric(Time), type="l", xlab="datetime", xaxt="n"))
axis.POSIXct(1, as.POSIXct(data$Date), format="%a")

dev.off()