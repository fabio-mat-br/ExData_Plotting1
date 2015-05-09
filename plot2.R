if (!exists('filtered_hpc')) {
  source('load_data.R')
}
png("plot2.png",width = 480, height = 480)
plot(filtered_hpc$DateTime, filtered_hpc$Global_active_power,
     ylab='Global Active Power (kilowatts)', xlab='', type='l')
dev.off()
