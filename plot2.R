# plot1

# Read the file
source("readData.R")

png('plot2.png')
plot(x_axis, usable_data$Global_active_power, type="l", 
     ylab = "Global Active Power (kilowatts)", xlab="")
dev.off()