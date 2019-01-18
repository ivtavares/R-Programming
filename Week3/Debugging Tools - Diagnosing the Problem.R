log(-1)
printmessage <- function(x){
  if (x> 0)
    print("x is greater than zero")
  else
    print("x is less than or equal to zero")
  invisible(x)
}
printmessage(1)
printmessage(NA)
printmessage2 <- function(x){
  if(is.na(x))
    print("x is a missing value!")
  else if (x> 0)
    print("x is greater than zero")
  else
    print("x is less than or equal to zero")
  invisible(x)
}
x <- log(-1)
printmessage2(x)
  