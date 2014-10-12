png(file = "plot2.png",width = 480, height = 480,units="px") 
plot(hp$Global_active_power,
     type="l",ylab="Global Active Power (kilowatts)",cex.lab=0.7,xlab="",cex.axis=0.7)
dev.off()
