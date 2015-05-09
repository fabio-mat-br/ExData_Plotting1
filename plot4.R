if (!exists('filtered_hpc')) {
  source('load_data.R')
}
png("plot4.png",width = 480, height = 480)
par(mfrow=c(2,2))
plot(x=(filtered_hpc$DateTime),y=filtered_hpc$Global_active_power,type="l",ylab="Global Active Power (kilowatts)",xlab="")

plot(x=(filtered_hpc$DateTime),y=filtered_hpc$Voltage,type="l",ylab="Voltage",xlab="datetime")

plot(x=(filtered_hpc$DateTime),y=filtered_hpc$Sub_metering_1,type="l",ylab="Energy sub metering",xlab="")
lines(x=(filtered_hpc$DateTime),y=filtered_hpc$Sub_metering_2,col="red")
lines(x=(filtered_hpc$DateTime),y=filtered_hpc$Sub_metering_3,col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),bty="l",col=c("black","red","blue"),lwd=2,cex=0.4)

plot(filtered_hpc$DateTime, filtered_hpc$Global_reactive_power, type = "l", main = "", xlab = "datetime")
dev.off()
