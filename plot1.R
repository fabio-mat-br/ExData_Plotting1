if (!exists('filtered_hpc')) {
  source('load_data.R')
}

hist(filtered_hpc$Global_active_power, main = "Global Active Power", xlab = 'Global Active Power (kilowatts)', col = 'red')
dev.copy(png, file = 'plot1.png')
dev.off()