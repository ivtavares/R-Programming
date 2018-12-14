rm(list = ls())
y <- data.frame(a = 1, b = "a")
dput(y)
dput(y,file = "y.R")
new.y <- dget("y.R")
new.y
x <- "foo"
dump(c("x", "y"), file = "data.R")
rm(x,y)
source("data.R")
