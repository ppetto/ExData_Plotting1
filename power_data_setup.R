# this is the code that reads, subsets, and prepares my data
# for the most part, and particularly for the first two plots

allPowerData <- read.table("household_power_consumption.txt", header = TRUE, sep = ";")
feb1data <- subset(allPowerData, Date=="1/2/2007")
feb2data <- subset(allPowerData, Date=="2/2/2007")
powerData <- rbind(feb1data, feb2data)

rm(allPowerData)
rm(feb1data)
rm(feb2data)

powerData$Date2 <- as.Date(powerData$Date, "%d/%m/%Y")
powerData$dtString <- paste(powerData[,10], powerData[,2], sep=" ")
powerData$dateTime <- strptime(powerData$dtString, "%Y-%m-%d %H:%M:%S")

gapData <- as.numeric(as.character(powerData$Global_active_power))
