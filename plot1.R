# this is the code that constructs plot 1
# it depends on (will only work) if you run it
# AFTER running power_data_setup.R

png(filename = "plot1.png", width = 480, height = 480)
hist(gapData, main = "Global Active Power", col = "red", xlab = "Global Active Power (kilowatts)")
dev.off()
