##Assignment 1: March 8, 2015##

##Data Source##
##This plot utilizes data from the UCI Machine Learning Repository##
##The name of the dataset is "“Individual household electric power consumption" (2012)##
##The dataset may be downloaded from: http://archive.ics.uci.edu/ml/datasets.html##

##This plot makes use of data between Feb. 1, 2007 - Feb. 2, 2007.##
##As suggested in the assignment instructions, I extracted the data for ONLY those dates, and put them into a .csv file, prior to reading the data into R##
##Other users could reproduce these plots by downloading the data indicated above, and following the same procedure##
##As noted in the EDA Discussion forum titled "Assignment 1 Important Notes" (see post on 3/4/15 by Scott von Kleeck), this script only needs to include code for reading in the data, NOT downloading and unzipping the initial file##

##ONE FINAL NOTE: The .png files in the "Figure" folder in the ExData_Plotting1 repository are the most up-to-date versions posted by Roger Peng. These are the ones to use for comparison with the plots I created.##
##Note that Roger Peng's figures utilize a transparent background, which shows up in the .png file as a checkered backdrop##


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

par(mfrow = c(2,2), mar = c(4,4,3,2), bg = "transparent") ##Specify number of panels and margins##

##Top left##
plot(x = dt, y = alldata$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power")

##Top right##
plot(x = dt, y = alldata$Voltage, type = "l", xlab = "datetime", ylab = "Voltage")

##Bottom left##
plot(x = dt, y = alldata$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
lines(x = dt, y = alldata$Sub_metering_2, col = "red")
lines(x = dt, y = alldata$Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), box.col = "transparent", adj = 0, lwd = 1, col = c(1:2,"blue"))

##Bottom right##
plot(x = dt, y = alldata$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_power")


##Turn off the current graphics device##
dev.off()