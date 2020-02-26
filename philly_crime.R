# philly crime data 2/23 

years <- c(2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017, 2018, 2019)
murder <- c(391, 331, 302, 306, 324, 331, 247, 248, 280, 273, 316, 351, 355)
violent <- c(21179, 20771, 19163, 18535, 18268, 17853, 17074, 15925, 16133, 15385, 
             15120, 14419, 15299)
nonviolent <- c(61795, 62580, 55888, 57799, 59617, 56997, 53452, 52816, 49376, 49334, 
                48268, 49144, 49928)

crime <- data.frame(cbind(years, murder, violent, nonviolent))

library(ggplot2)

# murder 
m <- ggplot(data=crime, aes(x=years, y=murder)) +
  geom_line( color="grey") +
  geom_point(shape=21, color="black", fill="coral1", size=3) +
  xlab("") + ylab("Number of Homicides") +
  ggtitle("Reported Homicides by Year in Philadelphia") +
  theme_bw() 
m + theme(plot.title = element_text(hjust = 0.5)) +
scale_x_continuous(breaks = seq(min(crime$years), max(crime$years), by = 2)) 
  
# total violent crime
v <- ggplot(data=crime, aes(x=years, y=violent)) +
  geom_line( color="grey") +
  geom_point(shape=21, color="black", fill="cornflowerblue", size=3) +
  xlab("") + ylab("Number of Violent Crimes") +
  ggtitle("Reported Total Violent Crimes by Year in Philadelphia") +
  theme_bw() 
v + theme(plot.title = element_text(hjust = 0.5)) +
  scale_x_continuous(breaks = seq(min(crime$years), max(crime$years), by = 2)) 

# total nonviolent crime
n <- ggplot(data=crime, aes(x=years, y=nonviolent)) +
  geom_line( color="grey") +
  geom_point(shape=21, color="black", fill="aquamarine3", size=3) +
  xlab("") + ylab("Number of Nonviolent Crimes") +
  ggtitle("Reported Total Nonviolent Crimes by Year in Philadelphia") +
  theme_bw() 
n + scale_x_continuous(breaks = seq(min(crime$years), max(crime$years), by = 2)) 
                     