png(file = "plot3.png",width = 480, height = 480,units="px") 
with(hp, plot(DateTime, Sub_metering_1, ylab = "Energy sub metering",cex.lab=0.7,cex.axis=0.7,xlab="", 
              type = "l"))
with(hp, lines(DateTime, Sub_metering_2, col = "red"))
with(hp, lines(DateTime, Sub_metering_3, col = "blue"))
legend("topright", lwd=1, col = c("black","blue", "red"), 
       legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"), cex=0.7,bty="o")
dev.off()