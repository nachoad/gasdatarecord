#######################
##  Stats form data  ##
#######################

# setwd("C:/$user/PERSONAL/github/gasdatarecord")

# Take data from Github CSV file:
# githubcsv <- url("http://raw.githubusercontent.com/nachoad/gasdatarecord/master/gdata.csv")
# gdata <- read.csv(githubcsv)

# Take data from local CSV file:
gdata <- read.csv("gdata.csv")

# First info:
str (gdata)
summary (gdata)

date <- strptime(gdata$date, "%d-%m-%Y")
date <- as.Date(gdata$date, "%d-%m-%Y")

plot(gdata$eLiter~as.Date(gdata$date, "%d-%m-%Y"), type = "s", xlab="Date",ylab="€/Liter", main="€/liter trend")

library(ggplot2)
ggplot(gdata, aes (x = date)) +
      geom_line(aes(y = gdata$eLiter), color ="blue") +
      xlab("DAY")

