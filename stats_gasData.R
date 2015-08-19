gdata <- read.csv("gdata.csv")
str (gdata)
summary (gdata)

levels(gdata$eurosLitro)
library(ggplot2)
qplot(data=gdata, y = gdata$eurosLitro, x = gdata$date)