airquality<-datasets::airquality
#airquality = read.csv('path/airquality.csv',header=TRUE, sep=",")
airquality <- datasets::airquality


####Top 10 rows and last 10 rows
head(airquality,5)
tail(airquality,10)

######Columns
airquality[,c(1,2)]

#THIS WILL REMOVE THE the last 6th columen from the table
df<-airquality[,-6]


#this will show the summary i.e min median 1st qudrant 
#3rd quadrant the max the outlies
summary(airquality[,1])

#in this we have introduced with $dollar sign which we can use to see any coloms
#or any rows for example intially we learned df[1,2] but now we can use
#df$and the colomun name
airquality$Ozone

#this will show the summary i.e min median 1st qudrant 
#3rd quadrant the max the outlies using$ dollar symbol which is explaned above
summary(airquality$Wind)

###########Summary of the data#########

summary(airquality)
summary(airquality$Wind)
summary(airquality$Month)
##################### plot will show the various graph 
plot(airquality$Wind)

plot(airquality$Temp,airquality$Wind,type="p")
plot(airquality$Ozone,airquality$Wind,type="p")

plot(airquality)
# points and lines 
plot(airquality$Wind, type= "b") # p: points, l: lines,b: both
plot(airquality$Wind, xlab = 'Ozone Concentration', 
     ylab = 'No of Instances', main = 'Ozone levels in NY city',
     col = 'blue')
# Horizontal bar plot
barplot(airquality$Ozone, main = 'Ozone Concenteration in air',
        ylab = 'ozone levels', col= 'blue',horiz = F)
#Histogram
hist(airquality$Temp)
hist(airquality$Temp, 
     main = 'Solar Radiation values in air',
     xlab = 'Solar rad.', col='blue')

#Single box plot
boxplot(airquality$Ozone,main="Boxplot")
# Multiple box plots
boxplot(airquality[,1:4],main='Multiple')
#margin of the grid(mar), 
#no of rows and columns(mfrow), 
#whether a border is to be included(bty) 
#and position of the 
#labels(las: 1 for horizontal, las: 0 for vertical)
#bty - box around the plot (o= yes bounding box needed, n= no box)
par(mfrow=c(3,3),mar=c(2,5,2,1),  las=0, bty="o")
plot(airquality$Ozone)
plot(airquality$Ozone, airquality$Wind)
plot(airquality$Ozone, type= "l")
plot(airquality$Ozone, type= "l")
plot(airquality$Ozone, type= "l")
barplot(airquality$Ozone, main = 'Ozone Concenteration in air',
        xlab = 'ozone levels', col='green',horiz = TRUE)
hist(airquality$Solar.R)
boxplot(airquality$Solar.R)
boxplot(airquality[,1:4], main='Multiple Box plots')
