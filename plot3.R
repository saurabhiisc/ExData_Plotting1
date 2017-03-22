source("read_and_filter_data.R")
pow <- read_and_filter_data()

# Plot3
png("plot3.png", width=480, height=480)
par(mfrow = c(1,1))
plot(pow$date_time, pow$Sub_metering_1, type = "l", xlab="", ylab="Energy sub metering")
lines(pow$date_time, pow$Sub_metering_2, col = "red", type = "l")
lines(pow$date_time, pow$Sub_metering_3, col = "blue", type = "l")
legend("topright", col = c("black", "red", "blue"), legend =c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd = 1)
dev.off()

