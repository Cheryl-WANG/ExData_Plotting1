###project1
##plot2
data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")
data$Date <- as.Date(as.character(data$Date), "%d/%m/%Y")
sub <- subset(data, Date == "2007-02-01" | Date == "2007-02-02")
sub["DateTime"] <- paste(sub$Date, sub$Time)
sub$DateTime <- strptime(sub$DateTime, "%Y-%m-%d %H:%M:%S")
png(file = "plot2.png", width = 480, height = 480)
with(sub, plot(DateTime, Global_active_power, type = "l", xlab = "", ylab = "Global Active Power(kilowatts)"))
dev.off()
