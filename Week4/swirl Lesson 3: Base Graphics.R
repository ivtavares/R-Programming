1
15
data(cars)
?cars
head(cars)
dim(cars)
plot(cars)
?plot
plot(x = cars$speed, y = cars$dist)
plot(x = cars$dist, y = cars$speed)
plot(x = cars$speed, y = cars$dist, xlab = "Speed")
plot(x = cars$speed, y = cars$dist, ylab = "Stopping Distance")
plot(x = cars$speed, y = cars$dist, xlab = "Speed", ylab = "Stopping Distance")
plot(cars, main = "My Plot")
plot(cars, sub = "My Plot Subtitle")
plot(cars, col = 2)
plot(cars, xlim = c(10, 15))
?points
plot(cars, pch = 2)
data(mtcars)
play()
head(mtcars)
dim(mtcars)
str(mtcars)
summary(mtcars)
?boxplot
boxplot(mpg ~ cyl, mtcars)
hist(mtcars$mpg)
1
iv_tavares@yahoo.com.br
0TSr8FR2Eawn0JSd
quit()
0
