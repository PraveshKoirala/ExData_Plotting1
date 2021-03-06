# plot1

# Read the file
source("readData.R")

png("plot3.png")
plot(x_axis, usable_data$Sub_metering_1, type="n", ylab = "Energy sub metering", xlab="")
points(x_axis, usable_data$Sub_metering_1, type='l', col='black')
points(x_axis, usable_data$Sub_metering_2, type='l', col='red')
points(x_axis, usable_data$Sub_metering_3, type='l', col='blue')
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col=c("black", "red", "blue"), lty=1)
dev.off()