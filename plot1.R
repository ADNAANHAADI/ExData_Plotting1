# Load necessary library
library(data.table)

# Read and filter data
data <- fread("household_power_consumption.txt", na.strings = "?")
data$Date <- as.Date(data$Date, format = "%d/%m/%Y")
data <- subset(data, Date == "2007-02-01" | Date == "2007-02-02")

# Create PNG file
png("plot1.png", width=480, height=480)

# Plot histogram
hist(as.numeric(data$Global_active_power), 
     col="red", 
     main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", 
     ylab="Frequency")

# Save and close plot
dev.off()
