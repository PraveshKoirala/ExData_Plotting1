# Read the file
classes <- list("Global_active_power"="numeric")

if (! "data" %in% ls()){
 # If data is not already loaded, then only load it
 # Saves time if other plots have been loaded already
 
 data <- read.table("household_power_consumption.txt", sep = ';',
                    colClasses = classes, comment.char="", na.strings=c("?"), 
                    header=T, nrows = 2075259, stringsAsFactors=F)
 
 data$Date <- as.Date(data$Date, "%d/%m/%Y")
 
 usable_data <- subset(data, Date == "2007-02-01" | Date == "2007-02-02")
 x_axis <- paste(usable_data$Date, usable_data$Time)
 x_axis<-strptime(x_axis, "%Y-%m-%d %H:%M:%S")
}

