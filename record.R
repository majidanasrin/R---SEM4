
is_valid_age <- function(age) {
  return(!is.na(age) && age > 0 && floor(age) == age)
}


is_valid_grade <- function(grade) {
  valid_grades <- c("A", "B", "C", "D", "F")
  return(toupper(grade) %in% valid_grades)
}


read_student_records <- function() {
  records <- list()
  
  repeat {
    cat("Enter student name (or press Enter to finish):\n")
    name <- readline()
    if (name == "") break  # stop input on empty name
    
    cat("Enter age:\n")
    age <- as.integer(readline())
    
    cat("Enter grade (A, B, C, D, F):\n")
    grade <- toupper(readline())
    
    
    if (!is_valid_age(age)) {
      cat("Invalid age! Must be a positive integer. Record skipped.\n\n")
      next
    }
    
    if (!is_valid_grade(grade)) {
      cat("Invalid grade! Must be A, B, C, D, or F. Record skipped.\n\n")
      next
    }
    
    
    records[[length(records) + 1]] <- list(name = name, age = age, grade = grade)
    cat("Record added.\n\n")
  }
  
  return(records)
}

student_records <- read_student_records()

if (length(student_records) == 0) {
  cat("No valid student records entered.\n")
} else {
  ages <- sapply(student_records, function(x) x$age)
  avg_age <- mean(ages)
  
  cat("\nValid student records:\n")
  for (rec in student_records) {
    cat(sprintf("Name: %s, Age: %d, Grade: %s\n", rec$name, rec$age, rec$grade))
  }
  
  cat(sprintf("\nAverage age of valid students: %.2f\n", avg_age))
}
