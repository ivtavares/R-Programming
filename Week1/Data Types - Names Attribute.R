x <- 1:3
names(x)
names(x) <- c("foo", "bar", "norf")
x
names(x)

x <- list(a = 1, b = 2, c = 3)

m <- matrix(1:4, nrow = 2, ncol = 2)
m
dimnames(m) <- list(c("a", "b"), c("c","d"))  
m
