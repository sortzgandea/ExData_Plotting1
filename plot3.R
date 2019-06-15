data_full <- read.csv(name, header=T, sep=';', na.strings="?", stringsAsFactors=F)
data1$Date <- as.Date(data1$Date, format="%d/%m/%Y")
datetime <- paste(as.Date(data1$Date), data1$Time)
data1$Datetime <- as.POSIXct(datetime)

with(data1,{
    plot(Datetime,Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
    points(Datetime, Sub_metering_2, type = "l", col = "red")
    points(Datetime, Sub_metering_3, type = "l", col = "blue")
    legend("topright", legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
           col = c("black", "red", "blue"), lty= c(1,1,1))
})
dev.copy(png,"plot3.png", width = 480, height = 480)
dev.off()