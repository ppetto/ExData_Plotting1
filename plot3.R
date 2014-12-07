# this is the code that constructs plot 3
# it depends on (will only work) if you run it
# AFTER running power_data_setup.R

png(filename = "plot3.png", width = 480, height = 480)
s1data <- as.numeric(as.character(powerData$Sub_metering_1))
s2data <- as.numeric(as.character(powerData$Sub_metering_2))
s3data <- as.numeric(as.character(powerData$Sub_metering_3))
plot(powerData$dateTime, s1data, type = "n", ylab ="Energy sub metering", xlab = "")
lines(powerData$dateTime, s1data, type="l")
lines(powerData$dateTime, s2data, type="l", col = "red")
lines(powerData$dateTime, s3data, type="l", col = "blue")
legend("topright", legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty = c(1,1,1), lwd = c(2,2,2), col = c("black","red","blue"))
dev.off()
