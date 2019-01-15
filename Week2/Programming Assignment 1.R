rm(list = ls())

pollutantmean <- function(directory, pollutant, id = 1:332){
  total <- 0
  columns <- 0
  for (i in id) {
    if (i < 10) {
      filelocation <- paste(directory,"/00", i, ".csv", sep = "")
    }
    else if(i < 100){
      filelocation <- paste(directory,"/0", i, ".csv", sep = "")
    }
    else{
      filelocation <- paste(directory,"/", i, ".csv", sep = "")
    }
    data <- read.csv(filelocation)
    good <- complete.cases(data[[pollutant]])
    data <- data[good,]
    total <- total + sum(data[[pollutant]])
    columns <- columns + dim(data)[1]
  }
  meanvalue <- total/columns
  meanvalue
}

complete <- function(directory, id = 1:332){
  complete_vector <- matrix(nrow = length(id), ncol = 2)
  j <-1
  for (i in id) {
    if (i < 10) {
      filelocation <- paste(directory,"/00", i, ".csv", sep = "")
    }
    else if(i < 100){
      filelocation <- paste(directory,"/0", i, ".csv", sep = "")
    }
    else{
      filelocation <- paste(directory,"/", i, ".csv", sep = "")
    }
    data <- read.csv(filelocation)
    good <- complete.cases(data)
    data <- data[good,]
    columns <- dim(data)[1]
    complete_vector[j,] <- c(i, columns)
    j <- j+1
  }
  print(complete_vector)
}

corr <- function(directory, threshold = 0){
  result <- vector(mode = "numeric")
  for (i in 1:332) {
    if (i < 10) {
      filelocation <- paste(directory,"/00", i, ".csv", sep = "")
    }
    else if(i < 100){
      filelocation <- paste(directory,"/0", i, ".csv", sep = "")
    }
    else{
      filelocation <- paste(directory,"/", i, ".csv", sep = "")
    }
    data <- read.csv(filelocation)
    good <- complete.cases(data)
    data <- data[good,]
    columns <- dim(data)[1]
    if (columns > threshold){
      correlation <- cor(data$sulfate, data$nitrate)
      result <- c(result, correlation)
    }
  }
  result
}

pollutantmean("specdata", "sulfate", 1:10)
pollutantmean("specdata", "nitrate", 70:72)
pollutantmean("specdata", "nitrate", 23)

complete("specdata", 1)
complete("specdata", c(2, 4, 8, 10, 12))
complete("specdata", 30:25)
complete("specdata", 3)

cr <- corr("specdata", 150)
head(cr)
summary(cr)
cr <- corr("specdata", 400)
head(cr)
summary(cr)
cr <- corr("specdata", 5000)
summary(cr)
length(cr)
cr <- corr("specdata")
summary(cr)
length(cr)

pollutantmean("specdata", "sulfate", 1:10)
pollutantmean("specdata", "nitrate", 70:72)
pollutantmean("specdata", "sulfate", 34)
pollutantmean("specdata", "nitrate")

cc <- complete("specdata", c(6, 10, 20, 34, 100, 200, 310))
print(cc$nobs)
