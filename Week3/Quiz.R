library(datasets)
data(iris)
?iris
head(iris)

tapply(iris$Sepal.Length,iris$Species, mean)
apply(iris, 1, mean)
colMeans(iris)
rowMeans(iris[, 1:4])
sapply(iris[, 1:4],mean)
apply(iris[, 1:4], 2, mean)
?apply

library(datasets)
data(mtcars)
?mtcars
head(mtcars)

tapply(mtcars$mpg,mtcars$cyl,mean)
split(mtcars, mtcars$cyl)
tapply(mtcars$cyl, mtcars$mpg, mean)
sapply(split(mtcars$mpg, mtcars$cyl), mean)
lapply(mtcars, mean)
with(mtcars, tapply(mpg, cyl, mean))
apply(mtcars, 2, mean)

HP_mean <- tapply(mtcars$hp, mtcars$cyl, mean)
HP_mean
HP_mean[3]-HP_mean[1]

debug(ls)
