## Creat the fourth plot of the assignment
par(mfrow=c(2,2), mar=c(4,4,2,1), oma=c(0,0,2,0))
with(lac, {
       plot(Global_active_power~dateTime, type="l", 
            ylab="Global Active Power (kilowatts)", xlab="")
       plot(Voltage~dateTime, type="l", 
            ylab="Voltage (volt)", xlab="")
       plot(Sub_metering_1~dateTime, type="l", 
            ylab="Global Active Power (kilowatts)", xlab="")
       lines(Sub_metering_2~dateTime,col='Red')
       lines(Sub_metering_3~dateTime,col='Blue')
       legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
              lty=, lwd=2.5, col=c("black", "red", "blue"), bty="n", cex = 0.5)
       plot(Global_reactive_power~dateTime, type="l", 
            ylab="Global Rective Power (kilowatts)",xlab="")
})

##Copy currrent plot to a png file and then turn the dev.copy off
dev.copy(png, file="plot4.png", height=480, width=480)
dev.off()