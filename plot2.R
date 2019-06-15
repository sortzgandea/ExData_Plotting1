data_full <- read.csv(name, header=T, sep=';', na.strings="?", stringsAsFactors=F)
data1$Date <- as.Date(data1$Date, format="%d/%m/%Y")
datetime <- paste(as.Date(data1$Date), data1$Time)
data1$Datetime <- as.POSIXct(datetime)

with(data1, {
    plot(Datetime,Global_active_power, type="l",
         ylab="Global Active Power (kilowatts)", xlab="")
})
dev.copy(png,"plot2.png", width = 480, height = 480)
dev.off()
