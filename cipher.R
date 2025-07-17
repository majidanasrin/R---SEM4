
caesar_encrypt <- function(text, shift) {
  encrypted <- sapply(strsplit(text, NULL)[[1]], function(ch) {
    
    if (grepl("[A-Z]", ch)) {
      
      shifted <- (utf8ToInt(ch) - utf8ToInt("A") + shift) %% 26 + utf8ToInt("A")
      intToUtf8(shifted)
    } else if (grepl("[a-z]", ch)) {
      
      shifted <- (utf8ToInt(ch) - utf8ToInt("a") + shift) %% 26 + utf8ToInt("a")
      intToUtf8(shifted)
    } else {
      
      ch
    }
  })
  paste(encrypted, collapse = "")
}


cat("Enter a sentence to encrypt:\n")
sentence <- readline()

cat("Enter shift value (integer):\n")
shift_val <- as.integer(readline())


encrypted_sentence <- caesar_encrypt(sentence, shift_val)
cat("Encrypted sentence:\n", encrypted_sentence, "\n")

