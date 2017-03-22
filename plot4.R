source("read_and_filter_data.R")
pow <- read_and_filter_data()

# Plot4
png("plot4.png", width=480, height=480)
par(mfrow = c(2,2))
plot(pow$date_time, pow$Global_active_power, xlab = "", ylab = "Global Active Power", type = "l", cex=0.2)
plot(pow$date_time, pow$Voltage, xlab = "datetime", ylab ="Volatge", type = "l")
plot(pow$date_time, pow$Sub_metering_1, type = "l", xlab="", ylab="Energy sub metering")
lines(pow$date_time, pow$Sub_metering_2, col = "red", type = "l")
lines(pow$date_time, pow$Sub_metering_3, col = "blue", type = "l")
legend("topright", col = c("black", "red", "blue"), legend =c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd = 1, bty = "n")
plot(pow$date_time, pow$Global_reactive_power, xlab = "datetime", ylab = "Global_reactive_power", type ="l")
dev.off()


