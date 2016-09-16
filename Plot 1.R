# To generate Plot 1
## Step 1: open device
if(!file.exists('figures')) dir.create('figures')
png(filename = './figures/plot1.png', width = 480, height = 480, units='px')
## Step 2: plot figure
with(data, hist(Global_active_power, xlab = 'Global Active Power (kilowatt)', main = 'Global Active Power', col = 'red'))
## Step 3: close device
dev.off