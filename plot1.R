# plot1

# Read the file
source("readData.R")

png('plot1.png')
hist(usable_data$Global_active_power, col="red",
     xlab = "Global Active Power (kilowatts)", main="Global Active Power")
dev.off()