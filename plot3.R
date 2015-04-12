plot3 <- function() {
    source("loadData.R")   
    data <- loadData()
    png(filename = "plot3.png", width = 480, height = 480, units = "px")
    cols = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
    plot(data$DateTime, data$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
    legend("topright", lty=1, lwd=1, col=c("black","blue","red"), legend=cols)
    lines(data$DateTime, data$Sub_metering_3, type="l", col="blue")
    lines(data$DateTime, data$Sub_metering_2, type="l", col="red")
    dev.off()
}