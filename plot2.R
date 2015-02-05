## This program creates the plot plot2.png.

## Load data
source("load_consumption_data.R")
data <- load_consumption_data()

## Create line plot with x-axis labelled with day abbreviations
png(filename = "plot2.png", 480, 480)
with(data, plot(Global_active_power ~ as.numeric(Time), type="l", xlab="", ylab="Global Active Power (kilowatts)", xaxt="n"))
axis.POSIXct(1, as.POSIXct(data$Date), format="%a")
dev.off()