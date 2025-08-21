generate_password <- function(length) {
  if (length < 4) {
    stop("Password length must be at least 4 to include all character types.")
  }
  

  uppercase <- LETTERS
  lowercase <- letters
  digits <- 0:9
  special <- unlist(strsplit("!@#$%^&*()-_=+[]{}|;:,.<>?/`~", ""))
  
  
  password <- c(
    sample(uppercase, 1),
    sample(lowercase, 1),
    sample(as.character(digits), 1),
    sample(special, 1)
  )
  

  all_chars <- c(uppercase, lowercase, as.character(digits), special)
  remaining_length <- length - 4
  
  if (remaining_length > 0) {
    password <- c(password, sample(all_chars, remaining_length, replace = TRUE))
  }
  
 
  password <- sample(password)
  paste(password, collapse = "")
}

password_length <- as.integer(readline(prompt = "Enter desired password length: "))

cat("Generated Password:", generate_password(password_length), "\n")

