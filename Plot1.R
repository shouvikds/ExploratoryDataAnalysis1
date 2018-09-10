dataset <- read.csv("household_power_consumption.txt", sep = ";", header = TRUE)
dataset$Date <- as.Date(dataset$Date, "%d/%m/%Y")
dataset$Global_active_power = as.numeric(as.character(dataset$Global_active_power))
datasubset <- subset(dataset, dataset$Date >= "2007-02-01" & dataset$Date <= "2007-02-02")
png("Plot1.png", width = 480, height = 480)
hist(datasubset$Global_active_power, col = "red", xlab = "Global Active Power", ylab = "Frequency", main = "Global Active Power")
dev.off()

