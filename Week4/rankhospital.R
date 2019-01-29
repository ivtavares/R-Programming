rankhospital <- function(state, outcome, num = "best") {
  ## Read outcome data
  data.value <-  read.csv("outcome-of-care-measures.csv", colClasses = "character")
  ## Check that state and outcome are valid
  if (!any(outcome == c("heart attack", "heart failure", "pneumonia"))){
    stop("invalid outcome")
  }
  if (!any(data.value[, 7] == state)){
    stop("invalid state")
  }
  ## Return hospital name in that state with the given rank
  ## 30-day death rate
  if (outcome == "heart attack") {
    column  <- 11
  }
  else if (outcome == "heart failure"){
    column <- 17
  }
  else {
    column <- 23
  }
  state.value <- data.value[, 7] == state
  data.value <- data.value[state.value, c(2,column)] 
  names(data.value) <- c("Hosptial.Name","Rate")
  data.value$Rate <- as.numeric(data.value$Rate)
  bad.value <- is.na(data.value$Rate)
  data.value <- data.value[!bad.value, ]
  data.value <- data.value[order(data.value$Hosptial.Name), ]
  data.value <- data.value[order(data.value$Rate), ]
  if (num == "best"){
    num <- 1
  }
  else if (num == "worst"){
    num <- nrow(data.value)
  }
  else {
    num <- as.numeric(num)
  }
  return(data.value$Hosptial.Name[num])
}
  
  
  
  