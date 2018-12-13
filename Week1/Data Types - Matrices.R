rm(list = ls())
m <- matrix(nrow = 2, ncol = 2)
m
dim(m)
attributes(m)
m <- matrix(1:6, nrow = 2, ncol = 3)
m <- 1:10
m
dim(m) <- c(2,5) 
m
x <- 1:3
y <- 10:12
cbind(x, y)
rbind(x,y)
v <- c("a","b","c")
lista <- cbind(v,x,y)
