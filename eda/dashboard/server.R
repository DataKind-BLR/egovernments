
subsetDf <- function(input) {
  subs <- df
  complaintType <- input$complaintType
  ward <- input$ward
  
  if(complaintType != "All") {
    subs <- subs[subs$Complaint.Type == complaintType,]
  }
  
  if(ward != "All") {
    subs <- subs[subs$Ward == ward,]
  }
  
  return(subs)
}


getSeries <- function(input) {
  subs <- subsetDf(input)
  series <- xts(subs$NumComplaints, subs$Complaint.Date)
  timePeriod <- input$timePeriod
  if(timePeriod == "Daily") {
    series <- apply.daily(series, FUN=sum)
  } else if (timePeriod == "Weekly") {
    series <- apply.weekly(series, FUN=sum)
  } else if (timePeriod == "Monthly") {
    series <- apply.monthly(series, FUN=sum)
  } else if (timePeriod == "Quarterly") {
    series <- apply.quarterly(series, FUN=sum)
  }
}

shinyServer(function(input, output) {
  output$plotData <- renderPlot({
    plot.xts(getSeries(input),
             xlab="Time",
             ylab="Number of Complaints", 
             main="Number of Complaints Over Time")
  })
  
  output$outputSummary <- renderTable({
    series <- getSeries(input)
    byArg <- choicesMapping[[input$timePeriod]]
    left <- zoo(,seq(start(series),end(series),by=byArg))
    joined = merge(series, left, all=T)
    numMissing = sum(is.na(joined))
    print(mean(joined[, 1]))
    dataSummary <- data.frame(
      "Number of datapoints"=c(length(joined)),
      "Number of 0s in series"=c(numMissing)
    )
    print(dataSummary)
    rownames(dataSummary) <- c("")
    return(dataSummary)
  })
})