png(file = "plot1.png",width = 480, height = 480,units="px") 
hist(hp$Global_active_power, 
     xlab="Global Active Power (kilowatts)",col="red", main="Global Active Power",cex.lab=0.7,cex.axis=0.7)
dev.off()
