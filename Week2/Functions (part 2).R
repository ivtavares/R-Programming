f <- function(a, b){
  a^2
}
f(2)

f <- function(a, b){
  print(a)
  print(b)
}

f(45)

myplot <- function(x, y, type = "1", ...){
  plot(x, y, type = type, ...)
}