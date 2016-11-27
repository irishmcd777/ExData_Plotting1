## Creat the second plot of the assignment
plot(lac$Global_active_power~lac$dateTime, type="l", ylab="Global Active Power (kilowatts)", xlab="")

##Copy currrent plot to a png file and then turn the dev.copy off
dev.copy(png,"plot2.png", width=480, height=480)
dev.off()