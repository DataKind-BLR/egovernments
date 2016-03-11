
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


shinyServer(function(input, output) {
  output$plotData <- renderPlot({
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
    plot.xts(series,
             xlab="Time",
             ylab="Number of Complaints", 
             main="Number of Complaints Over Time")
  })
  
})