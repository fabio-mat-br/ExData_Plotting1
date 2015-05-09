library(lubridate)
download.file('https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip', destfile = 'household_power_consumption.zip')
unzip('household_power_consumption.zip')
hpc <- read.table('household_power_consumption.txt', header=TRUE, sep=';', na.strings='?', colClasses=c("character","character","double","double","double","double","double","double","numeric"))
hpc$Date <- dmy(hpc$Date)
date_range = ymd(c('2007-02-01', '2007-02-02'))
filtered_hpc <- hpc[hpc$Date %in% date_range, ]
filtered_hpc$DateTime = with(filtered_hpc, ymd_hms(paste(Date, Time)))
rm(hpc, date_range)
