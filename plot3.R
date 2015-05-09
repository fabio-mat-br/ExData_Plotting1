if (!exists('filtered_hpc')) {
  source('load_data.R')
}
Assessment1Plot3 = function(){
  #Add first line and baseline structure
  with(filtered_hpc, {
    plot(DateTime, Sub_metering_1, 
         xlab = '',
         ylab =  'Energy sub metering',
         pch = NA,
         lines(DateTime, Sub_metering_1)) 
    #Add Second Line
    lines(DateTime, Sub_metering_2, 
          col = 'red')
    #Add Third Line
    lines(DateTime, Sub_metering_3, 
          col = 'blue')
    #Add Legend
    legend('topright', lty = 1, lwd = 2, col = c('black', 'red', 'blue'),
           legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3')
    )
  })
}

#Copy To png
Assessment1Plot3()
dev.copy(png, file = 'plot3.png')
dev.off()
