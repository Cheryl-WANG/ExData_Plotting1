###project1
##plot1
data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")
data$Date <- as.Date(as.character(data$Date), "%d/%m/%Y")
sub <- subset(data, Date == "2007-02-01" | Date == "2007-02-02")
png(file = "plot1.png", width = 480, height = 480)
hist(sub$Global_active_power, main = "Global Active Power", col = "red", xlab = "Global Active Power(kilowatts)")
dev.off()
