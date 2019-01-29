best <- function(state, outcome) {
  ## Read outcome data
  data.value <-  read.csv("outcome-of-care-measures.csv", colClasses = "character")
  ## Check that state and outcome are valid  
  if (!any(outcome == c("heart attack", "heart failure", "pneumonia"))){
    stop("invalid outcome")
  }
  if (!any(data.value[, 7] == state)){
    stop("invalid state")
  }
  ## Return hospital name in that state with lowest 30-day death
  ## rate
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
  data.value <- data.value[state.value, ] 
  data.value[ ,column] <- as.numeric(data.value[,column])
  bad.value <- is.na(data.value[ ,column])
  data.value <- data.value[!bad.value, ]
  min.value <- min(data.value[ ,column])
  min.row <- data.value[ ,column] == min.value
  return(data.value[min.row, 2])
}
