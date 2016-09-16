# To generate Plot 2
## Step 1: convert data and time to specific format
data$Date <- as.Date(data$Date, format = '%d/%m/%Y')
data$DateTime <- as.POSIXct(paste(data$Date, data$Time))
## Step 2: open device
if(!file.exists('figures')) dir.create('figures')
png(filename = './figures/plot2.png', width = 480, height = 480, units='px')
## Step 3: plot figure
Sys.setlocale(category = "LC_ALL", locale = "english")
plot(data$DateTime, data$Global_active_power, xlab = '', ylab = 'Global Active Power (kilowatt)', type = 'l')
## Step 4:close device
dev.off()