
# Score-by-score
data <- read.table("UWvMSU_1-22-13.txt", header=T)
UW<- (data[data$team=="UW",])
MSU <- (data[data$team=="MSU",])
UWdf <- data.frame(UW$time,cumsum(UW$score), stringsAsFactors = F)
MSUdf <- data.frame(MSU$time,cumsum(MSU$score), stringsAsFactors = F)
plot(UWdf, type="l", col = "red", 
     main="UW vs MSU Cumulative Scores",xlab = "Time", 
     ylab = "Score", lwd = 2)
lines(MSUdf, col = "darkgreen", lwd = 2)
legend("topleft", legend=c("UW","MSU"), col=c("red","darkgreen"),
       lty=1, lwd = 2)


#Number Guess Game 
number <- sample(1:100, 1)
for (i in 1:10){
    print("I'm thinking of a number between 1 and 100...")
    guess <- as.integer(readline(prompt="Guess: "))
    if (i < 10){
      if (guess > number) {
      print("Lower...", quote=F)
      }else if (guess < number) {
      print("Higher...", quote=F)
      }else {
      print("Nailed it", quote=F)
      break
      }
    }
    else {
      if (guess == number){
        print("Nailed it", quote=F)
      }
      else {
        print("Sorry John, you lose.")
      }
    }
  }






