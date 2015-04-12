plot2 <- function() {
    source("loadData.R")   
    data <- loadData()
    png(filename = "plot2.png", width = 480, height = 480, units = "px")
    plot(data$DateTime, data$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
    dev.off()
}