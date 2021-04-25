#Assigning numeric and string values to var

var<- c (1,2,3,"Ameya")

# Storing values in x and y 

x <- c (2,4,6,8,10)

y <- c (1,3,5,7,9)

#Arithmetic
x+y
x-y
x*y
x/y
x%%y
y%%x

#Accessing a specific value for x and y 

x [2]
x [5]
y [2]
y [1]

#For excluding the 5th variable from x
x [-5]

#exponential values of x
exp(x)

#Squareroots of x

sqrt(x)


#df - stands for data frame
#We can rename this as anything. I have named it as df just for better understanding.


df <- data.frame(x = 1:3, y = c("a", "b","c"))

df

#Slicing the dataframe
#Extracting the value from the 1st row and the 1st column
df[1,1]

#Extracting the first row and all the columns
df[1,]

#Alternative way to extract the first row is to specify all the column headers and express them as Atomin vectors [c('x','y')]

df[1,c('x','y')]

#Extracting the element of row 1 and col 1 and row 3 and col 1

df[c(1,3),'x']

#Extracting the element of row 1 and col 2 and row3 and col 2

df[c(1,3),'y']

#Extracting the elements of all rows and col 1

df[,'x']

#Alternatively

df[c(1,2,3),'x']

#Extracting the elements of all rows and col 2

df[,'y']

#Alternatively

df[c(1,2,3),'y']

#Extracting 1 a 3 c 

df[c(1,3),]

#Alternatively

df[c(1,3),c('x','y')]


#Repeat 1 10 times

rep(1,10)

#Dataframe example

am <- data.frame(height=c(150,180,200,210), weight=c(67,70,75,76))

am

am[c(3,4),c(1,2)]

am[3,2]

am[4,]
#Fourth row and columns 1 to 2
am[4,1:2]

#Extracting 1st and 3rd element from column name height

am[c(1,3),'height']

#For accessing all elements of col height
am$height

#For accessing all elements of col weight
am$weight


##Home work
e_quakes<-datasets::quakes

e_quakes


#Calculating variance 

var(e_quakes)


#Calculating skewness

library(e1071)

#Latitude is a left skewed distribution.Value is less than 0. Values tend to be concentrated on the right. Higher values are more frequent than the lower values.
skewness(e_quakes$lat)

#Longitude is a left skewed distribution
skewness(e_quakes$long)

#Depth is a right skewed distribution
skewness(e_quakes$depth)

#Magnitude is a right skewed distribution.Value is greater than 0. Values tend to be concentrated on the left. Lower values are more frequent than the higher values. 
skewness(e_quakes$mag)

#Stations is a right skewed distribution
skewness(e_quakes$stations)


#Calculating kurtosis

kurtosis(e_quakes$lat)
kurtosis(e_quakes$long)
kurtosis(e_quakes$depth)
kurtosis(e_quakes$mag)
kurtosis(e_quakes$stations)

#Density plot

plot(density(e_quakes$lat))

plot(density(e_quakes$long))

plot(density(e_quakes$depth))

plot(density(e_quakes$mag))

plot(density(e_quakes$stations))


#Working on airquality dataset

#airquality = read.csv('path/airquality.csv',header=TRUE, sep=",")
airquality <- datasets::airquality
####Top 10 rows and last 10 rows
head(airquality,10)
tail(airquality,10)
######Columns
airquality[,c(1,2)]

df<-airquality[,-6]

summary(airquality[,1])

airquality$Wind

summary(airquality$Wind)

###########Summary of the data#########

summary(airquality)
summary(airquality$Wind) 

#####################
plot(airquality$Wind)
plot(airquality$Temp,airquality$Wind,type="p")
plot(airquality)
# points and lines 
plot(airquality$Wind, type= "l") # p: points, l: lines,b: both
plot(airquality$Wind, xlab = 'Ozone Concentration', 
     ylab = 'No of Instances', main = 'Ozone levels in NY city',
     col = 'blue')
# Horizontal bar plot
barplot(airquality$Ozone, main = 'Ozone Concenteration in air',
        ylab = 'ozone levels', col= 'blue',horiz = F,axes=T)
#Histogram
hist(airquality$Temp)
hist(airquality$Temp, 
     main = 'Solar Radiation values in air',
     xlab = 'Solar rad.', col='blue')

#Single box plot
boxplot(airquality$Wind,main="Boxplot")
boxplot.stats(airquality$Wind)$out



# Multiple box plots
boxplot(airquality[,1:4],main='Multiple')
#margin of the grid(mar), 
#no of rows and columns(mfrow), 
#whether a border is to be included(bty) 
#and position of the 
#labels(las: 1 for horizontal, las: 0 for vertical)
#bty - box around the plot
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
boxplot(airquality[,0:4], main='Multiple Box plots')


sd(airquality$Ozone,na.rm = T)











