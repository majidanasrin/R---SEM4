is_palindrome <- function(s) {
  s <- tolower(s)
  filtered <- gsub("[^a-z0-9]", "", s)
  return(filtered == paste(rev(strsplit(filtered, NULL)[[1]]), collapse = ""))
}

user_input <- readline(prompt = "Enter a string: ")

if (is_palindrome(user_input)) {
  cat("It's a palindrome!\n")
} else {
  cat("Not a palindrome.\n")
}
