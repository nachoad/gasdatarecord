#######################
##  Stats form data  ##
#######################

# Take data from Github CSV file:
# githubcsv <- url("http://raw.githubusercontent.com/nachoad/gasdatarecord/master/gdata.csv")
# gdata <- read.csv(githubcsv)

# Take data from local CSV file:
gdata <- read.csv("gdata.csv")

# First info:
str (gdata)
summary (gdata)


library(ggplot2)
eLiter <- factor(gdata$eLiter, 
eurosLitrogdata$eurosLitro, x = gdata$date)

