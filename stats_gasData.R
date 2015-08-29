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

### Charts ###
##############

## Euros by liter ##
# With plot() function
png("./imgs/euros_by_liter_trend.png", width = 800, height = 480, units = "px")
plot(gdata$eLiter~as.Date(gdata$date, "%d-%m-%Y"), type = "s", xlab="Date",ylab="€/Liter", main="€/liter trend", col='blue')
dev.off()

# With gglpot2 library
png("./imgs/euros_by_liter_trend.png", width = 800, height = 480, units = "px")
x_date <- as.Date(gdata$date, format = "%d-%m-%Y")
d <- data.frame(xdate = x_date, yeliter=gdata$eLiter)
ggplot(d, aes(xdate, yeliter)) +
      geom_line(colour="#9999ff", size=0.8) +
      scale_x_date(breaks = date_breaks("6 months"),
                   labels = date_format("%m-%Y")) +
      geom_point(size=3, colour="#3333cc")+
      xlab("Date") + 
      ylab("€/Liter")
dev.off()

## Kms driven ##
png("./imgs/kms_driven.png", width = 800, height = 480, units = "px")
# x_date <- as.Date(gdata$date, format = "%d-%m-%Y")
d.tot.km <- data.frame(xdate = x_date, ytotKm=gdata$totKm)
ggplot(d.tot.km, aes(xdate, ytotKm)) +
      geom_line(colour="#33ff99", size=0.8) +
      scale_x_date(breaks = date_breaks("6 months"),
                   labels = date_format("%m-%Y")) +
      geom_point(size=3, colour="#339966")+
      xlab("Date") + 
      ylab("Total kilometers")
dev.off()