##Assignment 1: March 8, 2015##

##Plot 3##

##Set the working directory and read in the data##

setwd("C:/Users/Erin/Documents/Coursera/R_EDA/Data/Assignment1")
alldata <- read.csv("Feb2007_household_power_consumption.csv")

##Prepare the data for plotting##

dates <- as.character(alldata$Date)	##Converts date column to character vector##

times <- as.character(alldata$Time)	##Converts time column to character vector##

datetime <- paste(dates, times) ##Combines date and time into a single column##

dt <- strptime(datetime, format = "%e/%m/%Y %H:%M:%S") ##Converts datetime into POSIXlt format##


##Prepare R to create the .png image file##

png(filename = "plot3.png", width = 480, height = 480, units = "px", pointsize = 12, type = "cairo")	##Prepare R to create the .png image file##

##Create the plot##

par(oma = c(0,0,3,0)) ##Create a top outer margin##

plot(x = dt, y = alldata$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")	##Plots the sub metering 1 line against date/time##

lines(x = dt, y = alldata$Sub_metering_2, col = "red") ##Plots the sub metering 2 line in red##

lines(x = dt, y = alldata$Sub_metering_3, col = "blue") ##Plots the sub metering 3 line in blue##

legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd = 1, col = c(1:2,"blue"))	##Adds the legend##

par(adj = 0) ##Left-justify the outer title##

par(ps = 14) ##Increase the font size of the outer title##

title(main = "Plot 3", outer = TRUE) ##Specify the outer title##

##Shuts down the current graphics device##
dev.off()