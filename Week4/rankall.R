rankall <- function(outcome, num = "best") {
  ## Read outcome data
  data.value <-  read.csv("outcome-of-care-measures.csv", colClasses = "character")
  ## Check that state and outcome are valid
  if (!any(outcome == c("heart attack", "heart failure", "pneumonia"))){
    stop("invalid outcome")
  }
  ## For each state, find the hospital of the given rank
  (if (outcome == "heart attack") {
    column  <- 11
  }
  else if (outcome == "heart failure"){
    column <- 17
  }
  else {
    column <- 23
  })
  data.value <- data.value[ , c(2, 7, column)]
  names(data.value) <- c("hospital","state", "rate")
  data.value$rate <- as.numeric(data.value$rate)
  bad.value <- !is.na(data.value$rate)
  data.value <- data.value[bad.value, ]
  data.value <- split(data.value, data.value$state)
  data.value <- lapply(data.value,function(x) x[with(x, order(rate, hospital)),])
  if (num == "best"){
    return.value <- sapply(data.value, function(x) x[1, 1])  
  }
  else if(num == "worst"){
    return.value <- sapply(data.value, function(x) x[nrow(x), 1])
  }
  else {
    return.value <- sapply(data.value, function(x) x[num, 1])
  }
  ## Return a data frame with the hospital names and the
  ## (abbreviated) state name
  return(data.frame(hospital = return.value, state = names(return.value)))
}

