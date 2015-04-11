# plot1

# Read the file
source("readData.R")

png("plot4.png")
par(mfrow=c(2,2))
plot(x_axis, usable_data$Global_active_power, type="l", xlab="", ylab = "Global Active Power")

plot(x_axis, usable_data$Voltage, type="l", ylab = "Voltage", xlab = "datetime")

plot(x_axis, usable_data$Sub_metering_1, type="n", ylab = "Energy Sub Metering", xlab="")
points(x_axis, usable_data$Sub_metering_1, type='l', col='black')
points(x_axis, usable_data$Sub_metering_2, type='l', col='red')
points(x_axis, usable_data$Sub_metering_3, type='l', col='blue')
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col=c("black", "red", "blue"), lty=1, bty="n")

plot(x_axis, usable_data$Global_reactive_power, type="l", ylab = "Global_reactive_power",
     xlab="datetime")

dev.off()