#######################
##  Stats form data  ##
#######################

# setwd("C:/$user/PERSONAL/github/gasdatarecord")

# Take data from Github CSV file:
# githubcsv <- url("http://raw.githubusercontent.com/nachoad/gasdatarecord/master/gdata.csv")
# gdata <- read.csv(githubcsv)

# libraries:
library(ggplot2)
library(scales)

# Take data from local CSV file:
gdata <- read.csv("gdata.csv")

# First info:
str (gdata)
summary (gdata)

# Charts:
png("./imgs/euros_by_liter_trend.png", width = 800, height = 480, units = "px")
plot(gdata$eLiter~as.Date(gdata$date, "%d-%m-%Y"), type = "s", xlab="Date",ylab="€/Liter", main="€/liter trend", col='blue')
dev.off()

# date <- strptime(gdata$date, "%d-%m-%Y")
# eliter <- gdata$eLiter
# eliter <- as.integer(gdata$eLiter, )

x_date <- as.Date(gdata$date, format = "%d-%m-%Y")
d <- data.frame(xdate = x_date, yeliter=gdata$eLiter)
ggplot(d, aes(xdate, yeliter)) +
      geom_line(colours()) +
      scale_x_date(breaks = date_breaks("months"),
                   labels = date_format("%Y"))

