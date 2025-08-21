series_sum <- function(n) {
  if (n <= 0) {
    stop("Number of terms must be positive.")
  }
  
  sum <- 0
  
  for (i in 1:n) {
    numerator <- i
    denominator <- 2 * i - 1
    term <- numerator / denominator
    
    
    if (i %% 2 == 0) {
      term <- -term
    }
    
    sum <- sum + term
  }
  
  return(sum)
}


num_terms <- as.integer(readline(prompt = "Enter the number of terms: "))


cat("Sum of the series up to", num_terms, "terms is:", series_sum(num_terms), "\n")
