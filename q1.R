analyze_text <- function(paragraph, word_to_replace, replacement_word) {

  words <- unlist(strsplit(paragraph, "\\s+"))
  clean_words <- gsub("[[:punct:]]", "", words)
  
  
  total_words <- length(clean_words)
  
  
  word_lengths <- nchar(clean_words)
  avg_word_length <- mean(word_lengths)
  
  
  longest_word <- clean_words[which.max(word_lengths)]
  
 
  pattern <- paste0("\\b", word_to_replace, "\\b")
  replaced_paragraph <- gsub(pattern, replacement_word, paragraph, ignore.case = TRUE)
  
  
  cat("\nTotal number of words:", total_words)
  cat("\nAverage word length:", round(avg_word_length, 2))
  cat("\nLongest word:", longest_word)
  cat("\n\nModified paragraph:\n", replaced_paragraph, "\n")
}


cat("Enter a paragraph:\n")
paragraph <- readline()

cat("Enter the word to replace:\n")
word_to_replace <- readline()

cat("Enter the replacement word:\n")
replacement_word <- readline()

#
analyze_text(paragraph, word_to_replace, replacement_word)
