data_full <- read.csv(name, header=T, sep=';', na.strings="?", stringsAsFactors=F)
data1$Date <- as.Date(data1$Date, format="%d/%m/%Y")

hist(data1$Global_active_power, main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")

dev.copy(png,"plot1.png", width = 480, height = 480)
dev.off()
