# Split the two teams up

msu <- UWvMSU_1.22.13[UWvMSU_1.22.13$team == "MSU",]
uw <- UWvMSU_1.22.13[UWvMSU_1.22.13$team == "UW",]


msuscores <-vector(mode = "numeric", length = nrow(msu))

for (i in 1:nrow(msu)){
  if (i==1){
    msuscores[i]=msu$score[i]
  }else{
  msuscores[i]=msuscores[i-1]+msu$score[i]
  }
}

uwscores <- vector(mode="numeric", length = nrow(uw))

for (i in 1:nrow(uw)){
  if (i==1){
    uwscores[i]=uw$score[i]
  }else{
    uwscores[i]=uwscores[i-1]+uw$score[i]
  }
}


plot(msu$time, msuscores, type = 'l', main = "Cumulative Scores for the MSU vs UW Game", ylab = "Total Points", xlab = "Time (Min)", col = "green")
lines(uw$time, uwscores, col = "red" )
