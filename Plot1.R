##Assignment 1, March 8, 2015##

##Plot 1##

##Set the working directory and read in the data##

setwd("C:/Users/Erin/Documents/Coursera/R_EDA/Data/Assignment1")
alldata<-read.csv("Feb2007_household_power_consumption.csv")


##Prepare R to create the .png image file##

png(filename = "plot1.png", width = 480, height = 480, units = "px", pointsize = 12, type = "cairo")


##Create the plot##
par(oma = c(0,0,3,0)) ##Create a top outer margin##

hist(alldata$Global_active_power, breaks = 12, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency") ##Plot the histogram with the correct breaks and colors##

par(adj = 0) ##Left-justify the outer title##

par(ps = 14) ##Increase the font size of the outer title##

title(main = "Plot 1", outer = TRUE) ##Specify the outer title##


##Turn off the graphics device##
dev.off()