setwd("C:/Users/Lenovo/Documents/R/datasciencecoursera1/assignment5/ExData_Plotting1/")
source("read_and_filter_data.R")
pow <- read_and_filter_data()

# Plot2
par(mfrow = c(1,1))
plot(pow$date_time, pow$Global_active_power, type = "l", xlab = "", ylab="Global Active Power (kilowatts)")
dev.copy(png, "ExData_Plotting1/figure/plot2.png", width=480, height=480) 
dev.off()
