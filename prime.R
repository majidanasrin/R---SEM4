
is_prime <- function(num) {
  if (num <= 1) {
    return(FALSE)
  }
  if (num == 2) {
    return(TRUE)
  }
  if (num %% 2 == 0) {
    return(FALSE)
  }
  for (i in 3:sqrt(num)) {
    if (num %% i == 0) {
      return(FALSE)
    }
  }
  return(TRUE)
}


check_prime_loop <- function(num) {
  if (num <= 1) {
    return(FALSE)
  }
  if (num == 2) {
    return(TRUE)
  }
  if (num %% 2 == 0) {
    return(FALSE)
  }
  for (i in 3:floor(sqrt(num))) {
    if (num %% i == 0) {
      return(FALSE)
    }
  }
  return(TRUE)
}


cat("Enter a number to check if it is prime: ")
num <- as.integer(readLines(con = stdin(), n = 1))

if (is_prime(num)) {
  cat(num, "is a prime number.\n")
} else {
  cat(num, "is not a prime number.\n")
}

cat("Enter the start of the range: ")
start_range <- as.integer(readLines(con = stdin(), n = 1))
cat("Enter the end of the range: ")
end_range <- as.integer(readLines(con = stdin(), n = 1))

cat("Prime numbers between", start_range, "and", end_range, "are:\n")

for (n in start_range:end_range) {
  if (is_prime(n)) {
    cat(n, " ")
  }
}
cat("\n")
