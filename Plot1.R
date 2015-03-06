##Assignment 1, March 8, 2015##

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


##Plot 1##

##Set the working directory and read in the data##

setwd("C:/Users/Erin/Documents/Coursera/R_EDA/Data/Assignment1")
alldata<-read.csv("Feb2007_household_power_consumption.csv")


##Prepare R to create the .png image file##

png(filename = "plot1.png", width = 480, height = 480, units = "px", pointsize = 12, type = "cairo")


##Create the plot##

par(bg = "transparent") ##Set transparent background##

hist(alldata$Global_active_power, breaks = 12, bg = "transparent", col = "red", ann = FALSE) ##Plot the histogram with the correct breaks and colors##

title(main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency") ##Add annotation to the plot##


##Turn off the graphics device##
dev.off()