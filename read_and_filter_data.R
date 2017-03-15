read_and_filter_data <- function() {
    setwd("C:/Users/Lenovo/Documents/R/datasciencecoursera1/assignment5/")
    url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
    file <- "power.zip"
    download.file(url, file)
    unzip(file)
    file.remove(file)
    f <- file("household_power_consumption.txt", "r")
    header <- read.table("household_power_consumption.txt", sep = ";", nrows =1, header = FALSE, na.strings = "?")
    pow <- read.table(text = grep("^[1,2]/2/2007", readLines(f), value = TRUE), sep = ";", header = FALSE, skip=1, na.strings = "?")
    colnames(pow) <- unlist(header)
    head(pow)
    date_time <- paste(pow$Date, pow$Time)
    dim(pow)
    pow <- pow[, 3:9]
    pow <- cbind(date_time, pow)
    head(pow)
    pow$date_time <- strptime(pow$date_time, "%d/%m/%Y %H:%M:%S")
    pow
}