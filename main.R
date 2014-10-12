# First we set up the working directory as the source file location
setwd("~/Documents/DataScienceSpecialization/4-ExploratoryDataAnalysis/course_p1")

# We read the data, it should be in the same directory of this script
hp <- read.csv("household_power_consumption.txt", sep=";")

# Some processing
# We convert the Date column as Date type
hp$Date = as.Date(hp$Date,"%d/%m/%Y")

# We get only the dates we are interested
hp = subset(hp, hp$Date >= as.Date("2007-02-01") & hp$Date <= as.Date("2007-02-02") )

# We create a new column that will contain both the date and the time
hp$DateTime = paste(hp$Date, hp$Time, sep=" ")
# We convert such column to the proper type
hp$DateTime = strptime(hp$DateTime, format="%Y-%m-%d %H:%M:%S")

# We transform to numeric type the relevant columns for our plots
hp$Global_active_power = as.numeric(as.character(hp$Global_active_power))
hp$Sub_metering_1 = as.numeric(as.character(hp$Sub_metering_1))
hp$Sub_metering_2 = as.numeric(as.character(hp$Sub_metering_2))
hp$Sub_metering_3 = as.numeric(as.character(hp$Sub_metering_3))
hp$Voltage = as.numeric(as.character(hp$Voltage))
hp$Global_reactive_power = as.numeric(as.character(hp$Global_reactive_power))

# We execute the four R scripts that corresponds to the 4 plots
source("plot1.R")
source("plot2.R")
source("plot3.R")
source("plot4.R")
