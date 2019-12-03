data <- read.csv(file="./rugs.csv", header=TRUE, sep=",")
subset <- data.frame()

for (row in 1:nrow(data)) {
  date = as.Date(data[row,8])
  if(date >= "2019-07-01" & date <= "2019-09-30"){
    subset <- rbind(subset, data[row, ])
  }
}

write.csv(subset,"./out.csv", row.names = FALSE)