## This file demonstrates how I loaded and cleaded the data for this class project. 
## I downloaded the household~.txt file from the provided link into the working director
## on my computer and then did the following:

## Read the household_power_consumption.txt file into the current working directory and label it 
## "lac" for loaded and cleaned data file. 

lac <- read.table("./household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?", colClasses = c('character','character','numeric','numeric','numeric','numeric','numeric','numeric','numeric'))

## Here I formate the date into a Type Date
lac$Date <- as.Date(lac$Date, "%d/%m/%Y")

## Here I create a subset where I only extract the data from the 1st and 2nd of Feb 07
lac <- subset(lac,Date >= as.Date("2007-2-1") & Date <= as.Date("2007-2-2"))

## Here is where I get rid of any incomplete observations
lac <- lac[complete.cases(lac),]

## Here I combine the Date and Time columns into a variable called "dateTime"
dateTime <- paste(lac$Date, lac$Time)

## Here I name the vector names of the dateTime variable to "DateTime"
dateTime <- setNames(dateTime, "DateTime")

## Here I remove the Date and Time columns 
lac <- lac[ ,!(names(lac) %in% c("Date","Time"))]

## Here I add the dateTime column that I created earlier
lac <- cbind(dateTime, lac)

## And finally I format the dateTime column to display the way it does in the plot examples
lac$dateTime <- as.POSIXct(dateTime)

