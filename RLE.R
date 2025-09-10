run_length_encode <- function(s) {
 
  chars <- strsplit(s, NULL)[[1]]
  
  if (length(chars) == 0) return("")
  
  encoded <- ""
  count <- 1
  
  for (i in 2:length(chars)) {
    if (chars[i] == chars[i-1]) {
      count <- count + 1
    } else {
     
      encoded <- paste0(encoded, chars[i-1], count)
      count <- 1
    }
  }
  
  
  encoded <- paste0(encoded, chars[length(chars)], count)
  
  return(encoded)
}


input_string <- readline(prompt = "Enter a string to compress: ")


compressed <- run_length_encode(input_string)

cat("Compressed string:", compressed, "\n")
