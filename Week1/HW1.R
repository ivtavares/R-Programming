x <-read.csv("hw1_data.csv")
x[1:150,1]
x$Ozone
y <- x[complete.cases(x), ]
y
boxplot(x[,1])
?gaussian
