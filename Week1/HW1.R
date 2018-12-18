rm(list = ls())
x <-read.csv('hw1_data.csv')
x
read.csv('hw1_data.csv')
length(x)
dim(x)
x[c(152,153),c(1:5)]
x[c(152,153),]
sum(is.na(x[ ,1])) 

y <- x[ ,1] >31
x1 <- x[y, ]
y <- !is.na(x1[ ,1])
x1 <- x1[y, ]
y <- x1[ ,4] >90
x1 <- x1[y, ]
mean(x1[ ,2])

x1 <- x[x$Month==6, ]
mean(x1$Temp)

x1 <- x[x$Month==5, ]
x1 <- x1[!is.na(x1[ ,1]), ]
max(x1$Ozone)
