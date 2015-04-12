# this function will be used to get and organize the data that will be used for plotting
loadData <- function() {
    # create a temporary file
    temp <- tempfile()
    # download the zip file
    download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", temp)
    # unzip and read the table to variable "data" 
    data <- read.table(unz(temp, "household_power_consumption.txt"), header=T, sep=';', na.strings="?", colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"))
    unlink(temp)
    # filter the rows having "1/2/2007" or "2/2/2007" in Date column
    data <- data[(data$Date == "1/2/2007") | (data$Date == "2/2/2007"),]
    # add a DateTime column to table using the Date and Time columns
    data$DateTime <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
    # return filtered and formatted table
    data
}
