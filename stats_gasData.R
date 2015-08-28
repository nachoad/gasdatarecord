#######################
##  Stats form data  ##
#######################

# setwd("C:/$user/PERSONAL/github/gasdatarecord")

# Take data from Github CSV file:
# githubcsv <- url("http://raw.githubusercontent.com/nachoad/gasdatarecord/master/gdata.csv")
# gdata <- read.csv(githubcsv)

# libraries:
library(ggplot2)

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
# eliter <- as.integer(gdata$eLiter)


ddd <- data.frame(
      date = as.Date(gdata$date, "%d-%m-%Y"),
      eliter = gdata$eLiter
)

ggplot(ddd$date, aes(ddd$date, ddd$eliter)) + geom_line()+
      scale_x_date(format= "%b-%Y") + xlab("") + ylab("e/litro")


ggplot(gdata, aes (x = date)) +
      geom_line(aes(y = gdata$eLiter), color ="blue") +
      xlab("DAY")

