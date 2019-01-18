rm(list = ls())
x <- c(rnorm(10), runif(10), rnorm(10, 1))
x
f <- gl(3, 10)
f
split(x, f)

lapply(split(x, f), mean)
x <- rnorm(10)
f1 <- gl(2, 5)
f2 <- gl(5, 2)
f1
f2
interaction(f1, f2)

str(split(x, list(f1, f2)))
str(split(x, list(f1, f2)), drop = TRUE) 
