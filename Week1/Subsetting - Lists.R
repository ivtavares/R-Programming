x <- list(foo = 1:4, bar= 0.6)
x[1]
x[[1]]
x$bar
x[["bar"]]
x["bar"]

x <- list(foo = 1:4, bar = 0.6, bas = "hello")
x[c(1, 3)]

name <- "foo"
x[[name]]
x$name
x$foo

x <- list(a = list(10, 12, 14), b = c(3.14, 2.81))
x[[c(1,3)]]
x[[c(2,1)]]
  