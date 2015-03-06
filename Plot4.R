##Assignment 1: March 8, 2015##

##Plot 4##

##Set the working directory and read in the data##

setwd("C:/Users/Erin/Documents/Coursera/R_EDA/Data/Assignment1")
alldata <- read.csv("Feb2007_household_power_consumption.csv")

##Prepare the data for plotting##

dates <- as.character(alldata$Date) ##Converts date column to character vector##
times <- as.character(alldata$Time)	##Converts time column to character vector##
datetime <- paste(dates, times)	##Combines date and time into a single column##
dt <- strptime(datetime, format = "%e/%m/%Y %H:%M:%S") ##Converts datetime into POSIXlt format##

##Prepare R to create the .png image file##
png(filename = "plot4.png", width = 480, height = 480, units = "px", pointsize = 12, type = "cairo")	##Prepare R to create the .png image file##

##Create the plot##

par(oma = c(0,0,3,0)) ##Create a top outer margin##
par(mfrow = c(2,2), mar = c(4,4,3,2)) ##Specify number of panels and margins##

##Top left##
plot(x = dt, y = alldata$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power")

##Top right##
plot(x = dt, y = alldata$Voltage, type = "l", xlab = "datetime", ylab = "Voltage")

##Bottom left##
plot(x = dt, y = alldata$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
lines(x = dt, y = alldata$Sub_metering_2, col = "red")
lines(x = dt, y = alldata$Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), box.col = "transparent", lwd = 1, col = c(1:2,"blue"))

##Bottom right##
plot(x = dt, y = alldata$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_power")

title(main = "Plot 4", outer = TRUE, adj = 0, ps = 14) ##Specify the outer title##


##Turn off the current graphics device##
dev.off()