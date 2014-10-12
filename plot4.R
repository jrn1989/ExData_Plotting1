png(file = "plot4.png",width = 480, height = 480,units="px") 
par(mfrow = c(2, 2), mar = c(4, 4, 2, 1), oma = c(0, 0, 2, 0))

plot(hp$DateTime,hp$Global_active_power,
     type="l",ylab="Global Active Power (kilowatts)",cex.lab=0.7,xlab="",cex.axis=0.7)
plot(hp$DateTime, hp$Voltage, type="l", xlab="datetime",ylab="Voltage",cex.axis=0.7,cex.lab=0.7)

with(hp, plot(DateTime, Sub_metering_1, ylab = "Energy sub metering",cex.lab=0.7,cex.axis=0.7,xlab="", 
              type = "l"))
with(hp, lines(DateTime, Sub_metering_2, col = "red"))
with(hp, lines(DateTime, Sub_metering_3, col = "blue"))
legend("topright", lwd=1, col = c("black","blue", "red"), 
       legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"), cex=0.7,bty="o")

plot(hp$DateTime, hp$Global_reactive_power, type="l", xlab="datetime",ylab="Global_reactive_power",cex.axis=0.7,cex.lab=0.7)

dev.off()