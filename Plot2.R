##Assignment 1: March 8, 2015##

##Plot 2##

##Set the working directory and read in the data##

setwd("C:\Users\Erin\Documents\Coursera\R_EDA\Data\Assignment1")
alldata <- read.csv("Feb2007_household_power_consumption.csv")


##Prepare the data for plotting##

dates <- as.character(alldata$Date)	##Converts date column to character vector##

times <- as.character(alldata$Time)	##Converts time column to character vector##

datetime <- paste(dates, times)	##Combines date and time into a single column##

dt <- strptime(datetime, format = "%e/%m/%Y %H:%M:%S") ##Converts datetime into POSIXlt format##


##Prepare R to create the .png image file##

png(filename = "plot2.png", width = 480, height = 480, units = "px", pointsize = 12, type = "cairo")	##Prepare R to create the .png image file##

##Create the plot##

par(oma = c(0,0,3,0)) ##Create a top outer margin##

plot(x = dt, y = alldata$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")##Create the line graph##

par(adj = 0) ##Left-justify the outer title##

par(ps = 14) ##Increase the font size of the outer title##

title(main = "Plot 2", outer = TRUE) ##Specify the outer title##

##Turn off the current graphics device##
dev.off()