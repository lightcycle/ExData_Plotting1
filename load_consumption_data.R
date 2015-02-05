## This function loads the household power consumption data file into a
## data.frame, selects the subset of data for Feb 1 and 2 2007, and converts the
## Date and Time columns to Date and POSIXlt types respectively.
load_consumption_data <- function() {
    data <- read.csv("household_power_consumption.txt", sep=";", header=TRUE, na.strings="?", colClasses=c(rep("character", 2), rep("double", 7)))
    data <- data[which(data$Date == "1/2/2007" | data$Date == "2/2/2007"), ]
    data$Time <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
    data$Date <- as.Date(data$Date, "%d/%m/%Y")
    data
}