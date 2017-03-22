source("read_and_filter_data.R", local = TRUE)
pow <- read_and_filter_data()

# Plot1
png("plot1.png", width=480, height=480)
par(mfrow = c(1,1))
hist(pow$Global_active_power, col = "red", xlab ="Global Active Power (kilowatts)", main = "Global Active Power")
dev.off()
