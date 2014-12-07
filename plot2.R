# this is the code that constructs plot 2

png(filename = "plot2.png", width = 480, height = 480)
plot(powerData$dateTime, gapData, type = "n", ylab ="Global Active Power (kilowatts)", xlab = "")
lines(powerData$dateTime, gapData, type="l")
dev.off()
