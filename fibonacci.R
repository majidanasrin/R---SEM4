twisted_fibonacci <- function(n) {
  if (n <= 0) {
    cat("Please enter a positive number.\n")
    return()
  }
  
  # Handle cases for n = 1, 2, or 3
  if (n == 1) {
    return(c(0))
  } else if (n == 2) {
    return(c(0, 1))
  } else if (n == 3) {
    return(c(0, 1, 1))
  }
  
  # Initialize the first three terms
  series <- c(0, 1, 1)
  
  # Calculate remaining terms
  for (i in 4:n) {
    next_term <- sum(tail(series, 3))  # sum of last 3 terms
    series <- c(series, next_term)
  }
  
  return(series)
}

# Ask user for input
n <- as.integer(readline(prompt = "Enter the number of terms: "))

# Generate series
result <- twisted_fibonacci(n)

# Print the result
cat("Twisted Fibonacci series:\n")
print(result)


