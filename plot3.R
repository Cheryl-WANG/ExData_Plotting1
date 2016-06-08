###project1
##plot3
data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")
data$Date <- as.Date(as.character(data$Date), "%d/%m/%Y")
sub <- subset(data, Date == "2007-02-01" | Date == "2007-02-02")
sub["DateTime"] <- paste(sub$Date, sub$Time)
sub$DateTime <- strptime(sub$DateTime, "%Y-%m-%d %H:%M:%S")
png(file = "plot3.png", width = 480, height = 480)
with(sub, {plot(DateTime, Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
  lines(DateTime, Sub_metering_2, type = "l", col = "red")
  lines(DateTime, Sub_metering_3, type = "l", col = "blue")
  })
legend("topright", pch = "_", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()
