quakes=datasets::quakes

#standard Deviation
sd(quakes$lat,na.rm = T)
sd(quakes$long,na.rm = T)
sd(quakes$depth,na.rm = T)
sd(quakes$mag,na.rm = T)
sd(quakes$stations,na.rm = T)


#variance of quakes dataset

var(quakes$lat,na.rm=T)
var(quakes$long,na.rm = T)
var(quakes$depth,na.rm = T)
var(quakes$mag,na.rm = T)
var(quakes$stations,na.rm = T)
var(quakes)
var(quakes,na.rm=T)

#skewness of quakes data sets
skewness(quakes)

#kurtosis of quakes
kurtosis(quakes)

summary(quakes)
summary(quakes$long)
# Graphical Sets

plot(quakes$lat)
plot(quakes)

# graphs in points and lines with color
plot(quakes$lat,type='l')
plot(quakes$lat,type='p')
plot(quakes$lat,type='b',col='red')

barplot(quakes$depth)
barplot(quakes$depth, main = 'Depth of Quake',xlab = 'Xaxis Title',
        ylab = 'depth level', col='red',horiz = F,axes=T)
hist(quakes$lat,col ='red')
hist(quakes$depth,col ='blue')

#boxplot

boxplot(quakes$lat)
boxplot(quakes$depth,col ='orange')
boxplot(quakes$lat)
boxplot(quakes[,1:5])
boxplot(quakes$stations)


#bus ajj ke liye itna hi 
#thank you



