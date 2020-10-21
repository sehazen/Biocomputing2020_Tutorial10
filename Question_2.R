#Guess my number

choices <- c(1:100)
N <- sample(choices, size = 1)


for(i in 1:10){
  guess <- readline(prompt="Enter an integer between 1 and 100: ")
  if(guess > N){
    print("Lower")
  }else if (guess < N){
    print("Higher")
    }else{
      print("Correct")
      break
    }
}


