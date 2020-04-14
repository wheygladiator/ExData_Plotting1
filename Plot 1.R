# read data
data <- read.table("household_power_consumption.txt", sep = ";", skip = 66637, nrows = 2880)

# clearing 
data <- data %>% select(V3) %>% mutate(V3 = as.numeric(as.character(V3)))

# histogram
hist(data$V3, col = "red", main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)", ylab = "Frequency")
