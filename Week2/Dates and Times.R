x <- as.Date("1970-01-01")
x
attributes(x)
unclass(x)
unclass(as.Date("1970-01-02"))

x <- Sys.time()
x
p <- as.POSIXlt(x)
names(unclass(p))
attributes(p)
p$sec
x
unclass(x)
x$sec

rm(list = ls())
datestring <- c("01 10, 2012 10:40","12 9, 2011 9:10")
datestring
x <- strptime(datestring, "%m %d, %Y %H:%M")
x 
?strptime

x <- as.Date("2012-01-01")  
y <- strptime("9 01 2011 11:34:21", "%d %m %Y %H:%M:%S")  
x-y

x <- as.POSIXlt(x)
x-y

x <- as.Date("2012-03-01")
y <- as.Date("2012-02-28")
x-y

x <- as.POSIXct("2012-10-25 01:00:00")
y <- as.POSIXct("2012-10-25 06:00:00", tz = "GMT")
y-x
