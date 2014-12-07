# this is the code that constructs plot 4
# it depends on (will only work) if you run it
# AFTER running power_data_setup.R and plot3.R

png(filename = "plot4.png", width = 480, height = 480)
par(mfcol = c(2,2))

plot(powerData$dateTime, gapData, type = "n", ylab ="Global Active Power (kilowatts)", xlab = "")
lines(powerData$dateTime, gapData, type="l")

s1data <- as.numeric(as.character(powerData$Sub_metering_1))
s2data <- as.numeric(as.character(powerData$Sub_metering_2))
s3data <- as.numeric(as.character(powerData$Sub_metering_3))
plot(powerData$dateTime, s1data, type = "n", ylab ="Energy sub metering", xlab = "")
lines(powerData$dateTime, s1data, type="l")
lines(powerData$dateTime, s2data, type="l", col = "red")
lines(powerData$dateTime, s3data, type="l", col = "blue")
legend("topright", legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty = c(1,1,1), lwd = c(2,2,2), col = c("black","red","blue"), box.lty = 0)

voltageData <- as.numeric(as.character(powerData$Voltage))
plot(powerData$dateTime, voltageData, type = "n", ylab ="Voltage", xlab = "datetime")
lines(powerData$dateTime, voltageData, type="l")

grpData <- as.numeric(as.character(powerData$Global_reactive_power))
plot(powerData$dateTime, grpData, type = "n", ylab ="Global_reactive_power", xlab = "datetime")
lines(powerData$dateTime, grpData, type="l")

dev.off()

