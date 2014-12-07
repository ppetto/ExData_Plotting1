# this is the code that constructs plot 2
# it depends on (will only work) if you run it
# AFTER running power_data_setup.R

png(filename = "plot2.png", width = 480, height = 480)
plot(powerData$dateTime, gapData, type = "n", ylab ="Global Active Power (kilowatts)", xlab = "")
lines(powerData$dateTime, gapData, type="l")
dev.off()
