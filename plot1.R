## This program creates the plot plot1.png.

## Load data
source("load_consumption_data.R")
data <- load_consumption_data()

## Create histogram of global active power
png(filename = "plot1.png", 480, 480)
with(data, hist(Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)"))
dev.off()