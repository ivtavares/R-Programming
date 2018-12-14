##This migth take time
rm(list = ls())
con <- url("https://www.jhsph.edu/","r")
x <- readLines(con)
head(x)

