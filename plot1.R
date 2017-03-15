setwd("C:/Users/Lenovo/Documents/R/datasciencecoursera1/assignment5/ExData_Plotting1/")
source("read_and_filter_data.R")
pow <- read_and_filter_data()

# Plot1
par(mfrow = c(1,1))
hist(pow$Global_active_power, col = "red", xlab ="Global Active Power (kilowatts)", main = "Global Active Power")
dev.copy(png, "ExData_Plotting1/figure/plot1.png", width=480, height=480)
dev.off()
