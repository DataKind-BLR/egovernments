require(xts)

df = read.csv("/home/samarth/workspaces/datakind-workspace/coc.csv")
df$Complaint.Date <- as.Date(df$Complaint.Date, format = "%m/%d/%Y")
df$Resolution.Date <- as.Date(df$Resolution.Date, format="%m/%d/%Y")
df$NumComplaints <- 1


choicesForTime <- c("Daily", "Weekly", "Monthly", "Quarterly")